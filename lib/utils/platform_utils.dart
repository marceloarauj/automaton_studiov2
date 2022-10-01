import 'package:flutter/foundation.dart';
import 'dart:io';

class PlatformUtils {
  
  static bool isWeb() => kIsWeb;
  static bool isMobile() => Platform.isIOS;
  static bool isDesktop() => Platform.isLinux || Platform.isWindows || Platform.isMacOS;
}