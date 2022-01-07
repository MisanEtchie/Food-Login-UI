import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_authentication_screen_ui/palette.dart';
import 'package:user_authentication_screen_ui/widgets/background-image.dart';
import 'package:user_authentication_screen_ui/widgets/text-input-field.dart';
import 'package:user_authentication_screen_ui/widgets/widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Backgroundimage(image: 'assets/images/pexels-lucas-guizo-4060347.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            /*leading: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: ,),*/
            title: Text(
              'Forgot Password',
              style: kBodyText,
            ),
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      width: size.width * 0.8,
                      child: Text(
                        "Please enter your email adress, we will send instructions to reset your password",
                        style: zBodyText,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    TextInputField(
                      hint: 'Email',
                      icon: FontAwesomeIcons.envelope,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedButton(buttonName: 'Send'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
