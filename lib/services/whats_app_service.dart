import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class WhatsAppService {
  static Future<void> openWhatsApp(String phoneNumber, String message) async {
    final Uri whatsappUrl = Uri.parse("https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}");

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      log("Could not open WhatsApp");
    }
  }
}
