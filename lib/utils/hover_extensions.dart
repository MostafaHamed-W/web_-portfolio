import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

extension HoverExtension on Widget {
  static final appContainer = html.window.document.getElementById('app-container');
}
