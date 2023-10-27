import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_ui/theme/colors.dart';
import 'package:food_app_ui/theme/fontsizes.dart';
import 'package:food_app_ui/theme/helper.dart';
import 'package:food_app_ui/theme/padding.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.8,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: getSvgIcon("arrow_back_icon.svg"),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        this.title,
                        style: TextStyle(
                          fontSize: titleFontSize,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
