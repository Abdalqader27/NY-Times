// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleModel {
  String get status => throw _privateConstructorUsedError;
  String get copyright => throw _privateConstructorUsedError;
  num get numResults => throw _privateConstructorUsedError;
  List<Article> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call(
      {String status, String copyright, num numResults, List<Article> results});
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? copyright = null,
    Object? numResults = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      numResults: null == numResults
          ? _value.numResults
          : numResults // ignore: cast_nullable_to_non_nullable
              as num,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleModelCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$_ArticleModelCopyWith(
          _$_ArticleModel value, $Res Function(_$_ArticleModel) then) =
      __$$_ArticleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status, String copyright, num numResults, List<Article> results});
}

/// @nodoc
class __$$_ArticleModelCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$_ArticleModel>
    implements _$$_ArticleModelCopyWith<$Res> {
  __$$_ArticleModelCopyWithImpl(
      _$_ArticleModel _value, $Res Function(_$_ArticleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? copyright = null,
    Object? numResults = null,
    Object? results = null,
  }) {
    return _then(_$_ArticleModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      numResults: null == numResults
          ? _value.numResults
          : numResults // ignore: cast_nullable_to_non_nullable
              as num,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleModel extends _ArticleModel {
  const _$_ArticleModel(
      {required this.status,
      required this.copyright,
      this.numResults = 0,
      required final List<Article> results})
      : _results = results,
        super._();

  factory _$_ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleModelFromJson(json);

  @override
  final String status;
  @override
  final String copyright;
  @override
  @JsonKey()
  final num numResults;
  final List<Article> _results;
  @override
  List<Article> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ArticleModel(status: $status, copyright: $copyright, numResults: $numResults, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.numResults, numResults) ||
                other.numResults == numResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, copyright, numResults,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleModelCopyWith<_$_ArticleModel> get copyWith =>
      __$$_ArticleModelCopyWithImpl<_$_ArticleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleModelToJson(
      this,
    );
  }
}

abstract class _ArticleModel extends ArticleModel {
  const factory _ArticleModel(
      {required final String status,
      required final String copyright,
      final num numResults,
      required final List<Article> results}) = _$_ArticleModel;
  const _ArticleModel._() : super._();

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleModel.fromJson;

  @override
  String get status;
  @override
  String get copyright;
  @override
  num get numResults;
  @override
  List<Article> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleModelCopyWith<_$_ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Article _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int get id => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get assetId => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_date')
  DateTime? get publishedDate => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  String? get section => throw _privateConstructorUsedError;
  String? get subsection => throw _privateConstructorUsedError;
  String? get nytdsection => throw _privateConstructorUsedError;
  String? get adxKeywords => throw _privateConstructorUsedError;
  String? get byline => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get abstract => throw _privateConstructorUsedError;
  List<String>? get desFacet => throw _privateConstructorUsedError;
  List<String>? get orgFacet => throw _privateConstructorUsedError;
  List<String>? get perFacet => throw _privateConstructorUsedError;
  List<String>? get geoFacet => throw _privateConstructorUsedError;
  List<Media>? get media => throw _privateConstructorUsedError;
  int? get etaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Article value, $Res Function(Article) then) =
      _$ResultCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {int id,
      String? uri,
      String? url,
      int? assetId,
      String? source,
      @JsonKey(name: 'published_date') DateTime? publishedDate,
      DateTime? updated,
      String? section,
      String? subsection,
      String? nytdsection,
      String? adxKeywords,
      String? byline,
      String? type,
      String? title,
      String? abstract,
      List<String>? desFacet,
      List<String>? orgFacet,
      List<String>? perFacet,
      List<String>? geoFacet,
      List<Media>? media,
      int? etaId});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Article>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uri = freezed,
    Object? url = freezed,
    Object? assetId = freezed,
    Object? source = freezed,
    Object? publishedDate = freezed,
    Object? updated = freezed,
    Object? section = freezed,
    Object? subsection = freezed,
    Object? nytdsection = freezed,
    Object? adxKeywords = freezed,
    Object? byline = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
    Object? desFacet = freezed,
    Object? orgFacet = freezed,
    Object? perFacet = freezed,
    Object? geoFacet = freezed,
    Object? media = freezed,
    Object? etaId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      subsection: freezed == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String?,
      nytdsection: freezed == nytdsection
          ? _value.nytdsection
          : nytdsection // ignore: cast_nullable_to_non_nullable
              as String?,
      adxKeywords: freezed == adxKeywords
          ? _value.adxKeywords
          : adxKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      desFacet: freezed == desFacet
          ? _value.desFacet
          : desFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orgFacet: freezed == orgFacet
          ? _value.orgFacet
          : orgFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      perFacet: freezed == perFacet
          ? _value.perFacet
          : perFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      geoFacet: freezed == geoFacet
          ? _value.geoFacet
          : geoFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      etaId: freezed == etaId
          ? _value.etaId
          : etaId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? uri,
      String? url,
      int? assetId,
      String? source,
      @JsonKey(name: 'published_date') DateTime? publishedDate,
      DateTime? updated,
      String? section,
      String? subsection,
      String? nytdsection,
      String? adxKeywords,
      String? byline,
      String? type,
      String? title,
      String? abstract,
      List<String>? desFacet,
      List<String>? orgFacet,
      List<String>? perFacet,
      List<String>? geoFacet,
      List<Media>? media,
      int? etaId});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uri = freezed,
    Object? url = freezed,
    Object? assetId = freezed,
    Object? source = freezed,
    Object? publishedDate = freezed,
    Object? updated = freezed,
    Object? section = freezed,
    Object? subsection = freezed,
    Object? nytdsection = freezed,
    Object? adxKeywords = freezed,
    Object? byline = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
    Object? desFacet = freezed,
    Object? orgFacet = freezed,
    Object? perFacet = freezed,
    Object? geoFacet = freezed,
    Object? media = freezed,
    Object? etaId = freezed,
  }) {
    return _then(_$_Result(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      subsection: freezed == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String?,
      nytdsection: freezed == nytdsection
          ? _value.nytdsection
          : nytdsection // ignore: cast_nullable_to_non_nullable
              as String?,
      adxKeywords: freezed == adxKeywords
          ? _value.adxKeywords
          : adxKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      desFacet: freezed == desFacet
          ? _value._desFacet
          : desFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orgFacet: freezed == orgFacet
          ? _value._orgFacet
          : orgFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      perFacet: freezed == perFacet
          ? _value._perFacet
          : perFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      geoFacet: freezed == geoFacet
          ? _value._geoFacet
          : geoFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      etaId: freezed == etaId
          ? _value.etaId
          : etaId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result extends _Result {
  const _$_Result(
      {required this.id,
      this.uri,
      this.url,
      this.assetId,
      this.source,
      @JsonKey(name: 'published_date') this.publishedDate,
      this.updated,
      this.section,
      this.subsection,
      this.nytdsection,
      this.adxKeywords,
      this.byline,
      this.type,
      this.title,
      this.abstract,
      final List<String>? desFacet,
      final List<String>? orgFacet,
      final List<String>? perFacet,
      final List<String>? geoFacet,
      final List<Media>? media,
      this.etaId})
      : _desFacet = desFacet,
        _orgFacet = orgFacet,
        _perFacet = perFacet,
        _geoFacet = geoFacet,
        _media = media,
        super._();

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int id;
  @override
  final String? uri;
  @override
  final String? url;
  @override
  final int? assetId;
  @override
  final String? source;
  @override
  @JsonKey(name: 'published_date')
  final DateTime? publishedDate;
  @override
  final DateTime? updated;
  @override
  final String? section;
  @override
  final String? subsection;
  @override
  final String? nytdsection;
  @override
  final String? adxKeywords;
  @override
  final String? byline;
  @override
  final String? type;
  @override
  final String? title;
  @override
  final String? abstract;
  final List<String>? _desFacet;
  @override
  List<String>? get desFacet {
    final value = _desFacet;
    if (value == null) return null;
    if (_desFacet is EqualUnmodifiableListView) return _desFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _orgFacet;
  @override
  List<String>? get orgFacet {
    final value = _orgFacet;
    if (value == null) return null;
    if (_orgFacet is EqualUnmodifiableListView) return _orgFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _perFacet;
  @override
  List<String>? get perFacet {
    final value = _perFacet;
    if (value == null) return null;
    if (_perFacet is EqualUnmodifiableListView) return _perFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _geoFacet;
  @override
  List<String>? get geoFacet {
    final value = _geoFacet;
    if (value == null) return null;
    if (_geoFacet is EqualUnmodifiableListView) return _geoFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Media>? _media;
  @override
  List<Media>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? etaId;

  @override
  String toString() {
    return 'Result(id: $id, uri: $uri, url: $url, assetId: $assetId, source: $source, publishedDate: $publishedDate, updated: $updated, section: $section, subsection: $subsection, nytdsection: $nytdsection, adxKeywords: $adxKeywords, byline: $byline, type: $type, title: $title, abstract: $abstract, desFacet: $desFacet, orgFacet: $orgFacet, perFacet: $perFacet, geoFacet: $geoFacet, media: $media, etaId: $etaId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.assetId, assetId) || other.assetId == assetId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.subsection, subsection) ||
                other.subsection == subsection) &&
            (identical(other.nytdsection, nytdsection) ||
                other.nytdsection == nytdsection) &&
            (identical(other.adxKeywords, adxKeywords) ||
                other.adxKeywords == adxKeywords) &&
            (identical(other.byline, byline) || other.byline == byline) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            const DeepCollectionEquality().equals(other._desFacet, _desFacet) &&
            const DeepCollectionEquality().equals(other._orgFacet, _orgFacet) &&
            const DeepCollectionEquality().equals(other._perFacet, _perFacet) &&
            const DeepCollectionEquality().equals(other._geoFacet, _geoFacet) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.etaId, etaId) || other.etaId == etaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uri,
        url,
        assetId,
        source,
        publishedDate,
        updated,
        section,
        subsection,
        nytdsection,
        adxKeywords,
        byline,
        type,
        title,
        abstract,
        const DeepCollectionEquality().hash(_desFacet),
        const DeepCollectionEquality().hash(_orgFacet),
        const DeepCollectionEquality().hash(_perFacet),
        const DeepCollectionEquality().hash(_geoFacet),
        const DeepCollectionEquality().hash(_media),
        etaId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result extends Article {
  const factory _Result(
      {required final int id,
      final String? uri,
      final String? url,
      final int? assetId,
      final String? source,
      @JsonKey(name: 'published_date') final DateTime? publishedDate,
      final DateTime? updated,
      final String? section,
      final String? subsection,
      final String? nytdsection,
      final String? adxKeywords,
      final String? byline,
      final String? type,
      final String? title,
      final String? abstract,
      final List<String>? desFacet,
      final List<String>? orgFacet,
      final List<String>? perFacet,
      final List<String>? geoFacet,
      final List<Media>? media,
      final int? etaId}) = _$_Result;
  const _Result._() : super._();

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int get id;
  @override
  String? get uri;
  @override
  String? get url;
  @override
  int? get assetId;
  @override
  String? get source;
  @override
  @JsonKey(name: 'published_date')
  DateTime? get publishedDate;
  @override
  DateTime? get updated;
  @override
  String? get section;
  @override
  String? get subsection;
  @override
  String? get nytdsection;
  @override
  String? get adxKeywords;
  @override
  String? get byline;
  @override
  String? get type;
  @override
  String? get title;
  @override
  String? get abstract;
  @override
  List<String>? get desFacet;
  @override
  List<String>? get orgFacet;
  @override
  List<String>? get perFacet;
  @override
  List<String>? get geoFacet;
  @override
  List<Media>? get media;
  @override
  int? get etaId;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  String? get type => throw _privateConstructorUsedError;
  String? get subtype => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  int? get approvedForSyndication => throw _privateConstructorUsedError;
  @JsonKey(name: 'media-metadata')
  List<MediaMetaData> get mediaMetadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {String? type,
      String? subtype,
      String? caption,
      String? copyright,
      int? approvedForSyndication,
      @JsonKey(name: 'media-metadata') List<MediaMetaData> mediaMetadata});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? subtype = freezed,
    Object? caption = freezed,
    Object? copyright = freezed,
    Object? approvedForSyndication = freezed,
    Object? mediaMetadata = null,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedForSyndication: freezed == approvedForSyndication
          ? _value.approvedForSyndication
          : approvedForSyndication // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaMetadata: null == mediaMetadata
          ? _value.mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as List<MediaMetaData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? subtype,
      String? caption,
      String? copyright,
      int? approvedForSyndication,
      @JsonKey(name: 'media-metadata') List<MediaMetaData> mediaMetadata});
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? subtype = freezed,
    Object? caption = freezed,
    Object? copyright = freezed,
    Object? approvedForSyndication = freezed,
    Object? mediaMetadata = null,
  }) {
    return _then(_$_Media(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedForSyndication: freezed == approvedForSyndication
          ? _value.approvedForSyndication
          : approvedForSyndication // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaMetadata: null == mediaMetadata
          ? _value._mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as List<MediaMetaData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media extends _Media {
  const _$_Media(
      {this.type,
      this.subtype,
      this.caption,
      this.copyright,
      this.approvedForSyndication,
      @JsonKey(name: 'media-metadata')
          final List<MediaMetaData> mediaMetadata = const []})
      : _mediaMetadata = mediaMetadata,
        super._();

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  final String? type;
  @override
  final String? subtype;
  @override
  final String? caption;
  @override
  final String? copyright;
  @override
  final int? approvedForSyndication;
  final List<MediaMetaData> _mediaMetadata;
  @override
  @JsonKey(name: 'media-metadata')
  List<MediaMetaData> get mediaMetadata {
    if (_mediaMetadata is EqualUnmodifiableListView) return _mediaMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaMetadata);
  }

  @override
  String toString() {
    return 'Media(type: $type, subtype: $subtype, caption: $caption, copyright: $copyright, approvedForSyndication: $approvedForSyndication, mediaMetadata: $mediaMetadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.approvedForSyndication, approvedForSyndication) ||
                other.approvedForSyndication == approvedForSyndication) &&
            const DeepCollectionEquality()
                .equals(other._mediaMetadata, _mediaMetadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      subtype,
      caption,
      copyright,
      approvedForSyndication,
      const DeepCollectionEquality().hash(_mediaMetadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(
      this,
    );
  }
}

abstract class _Media extends Media {
  const factory _Media(
      {final String? type,
      final String? subtype,
      final String? caption,
      final String? copyright,
      final int? approvedForSyndication,
      @JsonKey(name: 'media-metadata')
          final List<MediaMetaData> mediaMetadata}) = _$_Media;
  const _Media._() : super._();

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  String? get type;
  @override
  String? get subtype;
  @override
  String? get caption;
  @override
  String? get copyright;
  @override
  int? get approvedForSyndication;
  @override
  @JsonKey(name: 'media-metadata')
  List<MediaMetaData> get mediaMetadata;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaMetaData _$MediaMetaDataFromJson(Map<String, dynamic> json) {
  return _MediaMetaData.fromJson(json);
}

/// @nodoc
mixin _$MediaMetaData {
  String? get url => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaMetaDataCopyWith<MediaMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetaDataCopyWith<$Res> {
  factory $MediaMetaDataCopyWith(
          MediaMetaData value, $Res Function(MediaMetaData) then) =
      _$MediaMetaDataCopyWithImpl<$Res, MediaMetaData>;
  @useResult
  $Res call({String? url, String? format, int? height, int? width});
}

/// @nodoc
class _$MediaMetaDataCopyWithImpl<$Res, $Val extends MediaMetaData>
    implements $MediaMetaDataCopyWith<$Res> {
  _$MediaMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? format = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaMetaDataCopyWith<$Res>
    implements $MediaMetaDataCopyWith<$Res> {
  factory _$$_MediaMetaDataCopyWith(
          _$_MediaMetaData value, $Res Function(_$_MediaMetaData) then) =
      __$$_MediaMetaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? format, int? height, int? width});
}

/// @nodoc
class __$$_MediaMetaDataCopyWithImpl<$Res>
    extends _$MediaMetaDataCopyWithImpl<$Res, _$_MediaMetaData>
    implements _$$_MediaMetaDataCopyWith<$Res> {
  __$$_MediaMetaDataCopyWithImpl(
      _$_MediaMetaData _value, $Res Function(_$_MediaMetaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? format = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_MediaMetaData(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaMetaData extends _MediaMetaData {
  const _$_MediaMetaData({this.url, this.format, this.height, this.width})
      : super._();

  factory _$_MediaMetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MediaMetaDataFromJson(json);

  @override
  final String? url;
  @override
  final String? format;
  @override
  final int? height;
  @override
  final int? width;

  @override
  String toString() {
    return 'MediaMetaData(url: $url, format: $format, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaMetaData &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, format, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaMetaDataCopyWith<_$_MediaMetaData> get copyWith =>
      __$$_MediaMetaDataCopyWithImpl<_$_MediaMetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaMetaDataToJson(
      this,
    );
  }
}

abstract class _MediaMetaData extends MediaMetaData {
  const factory _MediaMetaData(
      {final String? url,
      final String? format,
      final int? height,
      final int? width}) = _$_MediaMetaData;
  const _MediaMetaData._() : super._();

  factory _MediaMetaData.fromJson(Map<String, dynamic> json) =
      _$_MediaMetaData.fromJson;

  @override
  String? get url;
  @override
  String? get format;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_MediaMetaDataCopyWith<_$_MediaMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}
