import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/Colors.dart';

class DrawerCustomTiles extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onClick;

  const DrawerCustomTiles(
      {Key? key, required this.icon, required this.text, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: 20.0.w,
              ),
              (icon.length == 0)
                  ? SizedBox(
                      width: 25.0.w,
                      height: 25.0.h,
                    )
                  : SvgPicture.asset('assets/svg/$icon'),
              SizedBox(
                width: 15.0.w,
              ),
              Expanded(
                flex: 1,
                child: Text(
                  text,
                  style: TextStyle(
                      color: codGray,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
