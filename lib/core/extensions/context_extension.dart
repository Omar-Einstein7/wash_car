import 'package:carwash/core/theme/color_schemes.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // Theme shortcuts
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  AppColorsExtension get appColors =>
      theme.extension<AppColorsExtension>() ?? AppPalettes.light;
  bool get isDarkMode => theme.brightness == Brightness.dark;

  // MediaQuery shortcuts
  Size get mediaQuerySize => MediaQuery.sizeOf(this);
  double get screenWidth => mediaQuerySize.width;
  double get screenHeight => mediaQuerySize.height;
  EdgeInsets get safeArea => MediaQuery.paddingOf(this);

  // Keyboard
  bool get isKeyboardVisible => MediaQuery.viewInsetsOf(this).bottom > 0;
  void hideKeyboard() => FocusScope.of(this).unfocus();

  // Platform
  bool get isIOS => theme.platform == TargetPlatform.iOS;
  bool get isAndroid => theme.platform == TargetPlatform.android;

  // Overlays / SnackBars
  void showSnackBar(
    String message, {
    Color? backgroundColor,
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: backgroundColor,
          action: action,
          duration: duration,
        ),
      );
  }

  void showSuccessSnackBar(String message) {
    showSnackBar(message, backgroundColor: Colors.green);
  }

  void showErrorSnackBar(String message) {
    showSnackBar(message, backgroundColor: colorScheme.error);
  }

  Future<T?> showAppBottomSheet<T>({
    required WidgetBuilder builder,
    bool isScrollControlled = true,
    bool useSafeArea = true,
  }) {
    return showModalBottomSheet<T>(
      context: this,
      builder: builder,
      isScrollControlled: isScrollControlled,
      useSafeArea: useSafeArea,
    );
  }

  Future<T?> showAppDialog<T>({required WidgetBuilder builder}) {
    return showDialog<T>(context: this, builder: builder);
  }
}
