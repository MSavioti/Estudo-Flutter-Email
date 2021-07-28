import 'package:estudo_email/app/pages/widgets/email_buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-mail sending test'),
      ),
      body: EmailButtons(),
    );
  }
}
