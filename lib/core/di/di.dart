// import 'package:get_it/get_it.dart';
//
// final getIt = GetIt.instance;
//
// void setupDI() {
//   // FirebaseManager 등록
//   getIt.registerLazySingleton<FirebaseManager>(() => FirebaseManager());
//
//   // SessionManager 등록, FirebaseManager 의존성 주입
//   getIt.registerLazySingleton<SessionManager>(
//         () => SessionManager(getIt<FirebaseManager>()),
//   );
//
//   // ViewModel 등록
//   getIt.registerFactory<SoundListeningViewModel>(
//         () => SoundListeningViewModel(getIt<SessionManager>()),
//   );
//   getIt.registerFactory<PairingViewModel>(
//         () => PairingViewModel(getIt<FirebaseManager>()),
//   );
// }
