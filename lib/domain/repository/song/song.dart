import 'package:audio_service/audio_service.dart';
import 'package:dartz/dartz.dart';

abstract class SongRepository {

  Future<Either> getNewsSongs();

  Future<Either> getTrendingSongs();

  Future<Either> getUndergroundHits();

  Future<Either> getTrendingsInMonth();

  Future<Either> getPopularAlbumOfWeek();

  Future<Either> addOrRemoveFavoriteSongs(MediaItem songEntity);

  Future<bool> isFavoriteSong(String songId);

  Future<Either> getUserFavoriteSongs();

}