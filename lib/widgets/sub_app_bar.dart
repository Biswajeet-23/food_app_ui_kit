import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_ui/theme/colors.dart';
import 'package:food_app_ui/theme/fontsizes.dart';
import 'package:food_app_ui/theme/helper.dart';
import 'package:food_app_ui/theme/padding.dart';

class SubAppBar extends StatelessWidget {
  const SubAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.8,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ),
        backgroundColor: textWhite,
        automaticallyImplyLeading: false,
        primary: false,
        excludeHeaderSemantics: true,
        flexibleSpace: SafeArea(
          child: Container(
            padding:
                EdgeInsets.only(left: leftMainPadding, right: rightMainPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Notification",
                          style: TextStyle(
                              color: textBlack,
                              fontSize: titleFontSize,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Clear",
                          style: TextStyle(
                              color: textBlack,
                              fontSize: subTitleFontSize,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
