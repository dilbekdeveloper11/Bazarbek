import 'dart:async';

import 'package:bozorbek/Registration_pages/login_page.dart';
import 'package:bozorbek/Registration_pages/registration_page.dart';
import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:bozorbek/screens/search_one_page.dart';
import 'package:bozorbek/service/set_password_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UpdatePasswordPage extends StatefulWidget {
  String name;
  String codeSms;
  String number;
  UpdatePasswordPage({
    Key? key,
    required this.name,
    required this.codeSms,
    required this.number,
  }) : super(key: key);

  @override
  State<UpdatePasswordPage> createState() => _UpdatePasswordPageState();
}

class _UpdatePasswordPageState extends State<UpdatePasswordPage> {
  TextEditingController passController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isCode = false;
  bool isNewCode = false;
  bool isPassVisible = false;
  bool isNewPassVisible = false;
  TextEditingController newPassController = TextEditingController();

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
                                builder: ((context) => const RegistrationPage()),
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
                    key: formKey,
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
                          padding: EdgeInsets.only(left: getW(85)),
                          child: Text(
                            "Регистрация",
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      fontSize: getH(25),
                                    ),
                          ),
                        ),
                        SizedBox(height: getH(10)),
                        Container(
                          height: getH(34),
                          width: getW(296),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Пароль должен содержать включая цифры, буквы и специальные символы (!?@%%).",
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                ?.copyWith(
                                  fontSize: getH(13),
                                  color:
                                      const Color(0xff42445A).withOpacity(0.5),
                                ),
                          ),
                        ),
                        SizedBox(height: getH(27)),
                        // parolni kiritish joyi
                        Container(
                          height: getH(63),
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
                                      color: isCode == true
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
                                    obscureText: isPassVisible,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      suffix: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isPassVisible = !isPassVisible;
                                          });
                                        },
                                        icon: Icon(
                                          isPassVisible == true
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.grey,
                                          size: getH(25),
                                        ),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.lock_outline,
                                        color: Colors.grey,
                                      ),
                                      fillColor: isCode == true
                                          ? const Color(0xffFF0505)
                                              .withOpacity(0.1)
                                          : const Color(0xffEEF3F9),
                                      filled: true,
                                      contentPadding: EdgeInsets.all(getH(10)),
                                      hintText: "Пароль",
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
                                    controller: passController,
                                  ),
                                ),
                              ),
                              isCode == true
                                  ? Positioned(
                                      left: getW(10),
                                      top: getH(-2),
                                      child: Container(
                                        height: getH(15),
                                        color: Colors.white,
                                        child: Text(
                                          "Пароль был введен неправильно",
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

                        // Parolni tasdiqlash joyi
                        Container(
                          height: getH(63),
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
                                      color: isNewCode == true
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
                                    obscureText: isNewPassVisible,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      suffix: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isNewPassVisible =
                                                !isNewPassVisible;
                                          });
                                        },
                                        icon: Icon(
                                          isNewPassVisible == true
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.grey,
                                          size: getH(25),
                                        ),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.lock_outline,
                                        color: Colors.grey,
                                      ),
                                      fillColor: isNewCode == true
                                          ? const Color(0xffFF0505)
                                              .withOpacity(0.1)
                                          : const Color(0xffEEF3F9),
                                      filled: true,
                                      contentPadding: EdgeInsets.all(getH(10)),
                                      hintText: "Подтвердите пароль",
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
                                    controller: newPassController,
                                  ),
                                ),
                              ),
                              isNewCode == true
                                  ? Positioned(
                                      left: getW(10),
                                      top: getH(-2),
                                      child: Container(
                                        height: getH(15),
                                        color: Colors.white,
                                        child: Text(
                                          "Неверный пароль",
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
                        SizedBox(height: getH(20)),
                        GestureDetector(
                          child: Container(
                            height: getH(35),
                            width: getW(199),
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
                                "Продолжить",
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
                            if (passController.text.isEmpty) {
                              setState(() {
                                isCode = true;
                              });
                            } else {
                              setState(() {
                                isCode = false;
                              });
                            }
                            if (newPassController.text.isEmpty) {
                              setState(() {
                                isNewCode = true;
                              });
                            } else {
                              setState(() {
                                isNewCode = false;
                              });
                            }
                            if (newPassController.text == passController.text) {
                              var data = await SetPassword().passwordService(
                                number: widget.number,
                                names: widget.name,
                                password: passController.text,
                                sms: widget.codeSms,
                              );

                              if (data == true) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginPage(),
                                  ),
                                );
                              } else {}
                            } else {
                              setState(() {
                                isNewCode = true;
                              });
                            }
                          },
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
