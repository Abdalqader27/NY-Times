import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'article_model.freezed.dart';

part 'article_model.g.dart';

@freezed
class ArticleModel with _$ArticleModel {
  const ArticleModel._();

  const factory ArticleModel({
    required String status,
    required String copyright,
    @Default(0) num numResults,
    required List<Article> results,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}

@freezed
class Article with _$Result {
  const Article._();

  const factory Article({
    required int id,
    String? uri,
    String? url,
    int? assetId,
    String? source,
  @JsonKey(name: 'published_date')  DateTime? publishedDate,
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
    int? etaId,
  }) = _Result;

  factory Article.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  String? get formattedPublishedDate {
    if (publishedDate == null) return null;
    return DateFormat.yMMMMd().format(DateTime.parse(publishedDate.toString()));
  }
}

@freezed
class Media with _$Media {
  const Media._();

  const factory Media({
    String? type,
    String? subtype,
    String? caption,
    String? copyright,
    int? approvedForSyndication,
  @Default([]) @JsonKey(name:'media-metadata') List<MediaMetaData>mediaMetadata,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
class MediaMetaData with _$MediaMetaData {

  const MediaMetaData._();
  const factory MediaMetaData({
    String? url,
    String? format,
    int? height,
    int? width,
  }) = _MediaMetaData;

  factory MediaMetaData.fromJson(Map<String, dynamic> json) =>
      _$MediaMetaDataFromJson(json);
}