import 'package:equatable/equatable.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final num? averageRating;
  final int? ratingsCount;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.averageRating,
    this.ratingsCount,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromModel(Map<String, dynamic> json) => VolumeInfo(
        title: json['title'] as String?,
        authors: (json['authors'] as  List<dynamic>?)?.cast<String>(),
        publisher: json['publisher'] as String?,
        publishedDate: json['publishedDate'] as String?,
        description: json['description'] as String?,
        averageRating: json['averageRating'],
        ratingsCount: json['ratingsCount'] as int?,
        industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
            ?.map(
                (e) => IndustryIdentifier.fromModel(e as Map<String, dynamic>))
            .toList(),
        readingModes: json['readingModes'] == null
            ? null
            : ReadingModes.fromModel(
                json['readingModes'] as Map<String, dynamic>),
        pageCount: json['pageCount'] as int?,
        printType: json['printType'] as String?,
        categories: (json['categories'] as List<dynamic>?)?.cast<String>(),
        maturityRating: json['maturityRating'] as String?,
        allowAnonLogging: json['allowAnonLogging'] as bool?,
        contentVersion: json['contentVersion'] as String?,
        panelizationSummary: json['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromModel(
                json['panelizationSummary'] as Map<String, dynamic>),
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromModel(json['imageLinks'] as Map<String, dynamic>),
        language: json['language'] as String?,
        previewLink: json['previewLink'] as String?,
        infoLink: json['infoLink'] as String?,
        canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
      );

  Map<String, dynamic> toModel() => {
        'title': title,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'averageRating': averageRating,
        'ratingsCount': ratingsCount,
        'industryIdentifiers':
            industryIdentifiers?.map((e) => e.toModel()).toList(),
        'readingModes': readingModes?.toModel(),
        'pageCount': pageCount,
        'printType': printType,
        'categories': categories,
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary?.toModel(),
        'imageLinks': imageLinks?.toModel(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
      };

  @override
  List<Object?> get props {
    return [
      title,
      authors,
      publisher,
      publishedDate,
      description,
      industryIdentifiers,
      readingModes,
      averageRating,
      ratingsCount,
      pageCount,
      printType,
      categories,
      maturityRating,
      allowAnonLogging,
      contentVersion,
      panelizationSummary,
      imageLinks,
      language,
      previewLink,
      infoLink,
      canonicalVolumeLink,
    ];
  }
}
