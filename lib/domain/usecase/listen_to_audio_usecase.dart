import 'package:little_guardian/domain/repository/webrtc_connection_repository_impl.dart';

class ListenToAudioUseCase {
  final WebRTCConnectionRepository _repository;

  ListenToAudioUseCase(this._repository);

  Future<void> execute(String sessionId, bool isParent) async {
    if (isParent) {
      await _repository.createOffer(sessionId);
    } else {
      await _repository.createAnswer(sessionId);
    }
  }
}
