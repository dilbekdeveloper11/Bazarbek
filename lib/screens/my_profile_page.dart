import 'package:bozorbek/core/components/profile_info_container.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [Column(
          children: [
            SizedBox(height: getH(20)),
            Row(
              children: [
                SizedBox(width: getW(15)),
                Icon(
                  Icons.arrow_back_ios_new,
                  size: getH(22),
                  color: const Color(0xff42445A),
                ),
                SizedBox(width: getW(20)),
                Text(
                  "Профиль",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(width: getW(190)),
                Image.asset("assets/images/Group 14498.png")
              ],
            ),
            SizedBox(height: getH(45)),
            Stack(
              children: [
                CircleAvatar(
                  radius: getH(61),
                  backgroundColor: const Color(0xff42445A),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: getH(58),
                    child: CircleAvatar(
                      radius: getH(56),
                      backgroundImage: const AssetImage(
                          "assets/images/unsplash_3TLl_97HNJo.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: getH(79),
                  child: Container(
                    height: getH(36),
                    width: getW(104),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/Vector 449.png",
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: getH(91),
                  left: getW(48),
                  child: Image.asset(
                    "assets/images/foto.png",
                  ),
                ),
              ],
            ),
            SizedBox(height: getH(20)),
            Text(
              "Нина Азаматова",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: getH(10)),
            Text(
              "Покупатель № 15",
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: const Color(0xff42445A).withOpacity(0.5),
                  ),
            ),
            SizedBox(height: getH(60)),
            InfoContainer.info(
              context: context,
              rowWidget: Container(
                height: getH(40),
                width: getW(250),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: getH(15)),
                    hintText: "Нина Азаматова",
                    hintStyle: Theme.of(context).textTheme.headline2?.copyWith(
                        color: const Color(0xff42445A).withOpacity(0.6)),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              isShow: true,
            ),
            SizedBox(height: getH(10)),
            InfoContainer.info(
              context: context,
              rowWidget: Text(
                "Ninaazamatova@gmail.com",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      color: const Color(0xff42445A).withOpacity(0.6),
                    ),
              ),
              isShow: false,
            ),
            SizedBox(height: getH(10)),
            InfoContainer.info(
              context: context,
              rowWidget: Text(
                "+998936834985",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      color: const Color(0xff42445A).withOpacity(0.6),
                    ),
              ),
              isShow: false,
            ),
            SizedBox(height: getH(50)),
            Container(
              height: getH(32),
              width: getW(170),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getH(8),
                ),
                color: const Color(0xff70ADEE),
              ),
              child: Center(
                child: Text(
                  "Сохранить",
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ],
        ),
      ],),
    );
  }
}
