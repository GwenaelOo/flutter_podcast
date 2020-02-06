class PlayerViewBrain {
  String activeTrack;
  bool isTrackPlaying = true;

  getIsTrackPlaying() {
    return isTrackPlaying;
  }

  setTrackPlaying() {
    print("update");
    isTrackPlaying = false;
    return isTrackPlaying;
  }
}
