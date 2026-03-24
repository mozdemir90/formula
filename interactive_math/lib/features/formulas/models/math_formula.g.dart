// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'math_formula.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMathFormulaCollection on Isar {
  IsarCollection<MathFormula> get mathFormulas => this.collection();
}

const MathFormulaSchema = CollectionSchema(
  name: r'MathFormula',
  id: 6406494225848890766,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'formulaId': PropertySchema(
      id: 2,
      name: r'formulaId',
      type: IsarType.string,
    ),
    r'gradeLevel': PropertySchema(
      id: 3,
      name: r'gradeLevel',
      type: IsarType.long,
    ),
    r'latexFormula': PropertySchema(
      id: 4,
      name: r'latexFormula',
      type: IsarType.string,
    ),
    r'quizzes': PropertySchema(
      id: 5,
      name: r'quizzes',
      type: IsarType.objectList,
      target: r'Quiz',
    ),
    r'title': PropertySchema(
      id: 6,
      name: r'title',
      type: IsarType.string,
    ),
    r'variables': PropertySchema(
      id: 7,
      name: r'variables',
      type: IsarType.objectList,
      target: r'FormulaVariable',
    )
  },
  estimateSize: _mathFormulaEstimateSize,
  serialize: _mathFormulaSerialize,
  deserialize: _mathFormulaDeserialize,
  deserializeProp: _mathFormulaDeserializeProp,
  idName: r'id',
  indexes: {
    r'formulaId': IndexSchema(
      id: 8970711594689871908,
      name: r'formulaId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'formulaId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'FormulaVariable': FormulaVariableSchema,
    r'Quiz': QuizSchema
  },
  getId: _mathFormulaGetId,
  getLinks: _mathFormulaGetLinks,
  attach: _mathFormulaAttach,
  version: '3.1.0+1',
);

int _mathFormulaEstimateSize(
  MathFormula object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.formulaId.length * 3;
  bytesCount += 3 + object.latexFormula.length * 3;
  {
    final list = object.quizzes;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Quiz]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += QuizSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  bytesCount += 3 + object.title.length * 3;
  {
    final list = object.variables;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[FormulaVariable]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              FormulaVariableSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _mathFormulaSerialize(
  MathFormula object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.category);
  writer.writeString(offsets[1], object.description);
  writer.writeString(offsets[2], object.formulaId);
  writer.writeLong(offsets[3], object.gradeLevel);
  writer.writeString(offsets[4], object.latexFormula);
  writer.writeObjectList<Quiz>(
    offsets[5],
    allOffsets,
    QuizSchema.serialize,
    object.quizzes,
  );
  writer.writeString(offsets[6], object.title);
  writer.writeObjectList<FormulaVariable>(
    offsets[7],
    allOffsets,
    FormulaVariableSchema.serialize,
    object.variables,
  );
}

MathFormula _mathFormulaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MathFormula();
  object.category = reader.readString(offsets[0]);
  object.description = reader.readString(offsets[1]);
  object.formulaId = reader.readString(offsets[2]);
  object.gradeLevel = reader.readLong(offsets[3]);
  object.id = id;
  object.latexFormula = reader.readString(offsets[4]);
  object.quizzes = reader.readObjectList<Quiz>(
    offsets[5],
    QuizSchema.deserialize,
    allOffsets,
    Quiz(),
  );
  object.title = reader.readString(offsets[6]);
  object.variables = reader.readObjectList<FormulaVariable>(
    offsets[7],
    FormulaVariableSchema.deserialize,
    allOffsets,
    FormulaVariable(),
  );
  return object;
}

P _mathFormulaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readObjectList<Quiz>(
        offset,
        QuizSchema.deserialize,
        allOffsets,
        Quiz(),
      )) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readObjectList<FormulaVariable>(
        offset,
        FormulaVariableSchema.deserialize,
        allOffsets,
        FormulaVariable(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mathFormulaGetId(MathFormula object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mathFormulaGetLinks(MathFormula object) {
  return [];
}

void _mathFormulaAttach(
    IsarCollection<dynamic> col, Id id, MathFormula object) {
  object.id = id;
}

extension MathFormulaByIndex on IsarCollection<MathFormula> {
  Future<MathFormula?> getByFormulaId(String formulaId) {
    return getByIndex(r'formulaId', [formulaId]);
  }

  MathFormula? getByFormulaIdSync(String formulaId) {
    return getByIndexSync(r'formulaId', [formulaId]);
  }

  Future<bool> deleteByFormulaId(String formulaId) {
    return deleteByIndex(r'formulaId', [formulaId]);
  }

  bool deleteByFormulaIdSync(String formulaId) {
    return deleteByIndexSync(r'formulaId', [formulaId]);
  }

  Future<List<MathFormula?>> getAllByFormulaId(List<String> formulaIdValues) {
    final values = formulaIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'formulaId', values);
  }

  List<MathFormula?> getAllByFormulaIdSync(List<String> formulaIdValues) {
    final values = formulaIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'formulaId', values);
  }

  Future<int> deleteAllByFormulaId(List<String> formulaIdValues) {
    final values = formulaIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'formulaId', values);
  }

  int deleteAllByFormulaIdSync(List<String> formulaIdValues) {
    final values = formulaIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'formulaId', values);
  }

  Future<Id> putByFormulaId(MathFormula object) {
    return putByIndex(r'formulaId', object);
  }

  Id putByFormulaIdSync(MathFormula object, {bool saveLinks = true}) {
    return putByIndexSync(r'formulaId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByFormulaId(List<MathFormula> objects) {
    return putAllByIndex(r'formulaId', objects);
  }

  List<Id> putAllByFormulaIdSync(List<MathFormula> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'formulaId', objects, saveLinks: saveLinks);
  }
}

extension MathFormulaQueryWhereSort
    on QueryBuilder<MathFormula, MathFormula, QWhere> {
  QueryBuilder<MathFormula, MathFormula, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MathFormulaQueryWhere
    on QueryBuilder<MathFormula, MathFormula, QWhereClause> {
  QueryBuilder<MathFormula, MathFormula, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterWhereClause> formulaIdEqualTo(
      String formulaId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'formulaId',
        value: [formulaId],
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterWhereClause> formulaIdNotEqualTo(
      String formulaId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'formulaId',
              lower: [],
              upper: [formulaId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'formulaId',
              lower: [formulaId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'formulaId',
              lower: [formulaId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'formulaId',
              lower: [],
              upper: [formulaId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MathFormulaQueryFilter
    on QueryBuilder<MathFormula, MathFormula, QFilterCondition> {
  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      categoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      categoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formulaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formulaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formulaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formulaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formulaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formulaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formulaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formulaId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formulaId',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      formulaIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formulaId',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      gradeLevelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gradeLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      gradeLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gradeLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      gradeLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gradeLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      gradeLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gradeLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latexFormula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latexFormula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latexFormula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latexFormula',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latexFormula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latexFormula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latexFormula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latexFormula',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latexFormula',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      latexFormulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latexFormula',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      quizzesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quizzes',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      quizzesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quizzes',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      quizzesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'quizzes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      quizzesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'quizzes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      quizzesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'quizzes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      quizzesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'quizzes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      quizzesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'quizzes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      quizzesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'quizzes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'variables',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'variables',
      ));
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variables',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variables',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variables',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variables',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variables',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variables',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension MathFormulaQueryObject
    on QueryBuilder<MathFormula, MathFormula, QFilterCondition> {
  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition> quizzesElement(
      FilterQuery<Quiz> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'quizzes');
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterFilterCondition>
      variablesElement(FilterQuery<FormulaVariable> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'variables');
    });
  }
}

extension MathFormulaQueryLinks
    on QueryBuilder<MathFormula, MathFormula, QFilterCondition> {}

extension MathFormulaQuerySortBy
    on QueryBuilder<MathFormula, MathFormula, QSortBy> {
  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByFormulaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formulaId', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByFormulaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formulaId', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByGradeLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeLevel', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByGradeLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeLevel', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByLatexFormula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latexFormula', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy>
      sortByLatexFormulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latexFormula', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension MathFormulaQuerySortThenBy
    on QueryBuilder<MathFormula, MathFormula, QSortThenBy> {
  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByFormulaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formulaId', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByFormulaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formulaId', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByGradeLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeLevel', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByGradeLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeLevel', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByLatexFormula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latexFormula', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy>
      thenByLatexFormulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latexFormula', Sort.desc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension MathFormulaQueryWhereDistinct
    on QueryBuilder<MathFormula, MathFormula, QDistinct> {
  QueryBuilder<MathFormula, MathFormula, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QDistinct> distinctByFormulaId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formulaId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QDistinct> distinctByGradeLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gradeLevel');
    });
  }

  QueryBuilder<MathFormula, MathFormula, QDistinct> distinctByLatexFormula(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latexFormula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MathFormula, MathFormula, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension MathFormulaQueryProperty
    on QueryBuilder<MathFormula, MathFormula, QQueryProperty> {
  QueryBuilder<MathFormula, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MathFormula, String, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<MathFormula, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<MathFormula, String, QQueryOperations> formulaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formulaId');
    });
  }

  QueryBuilder<MathFormula, int, QQueryOperations> gradeLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gradeLevel');
    });
  }

  QueryBuilder<MathFormula, String, QQueryOperations> latexFormulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latexFormula');
    });
  }

  QueryBuilder<MathFormula, List<Quiz>?, QQueryOperations> quizzesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quizzes');
    });
  }

  QueryBuilder<MathFormula, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<MathFormula, List<FormulaVariable>?, QQueryOperations>
      variablesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'variables');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FormulaVariableSchema = Schema(
  name: r'FormulaVariable',
  id: -6802283250659011714,
  properties: {
    r'defaultValue': PropertySchema(
      id: 0,
      name: r'defaultValue',
      type: IsarType.double,
    ),
    r'key': PropertySchema(
      id: 1,
      name: r'key',
      type: IsarType.string,
    ),
    r'max': PropertySchema(
      id: 2,
      name: r'max',
      type: IsarType.double,
    ),
    r'min': PropertySchema(
      id: 3,
      name: r'min',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _formulaVariableEstimateSize,
  serialize: _formulaVariableSerialize,
  deserialize: _formulaVariableDeserialize,
  deserializeProp: _formulaVariableDeserializeProp,
);

int _formulaVariableEstimateSize(
  FormulaVariable object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.key;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _formulaVariableSerialize(
  FormulaVariable object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.defaultValue);
  writer.writeString(offsets[1], object.key);
  writer.writeDouble(offsets[2], object.max);
  writer.writeDouble(offsets[3], object.min);
  writer.writeString(offsets[4], object.name);
}

FormulaVariable _formulaVariableDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FormulaVariable();
  object.defaultValue = reader.readDoubleOrNull(offsets[0]);
  object.key = reader.readStringOrNull(offsets[1]);
  object.max = reader.readDoubleOrNull(offsets[2]);
  object.min = reader.readDoubleOrNull(offsets[3]);
  object.name = reader.readStringOrNull(offsets[4]);
  return object;
}

P _formulaVariableDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FormulaVariableQueryFilter
    on QueryBuilder<FormulaVariable, FormulaVariable, QFilterCondition> {
  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      defaultValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'defaultValue',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      defaultValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'defaultValue',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      defaultValueEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      defaultValueGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'defaultValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      defaultValueLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'defaultValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      defaultValueBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'defaultValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'key',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'key',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      maxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'max',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      maxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'max',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      maxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'max',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      maxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'max',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      maxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'max',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      maxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'max',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      minIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'min',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      minIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'min',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      minEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'min',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      minGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'min',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      minLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'min',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      minBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'min',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FormulaVariable, FormulaVariable, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension FormulaVariableQueryObject
    on QueryBuilder<FormulaVariable, FormulaVariable, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const QuizSchema = Schema(
  name: r'Quiz',
  id: 3912563531471134748,
  properties: {
    r'correctOptionIndex': PropertySchema(
      id: 0,
      name: r'correctOptionIndex',
      type: IsarType.long,
    ),
    r'options': PropertySchema(
      id: 1,
      name: r'options',
      type: IsarType.stringList,
    ),
    r'question': PropertySchema(
      id: 2,
      name: r'question',
      type: IsarType.string,
    ),
    r'quizId': PropertySchema(
      id: 3,
      name: r'quizId',
      type: IsarType.string,
    )
  },
  estimateSize: _quizEstimateSize,
  serialize: _quizSerialize,
  deserialize: _quizDeserialize,
  deserializeProp: _quizDeserializeProp,
);

int _quizEstimateSize(
  Quiz object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.options;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.question;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.quizId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _quizSerialize(
  Quiz object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.correctOptionIndex);
  writer.writeStringList(offsets[1], object.options);
  writer.writeString(offsets[2], object.question);
  writer.writeString(offsets[3], object.quizId);
}

Quiz _quizDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Quiz();
  object.correctOptionIndex = reader.readLongOrNull(offsets[0]);
  object.options = reader.readStringList(offsets[1]);
  object.question = reader.readStringOrNull(offsets[2]);
  object.quizId = reader.readStringOrNull(offsets[3]);
  return object;
}

P _quizDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension QuizQueryFilter on QueryBuilder<Quiz, Quiz, QFilterCondition> {
  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> correctOptionIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctOptionIndex',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition>
      correctOptionIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctOptionIndex',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> correctOptionIndexEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctOptionIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> correctOptionIndexGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctOptionIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> correctOptionIndexLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctOptionIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> correctOptionIndexBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctOptionIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'options',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'options',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'options',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'options',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'options',
        value: '',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'options',
        value: '',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> optionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'question',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'question',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'question',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'question',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'question',
        value: '',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> questionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'question',
        value: '',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quizId',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quizId',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quizId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quizId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizId',
        value: '',
      ));
    });
  }

  QueryBuilder<Quiz, Quiz, QAfterFilterCondition> quizIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quizId',
        value: '',
      ));
    });
  }
}

extension QuizQueryObject on QueryBuilder<Quiz, Quiz, QFilterCondition> {}
