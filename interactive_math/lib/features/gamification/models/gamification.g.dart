// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamification.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGamificationProgressCollection on Isar {
  IsarCollection<GamificationProgress> get gamificationProgress =>
      this.collection();
}

const GamificationProgressSchema = CollectionSchema(
  name: r'GamificationProgress',
  id: 6055610741288592906,
  properties: {
    r'completedQuizIds': PropertySchema(
      id: 0,
      name: r'completedQuizIds',
      type: IsarType.stringList,
    ),
    r'totalXp': PropertySchema(
      id: 1,
      name: r'totalXp',
      type: IsarType.long,
    ),
    r'unlockedBadgeIds': PropertySchema(
      id: 2,
      name: r'unlockedBadgeIds',
      type: IsarType.stringList,
    ),
    r'viewedFormulaIds': PropertySchema(
      id: 3,
      name: r'viewedFormulaIds',
      type: IsarType.stringList,
    )
  },
  estimateSize: _gamificationProgressEstimateSize,
  serialize: _gamificationProgressSerialize,
  deserialize: _gamificationProgressDeserialize,
  deserializeProp: _gamificationProgressDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _gamificationProgressGetId,
  getLinks: _gamificationProgressGetLinks,
  attach: _gamificationProgressAttach,
  version: '3.1.0+1',
);

int _gamificationProgressEstimateSize(
  GamificationProgress object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.completedQuizIds.length * 3;
  {
    for (var i = 0; i < object.completedQuizIds.length; i++) {
      final value = object.completedQuizIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.unlockedBadgeIds.length * 3;
  {
    for (var i = 0; i < object.unlockedBadgeIds.length; i++) {
      final value = object.unlockedBadgeIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.viewedFormulaIds.length * 3;
  {
    for (var i = 0; i < object.viewedFormulaIds.length; i++) {
      final value = object.viewedFormulaIds[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _gamificationProgressSerialize(
  GamificationProgress object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.completedQuizIds);
  writer.writeLong(offsets[1], object.totalXp);
  writer.writeStringList(offsets[2], object.unlockedBadgeIds);
  writer.writeStringList(offsets[3], object.viewedFormulaIds);
}

GamificationProgress _gamificationProgressDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GamificationProgress();
  object.completedQuizIds = reader.readStringList(offsets[0]) ?? [];
  object.id = id;
  object.totalXp = reader.readLong(offsets[1]);
  object.unlockedBadgeIds = reader.readStringList(offsets[2]) ?? [];
  object.viewedFormulaIds = reader.readStringList(offsets[3]) ?? [];
  return object;
}

P _gamificationProgressDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _gamificationProgressGetId(GamificationProgress object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _gamificationProgressGetLinks(
    GamificationProgress object) {
  return [];
}

void _gamificationProgressAttach(
    IsarCollection<dynamic> col, Id id, GamificationProgress object) {
  object.id = id;
}

extension GamificationProgressQueryWhereSort
    on QueryBuilder<GamificationProgress, GamificationProgress, QWhere> {
  QueryBuilder<GamificationProgress, GamificationProgress, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GamificationProgressQueryWhere
    on QueryBuilder<GamificationProgress, GamificationProgress, QWhereClause> {
  QueryBuilder<GamificationProgress, GamificationProgress, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<GamificationProgress, GamificationProgress, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QAfterWhereClause>
      idBetween(
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
}

extension GamificationProgressQueryFilter on QueryBuilder<GamificationProgress,
    GamificationProgress, QFilterCondition> {
  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedQuizIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completedQuizIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completedQuizIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completedQuizIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'completedQuizIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'completedQuizIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
          QAfterFilterCondition>
      completedQuizIdsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'completedQuizIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
          QAfterFilterCondition>
      completedQuizIdsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'completedQuizIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedQuizIds',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'completedQuizIds',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> completedQuizIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> totalXpEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalXp',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> totalXpGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalXp',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> totalXpLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalXp',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> totalXpBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalXp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unlockedBadgeIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unlockedBadgeIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unlockedBadgeIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unlockedBadgeIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unlockedBadgeIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unlockedBadgeIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
          QAfterFilterCondition>
      unlockedBadgeIdsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unlockedBadgeIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
          QAfterFilterCondition>
      unlockedBadgeIdsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unlockedBadgeIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unlockedBadgeIds',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unlockedBadgeIds',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'unlockedBadgeIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'unlockedBadgeIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'unlockedBadgeIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'unlockedBadgeIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'unlockedBadgeIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> unlockedBadgeIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'unlockedBadgeIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viewedFormulaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'viewedFormulaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'viewedFormulaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'viewedFormulaIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'viewedFormulaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'viewedFormulaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
          QAfterFilterCondition>
      viewedFormulaIdsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'viewedFormulaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
          QAfterFilterCondition>
      viewedFormulaIdsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'viewedFormulaIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viewedFormulaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'viewedFormulaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'viewedFormulaIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'viewedFormulaIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'viewedFormulaIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'viewedFormulaIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'viewedFormulaIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress,
      QAfterFilterCondition> viewedFormulaIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'viewedFormulaIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension GamificationProgressQueryObject on QueryBuilder<GamificationProgress,
    GamificationProgress, QFilterCondition> {}

extension GamificationProgressQueryLinks on QueryBuilder<GamificationProgress,
    GamificationProgress, QFilterCondition> {}

extension GamificationProgressQuerySortBy
    on QueryBuilder<GamificationProgress, GamificationProgress, QSortBy> {
  QueryBuilder<GamificationProgress, GamificationProgress, QAfterSortBy>
      sortByTotalXp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalXp', Sort.asc);
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QAfterSortBy>
      sortByTotalXpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalXp', Sort.desc);
    });
  }
}

extension GamificationProgressQuerySortThenBy
    on QueryBuilder<GamificationProgress, GamificationProgress, QSortThenBy> {
  QueryBuilder<GamificationProgress, GamificationProgress, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QAfterSortBy>
      thenByTotalXp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalXp', Sort.asc);
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QAfterSortBy>
      thenByTotalXpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalXp', Sort.desc);
    });
  }
}

extension GamificationProgressQueryWhereDistinct
    on QueryBuilder<GamificationProgress, GamificationProgress, QDistinct> {
  QueryBuilder<GamificationProgress, GamificationProgress, QDistinct>
      distinctByCompletedQuizIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedQuizIds');
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QDistinct>
      distinctByTotalXp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalXp');
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QDistinct>
      distinctByUnlockedBadgeIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unlockedBadgeIds');
    });
  }

  QueryBuilder<GamificationProgress, GamificationProgress, QDistinct>
      distinctByViewedFormulaIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'viewedFormulaIds');
    });
  }
}

extension GamificationProgressQueryProperty on QueryBuilder<
    GamificationProgress, GamificationProgress, QQueryProperty> {
  QueryBuilder<GamificationProgress, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GamificationProgress, List<String>, QQueryOperations>
      completedQuizIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedQuizIds');
    });
  }

  QueryBuilder<GamificationProgress, int, QQueryOperations> totalXpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalXp');
    });
  }

  QueryBuilder<GamificationProgress, List<String>, QQueryOperations>
      unlockedBadgeIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unlockedBadgeIds');
    });
  }

  QueryBuilder<GamificationProgress, List<String>, QQueryOperations>
      viewedFormulaIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'viewedFormulaIds');
    });
  }
}
