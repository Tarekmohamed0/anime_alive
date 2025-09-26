import 'package:json_annotation/json_annotation.dart';
part 'anime_model.g.dart';

@JsonSerializable()
class AnimeModel {
  final int id;
  final String title;
  final String subtitle;
  final double rating;
  final String imageUrl;
  final String announcement;
  final String description;

  AnimeModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.imageUrl,
    required this.announcement,
    required this.description,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeModelToJson(this);

  static List<AnimeModel> animes = [
    AnimeModel(
      id: 1,
      title: 'Detective Conan',
      subtitle: 'Mystery',
      rating: 5.0,
      imageUrl: 'assets/images/anime1.png',
      announcement: 'ANIME/AWAKENING',
      description:
          'NEW "DETECTIVE CONAN" ONE-EYED FLASHBACK" MOVIE MAIN VISUAL REVEAL THE MOVIE',
    ),
    AnimeModel(
      id: 2,
      title: 'Naruto Shippuden',
      subtitle: 'Action',
      rating: 4.5,
      imageUrl: 'assets/images/anime2.png',
      announcement: 'NARUTO/NEXT GENERATION',
      description:
          'NARUTO SHIPPUDEN FOLLOWS THE ADVENTURES OF NARUTO UZUMAKI, A YOUNG NINJA WHO SEEKS RECOGNITION FROM HIS PEERS AND DREAMS OF BECOMING THE HOKAGE, THE LEADER OF HIS VILLAGE.',
    ),
    AnimeModel(
      id: 3,
      title: 'One Piece',
      subtitle: 'Adventure',
      rating: 4.8,
      imageUrl: 'assets/images/anime3.png',
      announcement: 'ONE PIECE/VOYAGE',
      description:
          'ONE PIECE FOLLOWS THE ADVENTURES OF MONKEY D. LUFFY AND HIS PIRATE CREW IN ORDER TO FIND THE GREATEST TREASURE EVER LEFT BY THE LEGENDARY PIRATE, GOLD ROGER. THE TREASURE IS KNOWN AS "ONE PIECE."',
    ),
    AnimeModel(
      id: 4,
      title: 'Attack on Titan',
      subtitle: 'Drama',
      rating: 4.7,
      imageUrl: 'assets/images/anime3.png',
      announcement: 'ATTACK ON TITAN/FINAL SEASON',
      description:
          'ATTACK ON TITAN IS SET IN A WORLD WHERE HUMANITY LIVES INSIDE ENORMOUS WALLS TO PROTECT THEMSELVES FROM THE TITANS, GIGANTIC HUMANOID CREATURES THAT DEVOUR HUMANS.',
    ),
  ];
}
