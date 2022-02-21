// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetIArticleCollection on Isar {
  IsarCollection<IArticle> get iArticles {
    return getCollection('IArticle');
  }
}

final IArticleSchema = CollectionSchema(
  name: 'IArticle',
  schema:
      '{"name":"IArticle","idName":"id","properties":[{"name":"author","type":"String"},{"name":"content","type":"String"},{"name":"description","type":"String"},{"name":"publishedAt","type":"String"},{"name":"title","type":"String"},{"name":"url","type":"String"},{"name":"urlToImage","type":"String"}],"indexes":[],"links":[]}',
  nativeAdapter: const _IArticleNativeAdapter(),
  webAdapter: const _IArticleWebAdapter(),
  idName: 'id',
  propertyIds: {
    'author': 0,
    'content': 1,
    'description': 2,
    'publishedAt': 3,
    'title': 4,
    'url': 5,
    'urlToImage': 6
  },
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _IArticleWebAdapter extends IsarWebTypeAdapter<IArticle> {
  const _IArticleWebAdapter();

  @override
  Object serialize(IsarCollection<IArticle> collection, IArticle object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'author', object.author);
    IsarNative.jsObjectSet(jsObj, 'content', object.content);
    IsarNative.jsObjectSet(jsObj, 'description', object.description);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'publishedAt', object.publishedAt);
    IsarNative.jsObjectSet(jsObj, 'title', object.title);
    IsarNative.jsObjectSet(jsObj, 'url', object.url);
    IsarNative.jsObjectSet(jsObj, 'urlToImage', object.urlToImage);
    return jsObj;
  }

  @override
  IArticle deserialize(IsarCollection<IArticle> collection, dynamic jsObj) {
    final object = IArticle();
    object.author = IsarNative.jsObjectGet(jsObj, 'author');
    object.content = IsarNative.jsObjectGet(jsObj, 'content');
    object.description = IsarNative.jsObjectGet(jsObj, 'description');
    object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
    object.publishedAt = IsarNative.jsObjectGet(jsObj, 'publishedAt');
    object.title = IsarNative.jsObjectGet(jsObj, 'title');
    object.url = IsarNative.jsObjectGet(jsObj, 'url');
    object.urlToImage = IsarNative.jsObjectGet(jsObj, 'urlToImage');
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'author':
        return (IsarNative.jsObjectGet(jsObj, 'author')) as P;
      case 'content':
        return (IsarNative.jsObjectGet(jsObj, 'content')) as P;
      case 'description':
        return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
            as P;
      case 'publishedAt':
        return (IsarNative.jsObjectGet(jsObj, 'publishedAt')) as P;
      case 'title':
        return (IsarNative.jsObjectGet(jsObj, 'title')) as P;
      case 'url':
        return (IsarNative.jsObjectGet(jsObj, 'url')) as P;
      case 'urlToImage':
        return (IsarNative.jsObjectGet(jsObj, 'urlToImage')) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, IArticle object) {}
}

class _IArticleNativeAdapter extends IsarNativeTypeAdapter<IArticle> {
  const _IArticleNativeAdapter();

  @override
  void serialize(IsarCollection<IArticle> collection, IsarRawObject rawObj,
      IArticle object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.author;
    IsarUint8List? _author;
    if (value0 != null) {
      _author = IsarBinaryWriter.utf8Encoder.convert(value0);
    }
    dynamicSize += (_author?.length ?? 0) as int;
    final value1 = object.content;
    IsarUint8List? _content;
    if (value1 != null) {
      _content = IsarBinaryWriter.utf8Encoder.convert(value1);
    }
    dynamicSize += (_content?.length ?? 0) as int;
    final value2 = object.description;
    IsarUint8List? _description;
    if (value2 != null) {
      _description = IsarBinaryWriter.utf8Encoder.convert(value2);
    }
    dynamicSize += (_description?.length ?? 0) as int;
    final value3 = object.publishedAt;
    IsarUint8List? _publishedAt;
    if (value3 != null) {
      _publishedAt = IsarBinaryWriter.utf8Encoder.convert(value3);
    }
    dynamicSize += (_publishedAt?.length ?? 0) as int;
    final value4 = object.title;
    IsarUint8List? _title;
    if (value4 != null) {
      _title = IsarBinaryWriter.utf8Encoder.convert(value4);
    }
    dynamicSize += (_title?.length ?? 0) as int;
    final value5 = object.url;
    IsarUint8List? _url;
    if (value5 != null) {
      _url = IsarBinaryWriter.utf8Encoder.convert(value5);
    }
    dynamicSize += (_url?.length ?? 0) as int;
    final value6 = object.urlToImage;
    IsarUint8List? _urlToImage;
    if (value6 != null) {
      _urlToImage = IsarBinaryWriter.utf8Encoder.convert(value6);
    }
    dynamicSize += (_urlToImage?.length ?? 0) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _author);
    writer.writeBytes(offsets[1], _content);
    writer.writeBytes(offsets[2], _description);
    writer.writeBytes(offsets[3], _publishedAt);
    writer.writeBytes(offsets[4], _title);
    writer.writeBytes(offsets[5], _url);
    writer.writeBytes(offsets[6], _urlToImage);
  }

  @override
  IArticle deserialize(IsarCollection<IArticle> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = IArticle();
    object.author = reader.readStringOrNull(offsets[0]);
    object.content = reader.readStringOrNull(offsets[1]);
    object.description = reader.readStringOrNull(offsets[2]);
    object.id = id;
    object.publishedAt = reader.readStringOrNull(offsets[3]);
    object.title = reader.readStringOrNull(offsets[4]);
    object.url = reader.readStringOrNull(offsets[5]);
    object.urlToImage = reader.readStringOrNull(offsets[6]);
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
      case 2:
        return (reader.readStringOrNull(offset)) as P;
      case 3:
        return (reader.readStringOrNull(offset)) as P;
      case 4:
        return (reader.readStringOrNull(offset)) as P;
      case 5:
        return (reader.readStringOrNull(offset)) as P;
      case 6:
        return (reader.readStringOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, IArticle object) {}
}

extension IArticleQueryWhereSort on QueryBuilder<IArticle, IArticle, QWhere> {
  QueryBuilder<IArticle, IArticle, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension IArticleQueryWhere on QueryBuilder<IArticle, IArticle, QWhereClause> {
  QueryBuilder<IArticle, IArticle, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<IArticle, IArticle, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension IArticleQueryFilter
    on QueryBuilder<IArticle, IArticle, QFilterCondition> {
  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'author',
      value: null,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'author',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'author',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'author',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'author',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'author',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'author',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'author',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> authorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'author',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'content',
      value: null,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'content',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'content',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> descriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> publishedAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'publishedAt',
      value: null,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> publishedAtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'publishedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition>
      publishedAtGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'publishedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> publishedAtLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'publishedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> publishedAtBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'publishedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> publishedAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'publishedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> publishedAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'publishedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> publishedAtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'publishedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> publishedAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'publishedAt',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'title',
      value: null,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'url',
      value: null,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'url',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'url',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'urlToImage',
      value: null,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'urlToImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'urlToImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'urlToImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'urlToImage',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'urlToImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'urlToImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'urlToImage',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IArticle, IArticle, QAfterFilterCondition> urlToImageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'urlToImage',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension IArticleQueryLinks
    on QueryBuilder<IArticle, IArticle, QFilterCondition> {}

extension IArticleQueryWhereSortBy
    on QueryBuilder<IArticle, IArticle, QSortBy> {
  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByAuthor() {
    return addSortByInternal('author', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByAuthorDesc() {
    return addSortByInternal('author', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByContent() {
    return addSortByInternal('content', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByContentDesc() {
    return addSortByInternal('content', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByPublishedAt() {
    return addSortByInternal('publishedAt', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByPublishedAtDesc() {
    return addSortByInternal('publishedAt', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByUrl() {
    return addSortByInternal('url', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByUrlDesc() {
    return addSortByInternal('url', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByUrlToImage() {
    return addSortByInternal('urlToImage', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> sortByUrlToImageDesc() {
    return addSortByInternal('urlToImage', Sort.desc);
  }
}

extension IArticleQueryWhereSortThenBy
    on QueryBuilder<IArticle, IArticle, QSortThenBy> {
  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByAuthor() {
    return addSortByInternal('author', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByAuthorDesc() {
    return addSortByInternal('author', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByContent() {
    return addSortByInternal('content', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByContentDesc() {
    return addSortByInternal('content', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByPublishedAt() {
    return addSortByInternal('publishedAt', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByPublishedAtDesc() {
    return addSortByInternal('publishedAt', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByUrl() {
    return addSortByInternal('url', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByUrlDesc() {
    return addSortByInternal('url', Sort.desc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByUrlToImage() {
    return addSortByInternal('urlToImage', Sort.asc);
  }

  QueryBuilder<IArticle, IArticle, QAfterSortBy> thenByUrlToImageDesc() {
    return addSortByInternal('urlToImage', Sort.desc);
  }
}

extension IArticleQueryWhereDistinct
    on QueryBuilder<IArticle, IArticle, QDistinct> {
  QueryBuilder<IArticle, IArticle, QDistinct> distinctByAuthor(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('author', caseSensitive: caseSensitive);
  }

  QueryBuilder<IArticle, IArticle, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('content', caseSensitive: caseSensitive);
  }

  QueryBuilder<IArticle, IArticle, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<IArticle, IArticle, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<IArticle, IArticle, QDistinct> distinctByPublishedAt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('publishedAt', caseSensitive: caseSensitive);
  }

  QueryBuilder<IArticle, IArticle, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }

  QueryBuilder<IArticle, IArticle, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('url', caseSensitive: caseSensitive);
  }

  QueryBuilder<IArticle, IArticle, QDistinct> distinctByUrlToImage(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('urlToImage', caseSensitive: caseSensitive);
  }
}

extension IArticleQueryProperty
    on QueryBuilder<IArticle, IArticle, QQueryProperty> {
  QueryBuilder<IArticle, String?, QQueryOperations> authorProperty() {
    return addPropertyNameInternal('author');
  }

  QueryBuilder<IArticle, String?, QQueryOperations> contentProperty() {
    return addPropertyNameInternal('content');
  }

  QueryBuilder<IArticle, String?, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<IArticle, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<IArticle, String?, QQueryOperations> publishedAtProperty() {
    return addPropertyNameInternal('publishedAt');
  }

  QueryBuilder<IArticle, String?, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }

  QueryBuilder<IArticle, String?, QQueryOperations> urlProperty() {
    return addPropertyNameInternal('url');
  }

  QueryBuilder<IArticle, String?, QQueryOperations> urlToImageProperty() {
    return addPropertyNameInternal('urlToImage');
  }
}
