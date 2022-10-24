import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getH(195),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffBEEBE0),
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
              padding: EdgeInsets.only(left: getW(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getH(90)),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: getH(22),
                        color: const Color(0xff42445A),
                      ),
                      SizedBox(width: getW(20)),
                      Text(
                        "Поиск",
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  ),
                  SizedBox(height: getH(20)),
                  Container(
                    height: getH(35),
                    width: getW(309),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: getH(5),
                          spreadRadius: getH(
                            1,
                          ),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        getH(22),
                      ),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          size: getH(30),
                          color: const Color(0xff42445A),
                        ),
                        contentPadding: EdgeInsets.only(
                          top: getH(5),
                          left: getW(20),
                        ),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: "Search",
                        hintStyle: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getH(20)),
          Padding(
            padding: EdgeInsets.only(left: getW(25)),
            child: Text(
              "Результаты поиска",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: getH(20), left: getW(11), right: getW(20)),
            child: Container(
              height: getH(640),
              width: double.infinity,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: getH(65),
                      width: getW(68),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/download.jpeg",
                            ),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: getH(5),
                            spreadRadius: getH(1),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          getH(8),
                        ),
                      ),
                    ),
                    title: Text(
                      "Сладости",
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            color: const Color(0xff02B698),
                          ),
                    ),
                    subtitle: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "15.000",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(
                                      fontSize: getH(14),
                                    ),
                              ),
                              TextSpan(
                                text: " Сум",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(
                                      fontSize: getH(10),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: getW(10)),
                        CircleAvatar(
                          radius: getH(3),
                          backgroundColor: const Color(0xff42445A),
                        ),
                        SizedBox(width: getW(10)),
                        Text(
                          "Органик",
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(
                                fontSize: getH(14),
                                color: const Color(0xff7024C4).withOpacity(0.5),
                              ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context,index) {
                  return SizedBox(
                    height: getH(20),
                  );
                },
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
