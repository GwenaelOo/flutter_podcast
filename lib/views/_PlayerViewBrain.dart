class PlayerViewBrain {
  String trackThumbnail =
      "https://www.cervelledoiseau.fr/wp-content/uploads/2018/11/RF_OMM_0000019837_ITE.jpg";
  String subtitle =
      "Aujourd'hui dans Affaires Sensibles retour sur l’adhésion du Royaume-Uni à la CEE, une histoire compliquée et mouvementée qui perdure. Vous avez dit Brexit ? Invité notre confrère Anthony Bellanger éditorialiste international à France Inter.";
  String trackTitle =
      "Le patient anglais - Quand le Royaume-Uni voulait être européen";
  String duration = "00:55:06";
  String date = "31 JANV. 2020";

  String authorThumbnail =
      "https://socialpro.miguelvasquez.net/public/avatar/large_johndoe_18gu2qv.jpg";

  String authorName = "John Doe";

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

  getAuthorThumbnail() {
    return authorThumbnail;
  }

  getTrackTitle() {
    return trackTitle;
  }

  getAuthorName() {
    return authorName;
  }
}
