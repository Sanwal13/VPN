import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../ui/common_ui/ChooseCategory.dart';
import '../ui/common_ui/grevinces/GrievanceList.dart';
import '../ui/custom_widget/DrawerCustomTiles.dart';
import '../ui/custom_widget/buttons/GreenButton.dart';
import '../ui/moduls/acf/ACFFGLicenseList.dart';
import '../ui/moduls/acf/AFCProfile.dart';
import '../ui/moduls/acf/LicenseProfileRequest.dart';
import '../ui/moduls/dcf/DCFProfile.dart';
import '../ui/moduls/dcf/DCFFGLApplicationList.dart';
import '../ui/moduls/lms/register/FCLicenseFillDetails.dart';
import 'Colors.dart';
import 'GlobalConstants.dart';

BoxDecoration decoration(Color c1, Color c2) {
  return BoxDecoration(
      color: c1,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      boxShadow: [
        BoxShadow(
          color: c2,
          spreadRadius: 5,
          blurRadius: 9,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ]);
}

infoTilesOffWhite(context, key, value, color) {
  return Container(
    width: MediaQuery.of(context).size.width,
    color: (color == 0) ? borderBoxGender : white,
    child: Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0, bottom: 0.0),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  key,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
            VerticalDivider(
              color: containerBox,
              thickness: 1,
            ),
            Expanded(
              flex: 1,
              child: Text(
                value.toString(),
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

showACFDrawer(context) {
  var sh = MediaQuery.of(context).size.height;
  var sw = MediaQuery.of(context).size.width;
  var device = sw > 480 ? "TABLET" : "MOBILE";
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width * .7,
    child: Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(20.0.h),
      )),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: commentBox,
              borderRadius: BorderRadius.circular(20.h),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset(
                      'assets/svg/close_green.svg',
                      height: 20.0.h,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/png/dummy_user.png'),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GlobalConstants().hello,
                              style: TextStyle(
                                color: jungleGreen,
                                fontSize: device == "TABLET" ? 10.sp : 12.sp,
                              ),
                            ),
                            Text(
                              "ACF Name",
                              style: TextStyle(
                                fontSize: device == "TABLET" ? 10.sp : 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 45.0.h,
          ),
          DrawerCustomTiles(
              icon: "nav_dashboad.svg",
              text: GlobalConstants().dashboard,
              onClick: () {}),
          DrawerCustomTiles(
              icon: "nav_fc_license.svg",
              text: GlobalConstants().foodGrainLicense,
              onClick: () {
                Get.back();
                Get.to(const ACFFGLicenseList());
              }),
          DrawerCustomTiles(
              icon: "nav_profile.svg",
              text: GlobalConstants().licenseeProfileRequests,
              onClick: () {
                Get.back();
                Get.to(LicenseProfileRequest());
              }),
          DrawerCustomTiles(
              icon: "nav_profile.svg",
              text: GlobalConstants().myProfile,
              onClick: () {
                Get.back();
                Get.to(AFCProfile());
              }),
          DrawerCustomTiles(
              icon: "nav_change_password.svg",
              text: GlobalConstants().changePassword,
              onClick: () {
                Get.back();
                //Get.to(const ChangePassword());
              }),
          DrawerCustomTiles(
              icon: "nav_logout.svg",
              text: GlobalConstants().logout,
              onClick: () {
                Get.back();
                // Get.to(const NotificationList());
              }),
        ],
      ),
    ),
  );
}

showDCFDrawer(context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width * .7,
    child: Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(20.0.h),
      )),
      child: ListView(
        children: [
          SizedBox(
            height: 30.0.h,
          ),
          Container(
            color: loreumIpsumA,
            height: 150.0.h,
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    //SvgPicture.asset('assets/svg/close_green.svg')
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.0.h),
                        child: SvgPicture.asset(
                          'assets/svg/close_green.svg',
                          height: 20.0.h,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0.h),
                      child: Container(
                        height: 90.0.h,
                        width: 90.0.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/png/dummy_user.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10.0.h),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            GlobalConstants().hello,
                            style: TextStyle(
                                fontSize: 14.0.sp, color: logInLabelColor),
                          ),
                          Text(
                            GlobalConstants().dCFName,
                            style: TextStyle(
                                fontSize: 16.0.sp,
                                color: codGray,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: white,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                DrawerCustomTiles(
                    icon: "nav_dashboad.svg",
                    text: GlobalConstants().dashboard,
                    onClick: () {
                      Get.back();
                      //Get.to(UCFDashboard());
                    }),
                DrawerCustomTiles(
                    icon: "FGL.svg",
                    text: GlobalConstants().foodGrainLicense,
                    onClick: () {
                      Get.back();
                      Get.to(DCFFGLApplicationList());
                    }),
                DrawerCustomTiles(
                    icon: "millingGroup.svg",
                    text: GlobalConstants().millingLicense,
                    onClick: () {
                      Get.back();
                      //Get.to(DealerList());
                    }),
                DrawerCustomTiles(
                    icon: "dealerRegistration.svg",
                    text: GlobalConstants().dealerRegistration,
                    onClick: () {
                      Get.back();
                      //Get.to(MillerList());
                    }),
                DrawerCustomTiles(
                    icon: "millerEOI.svg",
                    text: GlobalConstants().millerEOI,
                    onClick: () {
                      Get.back();
                      //Get.to(Grievance());
                    }),
                DrawerCustomTiles(
                    icon: "movementCon.svg",
                    text: GlobalConstants().movementContractor,
                    onClick: () {
                      Get.back();
                      //Get.to(Grievance());
                    }),
                DrawerCustomTiles(
                    icon: "updatePR.svg",
                    text: GlobalConstants().updateProfileRequests,
                    onClick: () {
                      Get.back();
                      //Get.to(Grievance());
                    }),
                DrawerCustomTiles(
                    icon: "updatePR.svg",
                    text: GlobalConstants().contractorProfileRequests,
                    onClick: () {
                      Get.back();
                      //Get.to(Grievance());
                    }),
                DrawerCustomTiles(
                    icon: "grievanceA.svg",
                    text: GlobalConstants().grievance,
                    onClick: () {
                      Get.back();
                      Get.to(GrievanceList());
                    }),
                DrawerCustomTiles(
                    icon: "nav_profile.svg",
                    text: GlobalConstants().myProfile,
                    onClick: () {
                      Get.back();
                      Get.to(DCFProfile());
                    }),
                DrawerCustomTiles(
                    icon: "nav_change_password.svg",
                    text: GlobalConstants().changePassword,
                    onClick: () {
                      Get.back();
                      // Get.to(ChangePassword());
                    }),
                DrawerCustomTiles(
                    icon: "nav_logout.svg",
                    text: GlobalConstants().logout,
                    onClick: () {
                      Get.offAll(ChooseCategory());
                    }),
                SizedBox(
                  height: 20.0.h,
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

showAppCustomerPopup(
    BuildContext context,
    isFullHeight,
    isGreenClose,
    icon,
    text,
    subText,
    isTwoButton,
    OnTapYellow,
    btnTextYellow,
    OnTapGreen,
    btnTextGreen,
    isText) {
  return Get.bottomSheet(
    SingleChildScrollView(
        child: Container(
      height: (isFullHeight)
          ? MediaQuery.of(context).size.height
          : MediaQuery.of(context).size.height / 1.5,
      padding: EdgeInsets.all(10.0.h),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0.h),
              topLeft: Radius.circular(25.0.h))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 25.0.h,
          ),
          (isGreenClose)
              ? Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset('assets/svg/close_green.svg'),
                    /*Image.asset(
                                    'assets/png/closegreen.png')*/
                  ],
                )
              : Container(),
          Padding(
            padding: EdgeInsets.only(top: 20.0.h, bottom: 20.0.h),
            child: Center(child: SvgPicture.asset('assets/svg/$icon')),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  color: checkmarkGreen,
                  fontSize: 22.0.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
            child: Text(
              subText,
              style: TextStyle(
                  color: codGray,
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              (isTwoButton)
                  ? Expanded(
                      child: InkWell(
                        onTap: OnTapYellow,
                        child: Container(
                          width: double.infinity,
                          height: 50.0.h,
                          margin: EdgeInsets.symmetric(
                            horizontal: 5.w,
                          ),
                          decoration: BoxDecoration(
                            color: yellowOrange,
                            borderRadius: BorderRadius.circular(10.0.h),
                          ),
                          child: Center(
                            child: Text(
                              btnTextYellow.toUpperCase(),
                              style: TextStyle(
                                  color: white,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
              Expanded(
                child: InkWell(
                  onTap: OnTapGreen,
                  child: Container(
                    width: double.infinity,
                    height: 50.0.h,
                    margin: EdgeInsets.symmetric(
                      horizontal: 5.w,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF228F63),
                            Color(0xFF26C485),
                          ],
                          begin: FractionalOffset(0.0, 0.0),
                          end: FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(10.0.h),
                    ),
                    child: Center(
                      child: Text(
                        btnTextGreen.toUpperCase(),
                        style: TextStyle(
                            color: white,
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          (isText)
              ? Text(
                  "Keep Anyway (Unsafe)",
                  style: TextStyle(
                      color: codGray,
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w700),
                )
              : Container(),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    )),
    barrierColor: transparentBlack,
    isScrollControlled: true,
    persistent: false,
    // isDismissible: false,
  );
}


showOTPPopup(BuildContext context, action) {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  bool showTimer = false;
  late Duration defaultDuration;

  return Get.bottomSheet(
    StatefulBuilder(
        builder: (context,state){
          return   SingleChildScrollView(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(10.0.h),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.0.h),
                        topLeft: Radius.circular(25.0.h))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25.0.h,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        SvgPicture.asset('assets/svg/close_green.svg'),
                      ],
                    ),
                    Image.asset('assets/png/otpLock.png'),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0.h),
                      child: Text(
                        GlobalConstants().enterOTP,
                        style: TextStyle(
                            color: greenGraident2,
                            fontSize: 22.0.sp,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0.h),
                      child: Text(
                        GlobalConstants().sentOTP,
                        style: TextStyle(
                            color: codGray,
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, right: 40.0, bottom: 15.0),
                      child: Center(
                        child: Pinput(
                          length: 6,
                          pinAnimationType: PinAnimationType.none,
                          controller: controller,
                          focusNode: focusNode,
                          defaultPinTheme: defaultPinTheme,
                          showCursor: false,
                          cursor: cursor,
                          // preFilledWidget: preFilledWidget,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    GreenButton(
                        text: GlobalConstants().submit,
                        OnTap: () {
                            Get.back();
                            if(action==1){
                              Get.to(const FCLicenseFillDetails());
                            }
                        }),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    (showTimer)?
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            state(() {
                              showTimer =false;
                            });
                          },
                          child: Text(
                            "Resend OTP in",
                            style: TextStyle(
                                color: greenGraident2,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ) ,
                        SlideCountdown(
                            onDone: () {
                              state(() {
                                showTimer =false;
                              });
                            },
                            duration: defaultDuration,
                            textStyle: TextStyle(
                                color: otpTimer, fontWeight: FontWeight.w700,fontSize: 16.sp),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                              color: Colors.transparent,
                            )) ,

                        Text(
                          "Sec.",
                          style: TextStyle(
                              color: otpTimer,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ):
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            state(() {
                              showTimer = true;
                              defaultDuration = Duration(
                                seconds: 11,
                              );
                            });
                          },
                          child: Text(
                            "Resend OTP",
                            style: TextStyle(
                                color: greenGraident2,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ) ,
                      ],
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                  ],
                ),
              ),
            ),
          );}),
    barrierColor: transparentBlack,
    isScrollControlled: true,
    persistent: false,
    // isDismissible: false,
  );
}

final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 30,
      color: jungleGreen,
    ),
    decoration: BoxDecoration(
      border: Border(
        //top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
        bottom: BorderSide(
          width: 3.0,
          color: Color(0x9024B37A),
        ),
      ),
    ));

final cursor = Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Container(
      width: 56,
      height: 3,
      decoration: BoxDecoration(
        color: Color(0xFFFF0909),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ],
);

final preFilledWidget = Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Container(
      width: 56,
      height: 3,
      decoration: BoxDecoration(
        color: Color(0xFF24B37A),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ],
);
