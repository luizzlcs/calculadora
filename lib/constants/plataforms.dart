import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart'
    show kIsWeb, kDebugMode, defaultTargetPlatform;

// PLATFORM TYPE
final IS_WEB = kIsWeb;
final IS_MOBILE = defaultTargetPlatform == TargetPlatform.android ||
    defaultTargetPlatform == TargetPlatform.iOS;
final IS_DESKTOP = defaultTargetPlatform == TargetPlatform.linux ||
    defaultTargetPlatform == TargetPlatform.macOS ||
    defaultTargetPlatform == TargetPlatform.windows;

// PLATFORM
final IS_ANDROID = defaultTargetPlatform == TargetPlatform.android;
final IS_IOS = defaultTargetPlatform == TargetPlatform.iOS;

// RUN MODE
const IS_DEBUG = kDebugMode;
const IS_RELEASE = !kDebugMode;
