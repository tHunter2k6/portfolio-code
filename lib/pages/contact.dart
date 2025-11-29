import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mywebsite/widgets/appBar.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBar(context, 3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: Container(
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "Contact Me",
                    style: TextStyle(
                      fontSize: isPortrait ? 26.sp : 36.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 20.h),

                  // Social links with labels
                  Wrap(
                    spacing: 25.w,
                    runSpacing: 18.h,
                    children: [
                      _item(
                        context: context,
                        icon: SocialMediaButton.github(
                            size: isPortrait ? 28.sp : 44.sp),
                        label: "GitHub / tHunter2k6",
                        url: "https://github.com/tHunter2k6",
                      ),
                      _item(
                        context: context,
                        icon: SocialMediaButton.facebook(
                            size: isPortrait ? 28.sp : 44.sp),
                        label: "Facebook / Sanan Sheikh",
                        url: "https://www.facebook.com/sanan.sheikh.129",
                      ),
                      _item(
                        context: context,
                        icon: SocialMediaButton.instagram(
                            size: isPortrait ? 28.sp : 44.sp),
                        label: "Instagram / sanansheikhh",
                        url: "https://www.instagram.com/sanansheikhh",
                      ),
                      _item(
                        context: context,
                        icon: SocialMediaButton.whatsapp(
                            size: isPortrait ? 28.sp : 44.sp),
                        label: "WhatsApp / +92 331 3792988",
                        url: "tel:+923313792988",
                      ),
                      _item(
                        context: context,
                        icon: SocialMediaButton.linkedin(
                            size: isPortrait ? 28.sp : 44.sp),
                        label: "LinkedIn / Sanan Sheikh",
                        url:
                            "https://pk.linkedin.com/in/sanan-sheikh-055868322?trk=people-guest_people_search-card",
                      ),
                      _item(
                        context: context,
                        icon: Row(
                          children: [
                            SizedBox(width: 10.w),
                            Icon(Icons.mail_outline,
                                color: Colors.grey[300],
                                size: isPortrait ? 28.sp : 44.sp),
                            SizedBox(width: 10.w),
                          ],
                        ),
                        label: "Email / sanansheikh130306@gmail.com",
                        url: "mailto:sanansheikh130306@gmail.com",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({
    required BuildContext context,
    required Widget icon,
    required String label,
    required String url,
  }) {
    return InkWell(
      onTap: () => _launchURL(url),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          SizedBox(width: 10.w),
          MediaQuery.of(context).orientation == Orientation.portrait
              ? Expanded(
                  child: AutoSizeText(
                      maxLines: 1,
                      minFontSize: 1,
                      label,
                      style:
                          TextStyle(color: Colors.grey[300], fontSize: 15.sp)),
                )
              : AutoSizeText(
                  maxLines: 1,
                  minFontSize: 1,
                  label,
                  style: TextStyle(color: Colors.grey[300], fontSize: 15.sp)),
        ],
      ),
    );
  }
}
