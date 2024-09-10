import 'package:virtual_shop/consts/consts.dart';
import 'package:virtual_shop/consts/lists.dart';
import 'package:virtual_shop/views/auth_screen/signup_screen.dart';
import 'package:virtual_shop/views/home_screen/home.dart';
import 'package:virtual_shop/widget_common/applogo_widget.dart';
import 'package:virtual_shop/widget_common/bg_widget.dart';
import 'package:virtual_shop/widget_common/custom_textfield.dart';
import 'package:virtual_shop/widget_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:virtual_shop/consts/strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {}, child: forgetPass.text.make(),),
                  ),
                  5.heightBox,
                  // ourButton().box.width(context.screenWidth - 50).make(),
                  ourButton(color: redColor, title: login, textColor: whiteColor, onPress: () {
                    Get.to(() => const Home());
                  })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  ourButton(
                      color: lightGolden,
                      title: signup,
                      textColor: redColor,
                      onPress: () {
                        Get.to(() => SignupScreen());
                      })
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: lightGrey,
                          child: Image.asset(socialIconList[index], width: 30,),
                        ),
                      ))
                  )
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make()
            ],
          ),
        ),
      )
    );
  }
}
