
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zync_music/domain/usecases/song/get_news_songs.dart';
import 'package:zync_music/domain/usecases/song/get_underground_hits.dart';
import 'package:zync_music/domain/usecases/song/get_trending_songs.dart';
// import 'package:zync_music/domain/usecases/song/get_trending_songs.dart';
import 'package:zync_music/domain/usecases/song/get_popular_album_week.dart';
import 'package:zync_music/domain/usecases/song/get_trending_month_playlist.dart';
import 'package:zync_music/presentation/home/bloc/play_list_state.dart';
// import 'package:zync_music/presentation/home/bloc/trending_songs_state.dart';
import 'package:zync_music/service_locator.dart';

class PlayListCubit extends Cubit<PlayListState> {
  
  //PlayListCubit(super.initialState);
  PlayListCubit() : super(PlayListLoading());

   Future<void> getNewsSongs() async {
    var  returnedSongs = await sl<GetNewsSongsUsecase>().call();

    if (isClosed) return;

    return returnedSongs.fold(
      (failure) {
        emit(PlayListLoadFailure());
        
      },
      (songs) {
        emit(PlayListLoaded(songs: songs));
      },
    );
  }

  Future<void> getTrendingSongs() async {
    var  returnedSongs = await sl<GetTrendingSongsUsecase>().call();

    if (isClosed) return;

    return returnedSongs.fold(
      (failure) {
        emit(PlayListLoadFailure());
        
      },
      (songs) {
        emit(PlayListLoaded(songs: songs));
      },
    );
  }

  Future<void> getUndergroundHits() async {
    var  returnedSongs = await sl<GetUndergroundHitsUsecase>().call();

    if (isClosed) return;

    return returnedSongs.fold(
      (failure) {
        emit(PlayListLoadFailure());
        
      },
      (songs) {
        emit(PlayListLoaded(songs: songs));
      },
    );
  }

  Future<void> getTrendingOfTheMonthPlaylist() async {
    var  returnedPlaylist = await sl<GetTrendingMonthPlaylistUsecase>().call();

    if (isClosed) return;

    return returnedPlaylist.fold(
      (failure) {
        emit(PlayListLoadFailure());
        
      },
      (playlist) {
        emit(ListOfPlayListLoaded(playlist: playlist));
      },
    );
  }

  Future<void> getPopularAlbumOfTheWeek() async {
    var  returnedAlbums = await sl<GetPopularAlbumWeekUsecase>().call();

    if (isClosed) return;

    return returnedAlbums.fold(
      (failure) {
        emit(PlayListLoadFailure());
        
      },
      (albums) {
        emit(ListOfPlayListLoaded(playlist: albums));
      },
    );
  }
}