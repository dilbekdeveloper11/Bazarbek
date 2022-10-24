import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/panel_widget.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CardInformationPage extends StatelessWidget {
  const CardInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PanelController controller = PanelController();
    final panelController=PanelController();
    SizeConfig().init(context);

    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Информация о карточке"),
      body: SlidingUpPanel(
        maxHeight: getH(472),
        minHeight: getH(90),
        parallaxEnabled: true,
        parallaxOffset: .8,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getH(20),
          ),
          topRight: Radius.circular(
            getH(20),
          ),
        ),
        controller: controller,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/image 2.png",
              ),
              SizedBox(height: getH(10)),
              Image.asset("assets/images/Ellipse 248.png")
            ],
          ),
          decoration: const BoxDecoration(
            color: Color(0xffCFE0AD),
          ),
        ),
        panelBuilder: (controller) {
          return PanelWidget(
            panelController: panelController,
            controllerr: controller,
          );
        },
      ),
    );
  }
}
