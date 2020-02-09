import "package:audioplayers/audioplayers.dart";

class SessionAudioPlayer {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isTrackPlaying = false;
  bool resumeMode = false;

  getIsTrackPlaying() {
    return isTrackPlaying;
  }

  setTrackPlaying() {
    isTrackPlaying = !isTrackPlaying;
    return isTrackPlaying;
  }

  playTrack(trackUrl) async {
    if (resumeMode) {
      await audioPlayer.resume();
    } else {
      int result = await audioPlayer.play(trackUrl);
      if (result == 1) {
        resumeMode = true;
      }
    }
  }

  pauseTrack() async {
    int result = await audioPlayer.pause();
    if (result == 1) {
      // success
    }
  }
}
