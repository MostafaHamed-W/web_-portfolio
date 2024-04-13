import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialInfo {
  final Widget icon;
  final String url;
  SocialInfo({
    required this.icon,
    required this.url,
  });
}

final List<SocialInfo> socials = [
  SocialInfo(
    icon: const FaIcon(FontAwesomeIcons.facebook),
    url: 'https://www.facebook.com/xwafy',
  ),
];
