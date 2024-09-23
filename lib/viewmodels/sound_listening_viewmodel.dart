import 'package:flutter/material.dart';
import 'package:little_guardian/domain/usecase/listen_to_audio_usecase.dart';

class SoundListeningViewModel extends ChangeNotifier {
  final ListenToAudioUseCase _listenToAudioUseCase;

  SoundListeningViewModel(this._listenToAudioUseCase);

  bool _isListening = false;
  bool get isListening => _isListening;

  // 페어링 안 시키기 위해
  String _sessionId = "hardcodedSessionId"; // 세션 ID 하드코딩
  bool _isParent = true; // true: 부모, false: 자녀
  bool get isParent => _isParent;

  void setRole(bool isParent) {
    _isParent = isParent;
    notifyListeners();
  }

  Future<void> startListening() async {
    try {
      _isListening = true;
      notifyListeners();

      await _listenToAudioUseCase.execute(_sessionId, _isParent);

      _isListening = false;
      notifyListeners();
    } catch (e) {
      _isListening = false;
      notifyListeners();
      throw e;
    }
  }
}
