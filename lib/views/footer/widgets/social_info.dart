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
    icon: const FaIcon(FontAwesomeIcons.linkedin),
    url: 'https://www.linkedin.com/in/Mostafa-hamed-w',
  ),
  SocialInfo(
    icon: const FaIcon(FontAwesomeIcons.github),
    url: 'https://github.com/MostafaHamed-W',
  ),
  SocialInfo(
    icon: const FaIcon(FontAwesomeIcons.facebook),
    url: 'https://www.facebook.com/xwafy',
  ),
  SocialInfo(
    icon: const FaIcon(FontAwesomeIcons.instagram),
    url: 'https://www.instagram.com/Mostafa.wafi',
  ),
  SocialInfo(
    icon: const FaIcon(FontAwesomeIcons.twitter),
    url: 'https://twitter.com/Mostafa23355089',
  ),
];
