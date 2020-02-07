class PlayerViewBrain {
  String trackThumbnail =
      "https://www.cervelledoiseau.fr/wp-content/uploads/2018/11/RF_OMM_0000019837_ITE.jpg";
  String subtitle =
      "Aujourd'hui dans Affaires Sensibles retour sur l’adhésion du Royaume-Uni à la CEE, une histoire compliquée et mouvementée qui perdure. Vous avez dit Brexit ? Invité notre confrère Anthony Bellanger éditorialiste international à France Inter.";
  String trackTitle =
      "Le patient anglais - Quand le Royaume-Uni voulait être européen";
  String duration = "00:55:06";
  String date = "31 JANV. 2020";

  bool isTrackPlaying = false;

  // Does the track is playing

  getIsTrackPlaying() {
    return isTrackPlaying;
  }

  setTrackPlaying() {
    isTrackPlaying = !isTrackPlaying;
    return isTrackPlaying;
  }

  // Thumbnail management

  getTrackThumbnail() {
    return trackThumbnail;
  }

  getTrackTitle() {
    return trackTitle;
  }
}
