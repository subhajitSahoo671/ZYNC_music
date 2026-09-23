
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:zync_music/domain/usecases/song/get_news_songs.dart';
// import 'package:zync_music/presentation/home/bloc/news_songs_state.dart';
// import 'package:zync_music/service_locator.dart';

// class NewsSongsCubit extends Cubit<NewsSongsState> {
  
//   //NewsSongsCubit(super.initialState);
//   NewsSongsCubit() : super(NewsSongsLoading());

//   Future<void> getNewsSongs() async {
//     var  returnedSongs = await sl<GetNewsSongsUsecase>().call();

//     if (isClosed) return;

//     return returnedSongs.fold(
//       (failure) {
//         emit(NewsSongsLoadFailure());
        
//       },
//       (songs) {
//         emit(NewsSongsLoaded(songs: songs));
//       },
//     );
//   }
// }