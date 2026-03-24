allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

subprojects {
    fun applyNamespaceFix(p: Project) {
        if (p.hasProperty("android")) {
            val android = p.extensions.getByName("android")
            try {
                val getNamespace = android.javaClass.getMethod("getNamespace")
                val setNamespace = android.javaClass.getMethod("setNamespace", String::class.java)
                if (getNamespace.invoke(android) == null) {
                    setNamespace.invoke(android, "com.example.${p.name.replace("-", ".")}")
                }
            } catch (e: Exception) {
            }
        }
    }

    if (project.state.executed) {
        applyNamespaceFix(project)
    } else {
        project.afterEvaluate { applyNamespaceFix(project) }
    }

    project.tasks.matching { it.name.contains("process") && it.name.contains("Manifest") }.configureEach {
        doFirst {
            try {
                val manifestFile = project.file("src/main/AndroidManifest.xml")
                if (manifestFile.exists()) {
                    var content = manifestFile.readText()
                    if (content.contains("package=")) {
                        println("Patching manifest for ${project.name}: removing package attribute")
                        content = content.replace(Regex("package=\"[^\"]*\""), "")
                        manifestFile.writeText(content)
                    }
                }
            } catch (e: Exception) {
            }
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
