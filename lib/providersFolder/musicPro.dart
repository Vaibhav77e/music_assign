import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPro extends ChangeNotifier {
  AudioPlayer? _player;
  bool isplaying = false;
  bool audioplayed = false;
  AudioPlayer audioPlayer = AudioPlayer();
  bool isSelect = true;

  // @override
  // void dispose() {
  //   _player?.dispose();
  //   super.dispose();
  // }

  void play() {
    // _player?.dispose();
    final player = _player = AudioPlayer();
    player.play(AssetSource('song1.mp3'));
  }

  void play2() {
    // _player?.dispose();
    final player = _player = AudioPlayer();
    player.play(AssetSource('song2.mp3'));
  }

  void play3() {
    // _player?.dispose();
    final player = _player = AudioPlayer();
    player.play(AssetSource('song4.mp3'));
  }

  void pause() {
    _player!.pause();
    isSelect = !isSelect;
    notifyListeners();
  }
}
