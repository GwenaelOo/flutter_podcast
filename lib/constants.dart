import "package:flutter/material.dart";

// HOME

// Discover

// Carrousel
const double kCarrouselSpacing = 10.0;
const double kCarrouselPadding = 20.0;
const double kCarrouselBorderRadius = 30.0;
const double kCarrouselBackgroundOpacity = 0.3;

const TextStyle kCarrouselTitle = TextStyle(
  fontSize: 36.0,
  fontWeight: FontWeight.bold,
  shadows: [
    Shadow(
      blurRadius: 2.0,
      color: Colors.black,
      offset: Offset(2.0, 1.0),
    ),
  ],
);
const TextStyle kCarrouselSubTitle = TextStyle(
  fontSize: 16.0,
  shadows: [
    Shadow(
      blurRadius: 2.0,
      color: Colors.black,
      offset: Offset(2.0, 1.0),
    ),
  ],
);
