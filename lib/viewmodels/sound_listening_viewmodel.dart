import 'package:flutter/material.dart';
import 'package:little_guardian/domain/usecase/listen_to_audio_usecase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SoundListeningViewModel extends ChangeNotifier {
  final ListenToAudioUseCase _listenToAudioUseCase;

  SoundListeningViewModel(this._listenToAudioUseCase);

  bool _isListening = false;
  bool get isListening => _isListening;

  String _sessionId = '';
  bool _isParent = true;
  bool get isParent => _isParent;

  Future<void> initializeSession() async {
    final sessionDoc = await FirebaseFirestore.instance.collection('sessions').add({
      'createdAt': FieldValue.serverTimestamp(),
      'isActive': true,
    });
    _sessionId = sessionDoc.id;
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

  void setRole(bool isParent) {
    _isParent = isParent;
    notifyListeners();

    FirebaseFirestore.instance.collection('sessions').doc(_sessionId).update({
      'role': _isParent ? 'parent' : 'child',
    });
  }

  Future<void> stopListening() async {
    _isListening = false;
    notifyListeners();

    await FirebaseFirestore.instance.collection('sessions').doc(_sessionId).update({
      'isActive': false,
    });
  }
}
