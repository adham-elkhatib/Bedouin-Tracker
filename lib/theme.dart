import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff855318),
      surfaceTint: Color(0xff855318),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdcbe),
      onPrimaryContainer: Color(0xff693c00),
      secondary: Color(0xff8f4b39),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbd2),
      onSecondaryContainer: Color(0xff723524),
      tertiary: Color(0xff445e91),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd8e2ff),
      onTertiaryContainer: Color(0xff2b4678),
      error: Color(0xff904a49),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad8),
      onErrorContainer: Color(0xff733333),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff4f4539),
      outline: Color(0xff817567),
      outlineVariant: Color(0xffd3c4b4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xfffdb975),
      primaryFixed: Color(0xffffdcbe),
      onPrimaryFixed: Color(0xff2c1600),
      primaryFixedDim: Color(0xfffdb975),
      onPrimaryFixedVariant: Color(0xff693c00),
      secondaryFixed: Color(0xffffdbd2),
      onSecondaryFixed: Color(0xff3a0a01),
      secondaryFixedDim: Color(0xffffb4a1),
      onSecondaryFixedVariant: Color(0xff723524),
      tertiaryFixed: Color(0xffd8e2ff),
      onTertiaryFixed: Color(0xff001a41),
      tertiaryFixedDim: Color(0xffadc6ff),
      onTertiaryFixedVariant: Color(0xff2b4678),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe5e8ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff522d00),
      surfaceTint: Color(0xff855318),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff976126),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5d2515),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa15946),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff183566),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff536da1),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5e2324),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffa15857),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff0d1215),
      onSurfaceVariant: Color(0xff3e3529),
      outline: Color(0xff5b5144),
      outlineVariant: Color(0xff776b5e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xfffdb975),
      primaryFixed: Color(0xff976126),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff7a490e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa15946),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff844231),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff536da1),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3a5487),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc3c7cb),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffe5e8ed),
      surfaceContainerHigh: Color(0xffdadde2),
      surfaceContainerHighest: Color(0xffced2d7),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff442500),
      surfaceTint: Color(0xff855318),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6c3e02),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff501b0c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff753726),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff0a2b5b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2e487a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff51191a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff763535),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff332b20),
      outlineVariant: Color(0xff51483b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xfffdb975),
      primaryFixed: Color(0xff6c3e02),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4d2a00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff753726),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff592112),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff2e487a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff143162),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb5b9be),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeef1f6),
      surfaceContainer: Color(0xffdfe3e7),
      surfaceContainerHigh: Color(0xffd1d5d9),
      surfaceContainerHighest: Color(0xffc3c7cb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffdb975),
      surfaceTint: Color(0xfffdb975),
      onPrimary: Color(0xff4a2800),
      primaryContainer: Color(0xff693c00),
      onPrimaryContainer: Color(0xffffdcbe),
      secondary: Color(0xffffb4a1),
      onSecondary: Color(0xff561f10),
      secondaryContainer: Color(0xff723524),
      onSecondaryContainer: Color(0xffffdbd2),
      tertiary: Color(0xffadc6ff),
      onTertiary: Color(0xff112f60),
      tertiaryContainer: Color(0xff2b4678),
      onTertiaryContainer: Color(0xffd8e2ff),
      error: Color(0xffffb3b1),
      onError: Color(0xff571d1e),
      errorContainer: Color(0xff733333),
      onErrorContainer: Color(0xffffdad8),
      surface: Color(0xff101417),
      onSurface: Color(0xffdfe3e7),
      onSurfaceVariant: Color(0xffd3c4b4),
      outline: Color(0xff9b8f80),
      outlineVariant: Color(0xff4f4539),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inversePrimary: Color(0xff855318),
      primaryFixed: Color(0xffffdcbe),
      onPrimaryFixed: Color(0xff2c1600),
      primaryFixedDim: Color(0xfffdb975),
      onPrimaryFixedVariant: Color(0xff693c00),
      secondaryFixed: Color(0xffffdbd2),
      onSecondaryFixed: Color(0xff3a0a01),
      secondaryFixedDim: Color(0xffffb4a1),
      onSecondaryFixedVariant: Color(0xff723524),
      tertiaryFixed: Color(0xffd8e2ff),
      onTertiaryFixed: Color(0xff001a41),
      tertiaryFixedDim: Color(0xffadc6ff),
      onTertiaryFixedVariant: Color(0xff2b4678),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff353a3e),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd5ae),
      surfaceTint: Color(0xfffdb975),
      onPrimary: Color(0xff3b1f00),
      primaryContainer: Color(0xffc08446),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd2c7),
      onSecondary: Color(0xff481507),
      secondaryContainer: Color(0xffcb7c67),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffcfdcff),
      onTertiary: Color(0xff012454),
      tertiaryContainer: Color(0xff7790c7),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2d0),
      onError: Color(0xff481314),
      errorContainer: Color(0xffcb7a79),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101417),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe9dac9),
      outline: Color(0xffbeb0a0),
      outlineVariant: Color(0xff9b8e80),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inversePrimary: Color(0xff6b3d01),
      primaryFixed: Color(0xffffdcbe),
      onPrimaryFixed: Color(0xff1e0d00),
      primaryFixedDim: Color(0xfffdb975),
      onPrimaryFixedVariant: Color(0xff522d00),
      secondaryFixed: Color(0xffffdbd2),
      onSecondaryFixed: Color(0xff290400),
      secondaryFixedDim: Color(0xffffb4a1),
      onSecondaryFixedVariant: Color(0xff5d2515),
      tertiaryFixed: Color(0xffd8e2ff),
      onTertiaryFixed: Color(0xff00102e),
      tertiaryFixedDim: Color(0xffadc6ff),
      onTertiaryFixedVariant: Color(0xff183566),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff414549),
      surfaceContainerLowest: Color(0xff05080b),
      surfaceContainerLow: Color(0xff1a1e22),
      surfaceContainer: Color(0xff24282c),
      surfaceContainerHigh: Color(0xff2f3337),
      surfaceContainerHighest: Color(0xff3a3e42),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffeddf),
      surfaceTint: Color(0xfffdb975),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfff8b572),
      onPrimaryContainer: Color(0xff150800),
      secondary: Color(0xffffece7),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffaf9a),
      onSecondaryContainer: Color(0xff1f0200),
      tertiary: Color(0xffecefff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa9c2fc),
      onTertiaryContainer: Color(0xff000a22),
      error: Color(0xffffecea),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffadab),
      onErrorContainer: Color(0xff220002),
      surface: Color(0xff101417),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfffdeedc),
      outlineVariant: Color(0xffcfc0b0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inversePrimary: Color(0xff6b3d01),
      primaryFixed: Color(0xffffdcbe),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xfffdb975),
      onPrimaryFixedVariant: Color(0xff1e0d00),
      secondaryFixed: Color(0xffffdbd2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb4a1),
      onSecondaryFixedVariant: Color(0xff290400),
      tertiaryFixed: Color(0xffd8e2ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffadc6ff),
      onTertiaryFixedVariant: Color(0xff00102e),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff4c5055),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1c2024),
      surfaceContainer: Color(0xff2d3135),
      surfaceContainerHigh: Color(0xff383c40),
      surfaceContainerHighest: Color(0xff43474b),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
