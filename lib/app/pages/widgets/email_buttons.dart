import 'package:estudo_email/app/shared/helper_strings.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailButtons extends StatelessWidget {
  const EmailButtons({Key? key}) : super(key: key);

  void _sendEmail(String to, String subject, String body) async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: to,
      query: 'subject=$subject&body=$body',
    );
    String url = uri.toString();

    try {
      if (await canLaunch(url)) {
        await launch(url);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Support'),
              onPressed: () {
                _sendEmail(
                  HelperStrings.supportEmail,
                  HelperStrings.supportSubject,
                  HelperStrings.supportBody,
                );
              },
            ),
            ElevatedButton(
              child: Text('Report a bug'),
              onPressed: () {
                _sendEmail(
                  HelperStrings.bugReportEmail,
                  HelperStrings.bugSubject,
                  HelperStrings.bugBody,
                );
              },
            ),
            ElevatedButton(
              child: Text('Feedback'),
              onPressed: () {
                _sendEmail(
                  HelperStrings.contactEmail,
                  HelperStrings.contactSubject,
                  HelperStrings.contactBody,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
