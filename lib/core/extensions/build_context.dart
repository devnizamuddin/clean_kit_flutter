import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);

  /* 
   * ======================================================================================================== 
   *                                          Device Display Size   
   * ======================================================================================================== 
   */

  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;

  /* 
   * ======================================================================================================== 
   *                                              Text Style   
   * ======================================================================================================== 
   */
  TextTheme get textTheme => Theme.of(this).textTheme;

  /* 
 * Display
 * Extra large text used for prominent marketing-style content,
 * such as splash screens, onboarding banners, or promotional headings.
 */
  TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;
  TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;

  /* 
 * Headline                     
 * Large text for major sections or pages,
 * like screen titles, dashboard headings, or feature highlights.
 */
  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;

  /* 
 * Title
 * Medium-sized text used for subtitles, card headers, 
 * app bar titles, dialog titles, and section headers within a page.
 */
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  /* 
 * Label
 * Used for short, concise text in UI components like buttons, 
 * input field labels, helper text, captions, chips, and navigation items.
 */
  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;

  /* 
 * Body
 * Optimized for long-form reading content such as paragraphs,
 * descriptions, terms & conditions, and detailed explanations.
 */
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  /* 
   * ======================================================================================================== 
   *                                              Color Scheme   
   * ======================================================================================================== 
   */

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /*
   * ---> Scaffold Background Color
   */

  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;

  /* 
 * Primary Colors
 * Used for main elements like buttons, active states, and prominent components.
 */
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get primaryLightColor => Colors.purple;
  Color get primaryDarkColor => Colors.deepPurple;
  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;
  Color get primaryContainerColor => Theme.of(this).colorScheme.primaryContainer;
  Color get onPrimaryContainerColor => Theme.of(this).colorScheme.onPrimaryContainer;

  /* 
 * Secondary Colors
 * Used for accents and complementary UI elements like chips, cards, or secondary buttons.
 */
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
  Color get onSecondaryColor => Theme.of(this).colorScheme.onSecondary;
  Color get secondaryContainerColor => Theme.of(this).colorScheme.secondaryContainer;
  Color get onSecondaryContainerColor => Theme.of(this).colorScheme.onSecondaryContainer;

  /* 
 * Tertiary Colors
 * Used for additional accents or layered UI elements, providing more visual hierarchy.
 */
  Color get tertiaryColor => Theme.of(this).colorScheme.tertiary;
  Color get onTertiaryColor => Theme.of(this).colorScheme.onTertiary;
  Color get tertiaryContainerColor => Theme.of(this).colorScheme.tertiaryContainer;
  Color get onTertiaryContainerColor => Theme.of(this).colorScheme.onTertiaryContainer;

  /* 
 * Error Colors
 * Used for error messages, input validations, and destructive actions.
 */
  Color get errorColor => Theme.of(this).colorScheme.error;
  Color get onErrorColor => Theme.of(this).colorScheme.onError;
  Color get errorContainerColor => Theme.of(this).colorScheme.errorContainer;
  Color get onErrorContainerColor => Theme.of(this).colorScheme.onErrorContainer;

  /* 
 * Surface Colors
 * Used for cards, sheets, backgrounds, and UI surfaces.
 */
  Color get surfaceColor => Theme.of(this).colorScheme.surface;
  Color get onSurfaceColor => Theme.of(this).colorScheme.onSurface;
  Color get surfaceVariantColor => Theme.of(this).colorScheme.surfaceContainerHighest;
  Color get onSurfaceVariantColor => Theme.of(this).colorScheme.onSurfaceVariant;

  /* 
 * Utility Colors
 * Used for borders, shadows, overlays, and special UI effects.
 */
  Color get outlineColor => Theme.of(this).colorScheme.outline;
  Color get shadowColor => Theme.of(this).colorScheme.shadow;
  Color get scrimColor => Theme.of(this).colorScheme.scrim;

  /* 
 * Inverse & Tint Colors
 * Used for dark/light mode switching or elevated surfaces.
 */
  Color get inverseSurfaceColor => Theme.of(this).colorScheme.inverseSurface;
  Color get onInverseSurfaceColor => Theme.of(this).colorScheme.onInverseSurface;
  Color get inversePrimaryColor => Theme.of(this).colorScheme.inversePrimary;
  Color get surfaceTintColor => Theme.of(this).colorScheme.surfaceTint;

  /* 
   * ======================================================================================================== 
   *                                             Widgets Theme   
   * ======================================================================================================== 
   */

  /* 
 * AppBar Theme
 * Styling configuration for AppBar components throughout the app.
 */
  AppBarThemeData get appBarTheme => Theme.of(this).appBarTheme;
  Color? get appBarColor => Theme.of(
    this,
  ).appBarTheme.backgroundColor; // Background color of the AppBar
  Color? get appBarForegroundColor => Theme.of(this).appBarTheme.foregroundColor; // Text/icon color in AppBar
  TextStyle? get appBarTitleTextStyle => Theme.of(this).appBarTheme.titleTextStyle; // Title style of AppBar
  TextStyle? get appBarToolbarTextStyle => Theme.of(this).appBarTheme.toolbarTextStyle; // Style for toolbar content

  /* 
 * Button Themes
 * Custom styling for different button types (Elevated, Outlined, Text).
 */
  ButtonThemeData get buttonTheme => Theme.of(this).buttonTheme; // Legacy button theme
  ElevatedButtonThemeData get elevatedButtonTheme => Theme.of(this).elevatedButtonTheme; // ElevatedButton styling
  OutlinedButtonThemeData get outlinedButtonTheme => Theme.of(this).outlinedButtonTheme; // OutlinedButton styling
  TextButtonThemeData get textButtonTheme => Theme.of(this).textButtonTheme; // TextButton styling

  /* 
 * Icon Themes
 * Default icon styling (size, color, opacity) for the current theme.
 */
  IconThemeData get iconTheme => Theme.of(this).iconTheme; // Default icon theme
  IconThemeData get primaryIconTheme => Theme.of(this).primaryIconTheme; // Primary-colored icons

  /* 
 * Card Theme
 * Default styling for Card widgets across the app.
 */
  CardThemeData get cardTheme => Theme.of(this).cardTheme;
  Color? get cardColor => Theme.of(this).cardTheme.color; // Default background color for cards
}
