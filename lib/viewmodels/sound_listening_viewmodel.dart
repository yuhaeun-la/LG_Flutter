import 'package:flutter/material.dart';
import 'package:little_guardian/domain/usecase/listen_to_audio_usecase.dart';

class SoundListeningViewModel extends ChangeNotifier {
  final ListenToAudioUseCase _listenToAudioUseCase;

  SoundListeningViewModel(this._listenToAudioUseCase);

  bool _isListening = false;
  bool get isListening => _isListening;

  void toggleListening() {
    _isListening = !_isListening;
    notifyListeners();

    if (_isListening) {
      startListening();
    }
  }

  Future<void> startListening() async {
    try {
      await _listenToAudioUseCase.execute(_sessionId, _isParent);
      _isListening = false;
      notifyListeners();
    } catch (e) {
      _isListening = false;
      notifyListeners();
      throw e;
    }
  }

  // 역할 변경을 위한 메서드 추가
  bool _isParent = true;
  String _sessionId = "hardcodedSessionId";

  void setRole(bool isParent) {
    _isParent = isParent;
    notifyListeners();
  }
}
