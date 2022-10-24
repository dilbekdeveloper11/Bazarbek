import 'dart:async';

import 'package:bozorbek/Registration_pages/registration_page.dart';
import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:bozorbek/screens/search_one_page.dart';
import 'package:bozorbek/service/login_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isShow = false;
  bool isLogin = false;
  bool isParol = false;
  final formkey = GlobalKey<FormState>();
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var maskFormatter = MaskTextInputFormatter(
    mask: '## ### ## ##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/Rectangle 1479.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: getH(113),
                  width: getW(375),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        getH(20),
                      ),
                      bottomRight: Radius.circular(
                        getH(20),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: getH(60)),
                    child: Row(
                      children: [
                        SizedBox(width: getW(15)),
                        GestureDetector(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: getH(20),
                            color: const Color(0xff42445A),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const SearchOnePage()),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: getW(20)),
                        Text(
                          "Логин",
                          style: Theme.of(context).textTheme.headline1,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: getH(160),
              left: getW(21),
              child: Container(
                alignment: Alignment.center,
                height: getH(589),
                width: getW(334),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.15),
                      spreadRadius: getH(2),
                      blurRadius: getH(1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    getH(5),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: getH(73), left: getW(19)),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: getW(116)),
                          height: getH(64),
                          width: getW(64),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: getH(3),
                              color: const Color(0xff0BD9A9),
                            ),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/user 3.png"),
                            ),
                          ),
                        ),
                        SizedBox(height: getH(20)),
                        Padding(
                          padding: EdgeInsets.only(left: getW(118)),
                          child: Text(
                            "Логин",
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      fontSize: getH(25),
                                    ),
                          ),
                        ),
                        SizedBox(height: getH(40)),
                        // Login kiritadigan joy
                        Container(
                          height: getH(50),
                          width: getW(300),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: getH(8),
                                  left: getW(3),
                                ),
                                height: getH(50),
                                width: getW(299),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(getH(6)),
                                  border: Border.all(
                                      color: isLogin == true
                                          ? Colors.red
                                          : Colors.transparent),
                                ),
                                child: Material(
                                  elevation: getH(25),
                                  borderOnForeground: true,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      getH(6),
                                    ),
                                  ),
                                  shadowColor:
                                      const Color.fromRGBO(0, 0, 0, 0.15),
                                  child: TextFormField(
                                    inputFormatters: [maskFormatter],
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      prefixText: "+998 ",
                                      prefixStyle: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(
                                              fontSize: getH(17),
                                              color: const Color(0xff42445A)),
                                      prefixIcon: const Icon(
                                        Icons.phone,
                                        color: Colors.grey,
                                      ),
                                      fillColor: isLogin == true
                                          ? const Color(0xffFF0505)
                                              .withOpacity(0.1)
                                          : const Color(0xffEEF3F9),
                                      filled: true,
                                      contentPadding: EdgeInsets.all(getH(10)),
                                      labelText: "Login",
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      labelStyle: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(
                                            fontSize: getH(14),
                                            color: const Color(0xff42445A)
                                                .withOpacity(0.55),
                                          ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                          getH(5),
                                        ),
                                      ),
                                    ),
                                    controller: loginController,
                                  ),
                                ),
                              ),
                              isLogin == true
                                  ? Positioned(
                                      left: getW(10),
                                      top: getH(-2),
                                      child: Container(
                                        height: getH(15),
                                        color: Colors.white,
                                        child: Text(
                                          "Номер телефона не введен",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2
                                              ?.copyWith(
                                                fontSize: getH(15),
                                                color: const Color(0xffFF0505)
                                                    .withOpacity(0.76),
                                              ),
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                        // Password keladigan joy
                        Container(
                          height: getH(50),
                          width: getW(300),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: getH(8),
                                  left: getW(3),
                                ),
                                height: getH(50),
                                width: getW(299),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(getH(6)),
                                  border: Border.all(
                                      color: isParol == true
                                          ? Colors.red
                                          : Colors.transparent),
                                ),
                                child: Material(
                                  elevation: getH(35),
                                  borderOnForeground: true,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      getH(6),
                                    ),
                                  ),
                                  shadowColor:
                                      const Color.fromRGBO(0, 0, 0, 0.15),
                                  child: TextFormField(
                                    obscureText: isShow,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isShow = !isShow;
                                          });
                                        },
                                        icon: Icon(
                                          isShow == true
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.grey,
                                          size: getH(25),
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Colors.grey,
                                        size: getH(20),
                                      ),
                                      fillColor: isParol == true
                                          ? const Color(0xffFF0505)
                                              .withOpacity(0.1)
                                          : const Color(0xffEEF3F9),
                                      filled: true,
                                      contentPadding: EdgeInsets.all(getH(20)),
                                      hintText: "Parol terish",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(
                                            fontSize: getH(14),
                                            color: const Color(0xff42445A)
                                                .withOpacity(0.55),
                                          ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                          getH(5),
                                        ),
                                      ),
                                    ),
                                    controller: passwordController,
                                  ),
                                ),
                              ),
                              isParol == true
                                  ? Positioned(
                                      left: getW(10),
                                      top: getH(-2),
                                      child: Container(
                                        height: getH(15),
                                        color: Colors.white,
                                        child: Text(
                                          "Номер телефона не введен",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2
                                              ?.copyWith(
                                                fontSize: getH(15),
                                                color: const Color(0xffFF0505)
                                                    .withOpacity(0.76),
                                              ),
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                        SizedBox(height: getH(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: getW(10)),
                            Text(
                              "У вас нет аккаунта.",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(
                                    fontSize: getH(14),
                                    color: const Color(0xff42445A)
                                        .withOpacity(0.3),
                                  ),
                            ),
                            InkWell(
                              child: Text(
                                "   Зарегистрироваться",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(
                                      fontSize: getH(14),
                                    ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegistrationPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: getH(5)),

                        SizedBox(height: getH(20)),
                        Padding(
                          padding: EdgeInsets.only(left: getW(100)),
                          child: InkWell(
                            child: Container(
                              height: getH(35),
                              width: getW(93),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromRGBO(0, 0, 0, 0.25),
                                    spreadRadius: getH(1),
                                    blurRadius: getH(5),
                                  ),
                                ],
                                color: const Color(0xff70ADEE),
                                borderRadius: BorderRadius.circular(
                                  getH(5),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Войти",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                            onTap: () async {
                              if (loginController.text.isEmpty) {
                                setState(() {
                                  isLogin = true;
                                });
                              } else {
                                setState(() {
                                  isLogin = false;
                                });
                              }
                              if (passwordController.text.isEmpty) {
                                setState(() {
                                  isParol = true;
                                });
                              } else {
                                setState(() {
                                  isParol = false;
                                });
                              }
                              String login =
                                  "+998${maskFormatter.unmaskText(loginController.text)}";

                              if (isLogin == false && isParol == false) {
                                var data = await LoginService().loginUser(
                                  username: login,
                                  password: passwordController.text,
                                );

                                if (data == true) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => SearchOnePage()),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "Siz oldin royxatdan o'tmagansiz",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
