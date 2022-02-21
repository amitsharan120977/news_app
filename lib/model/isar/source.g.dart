// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetSourceCollection on Isar {
  IsarCollection<Source> get sources {
    return getCollection('Source');
  }
}

final SourceSchema = CollectionSchema(
  name: 'Source',
  schema:
      '{"name":"Source","idName":"ids","properties":[{"name":"id","type":"String"},{"name":"name","type":"String"}],"indexes":[],"links":[]}',
  nativeAdapter: const _SourceNativeAdapter(),
  webAdapter: const _SourceWebAdapter(),
  idName: 'ids',
  propertyIds: {'id': 0, 'name': 1},
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.ids == Isar.autoIncrement) {
      return null;
    } else {
      return obj.ids;
    }
  },
  setId: (obj, id) => obj.ids = id,
  getLinks: (obj) => [],
  version: 2,
);

class _SourceWebAdapter extends IsarWebTypeAdapter<Source> {
  const _SourceWebAdapter();

  @override
  Object serialize(IsarCollection<Source> collection, Source object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'ids', object.ids);
    IsarNative.jsObjectSet(jsObj, 'name', object.name);
    return jsObj;
  }

  @override
  Source deserialize(IsarCollection<Source> collection, dynamic jsObj) {
    final object = Source();
    object.id = IsarNative.jsObjectGet(jsObj, 'id');
    object.ids =
        IsarNative.jsObjectGet(jsObj, 'ids') ?? double.negativeInfinity;
    object.name = IsarNative.jsObjectGet(jsObj, 'name');
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'ids':
        return (IsarNative.jsObjectGet(jsObj, 'ids') ?? double.negativeInfinity)
            as P;
      case 'name':
        return (IsarNative.jsObjectGet(jsObj, 'name')) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Source object) {}
}

class _SourceNativeAdapter extends IsarNativeTypeAdapter<Source> {
  const _SourceNativeAdapter();

  @override
  void serialize(IsarCollection<Source> collection, IsarRawObject rawObj,
      Source object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.id;
    IsarUint8List? _id;
    if (value0 != null) {
      _id = IsarBinaryWriter.utf8Encoder.convert(value0);
    }
    dynamicSize += (_id?.length ?? 0) as int;
    final value1 = object.name;
    IsarUint8List? _name;
    if (value1 != null) {
      _name = IsarBinaryWriter.utf8Encoder.convert(value1);
    }
    dynamicSize += (_name?.length ?? 0) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _id);
    writer.writeBytes(offsets[1], _name);
  }

  @override
  Source deserialize(IsarCollection<Source> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Source();
    object.id = reader.readStringOrNull(offsets[0]);
    object.ids = id;
    object.name = reader.readStringOrNull(offsets[1]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readStringOrNull(offset)) as P;
      case 1:
        return (reader.readStringOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Source object) {}
}

extension SourceQueryWhereSort on QueryBuilder<Source, Source, QWhere> {
  QueryBuilder<Source, Source, QAfterWhere> anyIds() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension SourceQueryWhere on QueryBuilder<Source, Source, QWhereClause> {
  QueryBuilder<Source, Source, QAfterWhereClause> idsEqualTo(int ids) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [ids],
      includeLower: true,
      upper: [ids],
      includeUpper: true,
    ));
  }

  QueryBuilder<Source, Source, QAfterWhereClause> idsNotEqualTo(int ids) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [ids],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [ids],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [ids],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [ids],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Source, Source, QAfterWhereClause> idsGreaterThan(
    int ids, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [ids],
      includeLower: include,
    ));
  }

  QueryBuilder<Source, Source, QAfterWhereClause> idsLessThan(
    int ids, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [ids],
      includeUpper: include,
    ));
  }

  QueryBuilder<Source, Source, QAfterWhereClause> idsBetween(
    int lowerIds,
    int upperIds, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerIds],
      includeLower: includeLower,
      upper: [upperIds],
      includeUpper: includeUpper,
    ));
  }
}

extension SourceQueryFilter on QueryBuilder<Source, Source, QFilterCondition> {
  QueryBuilder<Source, Source, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'id',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idsEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'ids',
      value: value,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'ids',
      value: value,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'ids',
      value: value,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> idsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'ids',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Source, Source, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension SourceQueryLinks on QueryBuilder<Source, Source, QFilterCondition> {}

extension SourceQueryWhereSortBy on QueryBuilder<Source, Source, QSortBy> {
  QueryBuilder<Source, Source, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> sortByIds() {
    return addSortByInternal('ids', Sort.asc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> sortByIdsDesc() {
    return addSortByInternal('ids', Sort.desc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension SourceQueryWhereSortThenBy
    on QueryBuilder<Source, Source, QSortThenBy> {
  QueryBuilder<Source, Source, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> thenByIds() {
    return addSortByInternal('ids', Sort.asc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> thenByIdsDesc() {
    return addSortByInternal('ids', Sort.desc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Source, Source, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension SourceQueryWhereDistinct on QueryBuilder<Source, Source, QDistinct> {
  QueryBuilder<Source, Source, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('id', caseSensitive: caseSensitive);
  }

  QueryBuilder<Source, Source, QDistinct> distinctByIds() {
    return addDistinctByInternal('ids');
  }

  QueryBuilder<Source, Source, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension SourceQueryProperty on QueryBuilder<Source, Source, QQueryProperty> {
  QueryBuilder<Source, String?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Source, int, QQueryOperations> idsProperty() {
    return addPropertyNameInternal('ids');
  }

  QueryBuilder<Source, String?, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
