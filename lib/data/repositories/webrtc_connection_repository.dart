import 'package:flutter_webrtc/flutter_webrtc.dart';

abstract class WebRTCConnectionRepository {
  Future<void> createOffer(String sessionId);
  Future<void> setRemoteDescription(String sessionId);
  Future<void> addIceCandidate(String sessionId, RTCIceCandidate candidate);
  Stream<List<RTCIceCandidate>> listenToIceCandidates(String sessionId);
}
