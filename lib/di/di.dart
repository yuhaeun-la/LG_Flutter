import 'package:get_it/get_it.dart';
import 'package:little_guardian/data/datasources/webrtc_service.dart';
import 'package:little_guardian/domain/usecase/listen_to_audio_usecase.dart';
import '../viewmodels/sound_listening_viewmodel.dart';
import '../data/repositories/webrtc_connection_repository_impl.dart';
import '../data/datasources/firebase_manager.dart';

final getIt = GetIt.instance;

void setupDI() {
  // Data Sources 등록
  getIt.registerLazySingleton<FirebaseManager>(() => FirebaseManager());

  // Services 등록
  getIt.registerLazySingleton<WebRTCService>(() => WebRTCService());

  // Repository 등록
  getIt.registerLazySingleton<WebRTCConnectionRepositoryImpl>(
        () => WebRTCConnectionRepositoryImpl(
      getIt<FirebaseManager>(),
    ),
  );

  // UseCase 등록
  getIt.registerLazySingleton<ListenToAudioUseCase>(
        () => ListenToAudioUseCase(getIt<WebRTCConnectionRepositoryImpl>()),
  );

  // ViewModel 등록
  getIt.registerFactory<SoundListeningViewModel>(
        () => SoundListeningViewModel(getIt<ListenToAudioUseCase>()),
  );
}
