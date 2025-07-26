import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:garden_app/core/app_icons/app_icons.dart';
import 'package:garden_app/core/app_images/app_images.dart';
import 'package:garden_app/widgets/card_item_image_widget.dart';

import '../widgets/card_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Row(
                  children: [
                    IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_outlined)),
                    SizedBox(width: 7),
                    Text(
                      'Garden',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 42),
                CardItemImageWidget(
                  image: AppImages.imageHomeScreen,
                  title: "Soil Data",
                  number: "42%",
                  subtitle: "Soil Moisture",
                ),
                SizedBox(height: 30),
                CardItemImageWidget(
                  image: AppImages.imageHomeScreen1,
                  title: "Temperature",
                  number: "27°C",
                  subtitle: "Room Temperature",
                ),
                SizedBox(height: 60),

                Center(
                  child: Wrap(
                    runSpacing: 20,
                    spacing: 20,
                    children: [
                      CardItemWidget(
                        title: 'Fan',
                        icon: const Icon(FontAwesomeIcons.fan),
                        iconDown: const Icon(Icons.power_settings_new),
                      ),
                      CardItemWidget(
                        title: 'irrigation',
                        icon: const Icon(Icons.water_drop),
                        iconDown: const Icon(Icons.power_settings_new),
                      ),
                      CardItemWidget(
                        title: 'Smart light 1',
                        icon:  Icon(Icons.lightbulb_outline),
                        iconDown:  Icon(Icons.power_settings_new),
                      ),
                    ],
                  )
                  ,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
