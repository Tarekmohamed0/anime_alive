// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeModel _$AnimeModelFromJson(Map<String, dynamic> json) => AnimeModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  rating: (json['rating'] as num).toDouble(),
  imageUrl: json['imageUrl'] as String,
  announcement: json['announcement'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$AnimeModelToJson(AnimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'rating': instance.rating,
      'imageUrl': instance.imageUrl,
      'announcement': instance.announcement,
      'description': instance.description,
    };
