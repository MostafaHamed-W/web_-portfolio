import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:web_portfolio/components/elevate_on_hover.dart';

extension HoverExtension on Widget {
  static final appContainer = html.window.document.getElementById('app-container');

  Widget get moveUpHover {
    return ElevateOnHover(child: this);
  }
}
