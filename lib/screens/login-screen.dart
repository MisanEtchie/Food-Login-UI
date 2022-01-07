import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_authentication_screen_ui/palette.dart';
import 'package:user_authentication_screen_ui/widgets/background-image.dart';
import 'package:user_authentication_screen_ui/widgets/rounded-button.dart';
import '../../widgets/password-input.dart';
import 'package:user_authentication_screen_ui/widgets/text-input-field.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Backgroundimage(
          image:
              'assets/images/5BF75737-0C30-4506-A8C1-1F5FCC619C94_1_105_c.jpeg',
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Flexible(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Recipes',
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: ' by',
                              style: TextStyle(
                                color: Color(0xFF6fffe9),
                                fontSize: 50,
                              ),
                            ),
                            TextSpan(text: ' Misan'),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                color: Color(0xFF6fffe9),
                                fontSize: 50,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextInputField(
                      hint: 'Email',
                      icon: FontAwesomeIcons.envelope,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      hint: 'Password',
                      icon: FontAwesomeIcons.lock,
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.done,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        'ForgotPassword',
                      ),
                      child: Text(
                        'Forgot Password',
                        style: tBodyText,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(
                      buttonName: 'Login',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                  child: Container(
                    child: Text(
                      'Create New Account',
                      style: tBodyText,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}


///Users/user/Desktop/Coding/Dart /user_authentication_screen_ui/assets/images/5BF75737-0C30-4506-A8C1-1F5FCC619C94_1_105_c.jpeg
///
///Text(
  