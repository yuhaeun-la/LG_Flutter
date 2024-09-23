// import '../data/datasources/firebase_manager.dart';
//
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
//     ),
//   );
//
//   // UseCase 등록
//   getIt.registerLazySingleton<SetupPairingUseCase>(
//         () => SetupPairingUseCase(getIt<WebRTCConnectionRepository>()),
//   );
//
//   // ViewModel 등록
//   getIt.registerFactory<PairingViewModel>(
//         () => PairingViewModel(getIt<SetupPairingUseCase>()),
//   );
// }
