// import 'package:get_it/get_it.dart';
// import 'package:little_guardian/data/datasources/webrtc_service.dart';
// import 'package:little_guardian/data/repositories/webrtc_connection_repository_impl.dart';
// import 'package:little_guardian/domain/repository/webrtc_connection_repository_impl.dart';
// import 'package:little_guardian/domain/usecase/listen_to_audio_usecase.dart';
// import '../data/datasources/firebase_manager.dart';
//
// final getIt = GetIt.instance;
//
// void setupDI() {
//   // Data Sources 등록
//   getIt.registerLazySingleton<FirebaseManager>(() => FirebaseManager());
//
//   // Service 등록
//   getIt.registerLazySingleton<WebRTCService>(() => WebRTCService());
//
//   // Repository 등록
//   getIt.registerLazySingleton<WebRTCConnectionRepository>(
//         () => WebRTCConnectionRepositoryImpl(
//       getIt<FirebaseManager>(),
//       getIt<WebRTCService>(),
//     ),
//   );
//
//   // UseCase 추상체 및 구현체 등록
//   getIt.registerLazySingleton<ListenToAudioUseCase>(
//         () => ListenToAudioUseCaseImpl(getIt<WebRTCConnectionRepository>()),
//   );
//
//   // ViewModel 등록
//   getIt.registerFactory<SoundListeningViewModel>(
//         () => SoundListeningViewModel(getIt<ListenToAudioUseCase>()),
//   );
// }
