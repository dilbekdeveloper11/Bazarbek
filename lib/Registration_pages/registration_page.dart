import 'dart:async';

import 'package:bozorbek/Registration_pages/login_page.dart';
import 'package:bozorbek/Registration_pages/update_password_page.dart';
import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:bozorbek/service/registration_service.dart';
import 'package:bozorbek/service/sms_verify-service.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool visible = false;
  bool isName = false;
  bool isPhone = false;
  bool isCode = false;
  bool errorPhone = false;
  bool sendApi = false;
  final formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController codeContoller = TextEditingController();
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
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: getW(20)),
                        Text(
                          "Регистрация",
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
                          padding: EdgeInsets.only(left: getW(85)),
                          child: Text(
                            "Регистрация",
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      fontSize: getH(25),
                                    ),
                          ),
                        ),
                        SizedBox(height: getH(40)),
                        // Ism - Familya kiritadigan joy
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
                                      color: isName == true
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
                                    enabled: !visible,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                      ),
                                      fillColor: isName == true
                                          ? const Color(0xffFF0505)
                                              .withOpacity(0.1)
                                          : const Color(0xffEEF3F9),
                                      filled: true,
                                      contentPadding: EdgeInsets.all(getH(10)),
                                      hintText: "Имя Фамилия",
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
                                    controller: nameController,
                                  ),
                                ),
                              ),
                              isName == true
                                  ? Positioned(
                                      left: getW(10),
                                      top: getH(-2),
                                      child: Container(
                                        height: getH(15),
                                        color: Colors.white,
                                        child: Text(
                                          "Имя не введено",
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

                        // Telefon nomer kiritadigan joy
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
                                      color: isPhone == true
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
                                  shadowColor: Color.fromRGBO(0, 0, 0, 0.149),
                                  child: TextFormField(
                                    inputFormatters: [maskFormatter],
                                    keyboardType: TextInputType.number,
                                    enabled: !visible,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.phone,
                                        color: Colors.grey,
                                      ),
                                      fillColor: isPhone == true
                                          ? const Color(0xffFF0505)
                                              .withOpacity(0.1)
                                          : const Color(0xffEEF3F9),
                                      filled: true,
                                      contentPadding: EdgeInsets.all(getH(10)),
                                      prefixText: "+998 ",
                                      prefixStyle: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(
                                              fontSize: getH(17),
                                              color: const Color(0xff42445A)),
                                      labelText: "Ваш номер телефона",
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
                                    controller: phoneController,
                                  ),
                                ),
                              ),
                              isPhone == true
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
                        // Kod Kiritidigan joy
                        visible == true
                            ? SizedBox(
                                height: getH(90),
                                width: getW(299),
                                child: Material(
                                  borderOnForeground: false,
                                  elevation: getH(25),
                                  shadowColor:
                                      const Color.fromRGBO(0, 0, 0, 0.15),
                                  child: TextFormField(
                                    controller: codeContoller,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.sms_failed_outlined,
                                        color: Colors.grey,
                                      ),
                                      fillColor: const Color(0xffEEF3F9),
                                      filled: true,
                                      contentPadding: EdgeInsets.all(getH(10)),
                                      hintText: isCode == false
                                          ? "Код"
                                          : "Ввели не правильный код",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(
                                              fontSize: getH(14),
                                              color: isCode == false
                                                  ? const Color(0xff42445A)
                                                      .withOpacity(0.55)
                                                  : const Color(0xffFF0505)),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                          getH(8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(),

                        visible == false
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: getW(10)),
                                  Text(
                                    "У меня есть аккаунт. ",
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
                                      "  Войти",
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
                                              const LoginPage(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              )
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Отправить заново код.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                          fontSize: getH(14),
                                        ),
                                  ),
                                ],
                              ),
                        SizedBox(height: getH(33)),
                        visible == false
                            ? Padding(
                                padding: EdgeInsets.only(left: getW(52)),
                                child: InkWell(
                                    child: Container(
                                      height: getH(35),
                                      width: getW(199),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.25),
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
                                          "Получить код ",
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
                                      setState(() {
                                        sendApi = true;
                                      });
                                      if (nameController.text.isEmpty) {
                                        setState(() {
                                          isName = true;
                                        });
                                      } else {
                                        setState(() {
                                          isName = false;
                                        });
                                      }
                                      if (phoneController.text.isEmpty) {
                                        setState(() {
                                          isPhone = true;
                                        });
                                      } else if (phoneController
                                          .text.isNotEmpty) {
                                        setState(() {
                                          isPhone = false;
                                        });
                                      }
                                      if (isName == false && isPhone == false) {
                                        String num =
                                            "+998${maskFormatter.unmaskText(phoneController.text)}";

                                        var data =
                                            await AuthService().registerUser(
                                          phone_num: num,
                                        );

                                        if (data == true) {
                                          setState(() {
                                            visible = !visible;
                                          });
                                        } else {
                                          setState(() {
                                            visible = false;
                                            phoneController.text = "";
                                            isPhone = true;
                                          });
                                        }
                                      }
                                    }),
                              )
                            : Padding(
                                padding: EdgeInsets.only(left: getW(52)),
                                child: InkWell(
                                  child: Container(
                                    height: getH(35),
                                    width: getW(199),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.25),
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
                                    String num =
                                        "+998${maskFormatter.unmaskText(phoneController.text)}";
                                    var datas =
                                        await VerifyService().verifyUser(
                                      phone_number: num,
                                      sms_code: codeContoller.text,
                                    );

                                    if (datas == true) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              UpdatePasswordPage(
                                            name: nameController.text,
                                            codeSms: codeContoller.text,
                                            number: num,
                                          ),
                                        ),
                                      );
                                    } else if (datas == false) {
                                      print("keldi");
                                      setState(() {
                                        isCode = true;
                                        codeContoller.text = "";
                                      });
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
