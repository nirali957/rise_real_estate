import 'package:flutter/material.dart';

import '../core/common_widgets/common_back_button.dart';
import '../core/common_widgets/common_button.dart';
import '../core/common_widgets/common_ios_back_button.dart';
import '../core/common_widgets/common_rich_text.dart';
import '../core/common_widgets/common_skip_button.dart';
import '../core/common_widgets/common_text_field_.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    emailFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CommonButton(
                    //_____________ HOW TO USE : ______________//
                    // width: 200,
                    // icon: Icon(Icons.email_outlined, color: Colors.black),
                    // text: "fnbbb",
                    ),
                const SizedBox(
                  height: 50,
                ),
                const CommonSkipButton(
                    //_____________ HOW TO USE : ______________//
                    // isColor: Colors.amberAccent,
                    ),
                const SizedBox(
                  height: 50,
                ),
                const CommonBackButton(
                    //_____________ HOW TO USE : ______________//
                    // width: 50,  // non required
                    // height: 50, // non required
                    ),
                const SizedBox(
                  height: 50,
                ),
                const CommonIosBackButton(
                    // color: ,
                    ),
                const SizedBox(
                  height: 50,
                ),
                CommonTextField(
                  textEditingController: emailController,
                  hintText: "Email",
                  prefixImage: "assets/icon_images/email_icon.png",
                  suffixImage: "assets/icon_images/email_icon.png",
                  hidePrefix: !emailFocus.hasFocus,
                  textInputType: TextInputType.emailAddress,
                  focusNode: emailFocus,
                  onEditingComplete: () {
                    debugPrint("object");
                    emailFocus.unfocus();
                    FocusScope.of(context).requestFocus(passwordFocus);
                    debugPrint("emailFocus.hasFocus! ---------->>>${emailFocus.hasFocus}");
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                CommonTextField(
                  textEditingController: passwordController,
                  hintText: "Password",
                  prefixImage: "assets/icon_images/Lock.png",
                  suffixImage: "assets/icon_images/Lock.png",
                  textInputType: TextInputType.visiblePassword,
                  focusNode: passwordFocus,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: () {
                    debugPrint("object");
                    passwordFocus.unfocus();

                    debugPrint("emailFocus.hasFocus! ---------->>>${emailFocus.hasFocus}");
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                const RichTextScreen(),
                const SizedBox(
                  height: 50,
                ),
                // CommonStaggeredViewScreen()
                // const CommonTabBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool validator() {
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailController.text)) {
      debugPrint("Enter correct email");
      return false;
    } else if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(passwordController.text)) {
      return true;
    }

    return true;
  }
}
