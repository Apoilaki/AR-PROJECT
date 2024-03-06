// fixing
import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';
//import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Logo.dart';
import 'package:trial_v3/pages/home_Page/widget/home_Widget.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/tools/app_bar2/app_Bar_2.dart';
import 'package:trial_v3/app_essentials/tools/app_bar2/app_Bar_Leading_Image.dart';
import 'package:trial_v3/app_essentials/theme/theme_Helper.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;
  final boxConstraints = BoxConstraints(
  maxWidth: size.width,
  maxHeight: size.height,
  );
  final orientation = MediaQuery.of(context).orientation;


  return Sizer(
  builder: (context, orientation, deviceType) {
  SizeUtils.setScreenSize(boxConstraints, orientation);
  return SafeArea(
  child: Scaffold(
  appBar: _buildAppBar(context),

  body: Container(
  width: double.maxFinite,
  padding: EdgeInsets.only(
  top: getVerticalSize(15),
  ),

  child: Column(
  children: [
  _buildMyBookings(context),
  Padding(
  padding: EdgeInsets.only(
  left: getHorizontalSize(16),
  top: getVerticalSize(8),
  right: getHorizontalSize(16)
  ),
  child: GridView.builder(
  shrinkWrap: true,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  mainAxisExtent: getVerticalSize(200),
  crossAxisCount: 2,
  mainAxisSpacing: getHorizontalSize(13),
  crossAxisSpacing: getHorizontalSize(13),
  ),
  physics: NeverScrollableScrollPhysics(),
  itemCount: 1,
  itemBuilder: (context, index) {
  return FavoriteproductItemWidget(onTapProductItem: () {
  onTapProductItem(context);
  });
  })),
  ],
  ),
  )
  )
  );
  }
  );
  }


  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      //leadingWidth: 36.h,
      leadingWidth: getHorizontalSize(44),
      leading: AppbarLeadingImage(
          //imagePath: ImageConstant.imgArrowDown2,
          margin: EdgeInsets.only(
              left: getHorizontalSize(12),
              top: getVerticalSize(20),
              bottom: getVerticalSize(20)
            // left: 12.h,
            // top: 20.v,
            // bottom: 20.v,
          ),
          //onTap: () {
            // onTapArrowDown(context);
          // }
          ),
      centerTitle: true,
      title: AppBarLogo(
        height: 100,
        width: 100,
        imagePath: ImageConstant.imgAppBarLogo,
        color: theme.colorScheme.primary,
      ),
      styleType: Style.bgFill,
      //     actions: [
      //   AppBarLogo(
      //   height: 30,
      //   width: 30,
      //     svgPath: ImageConstant.imgOptionIcon,
      // ),
      // ],

      //   actions: [
      //   AppBarLogo(
      //   height: 30,
      //   width: 30,
      //     svgPath: ImageConstant.imgOptionIcon,
      //     color: theme.colorScheme.primary,
      // ),
      // ],

        actions: [
          AppBarLogo(
            height: 30,
            width: 30,
            margin: getPadding(
              right: 25,
            ),

            svgPath: ImageConstant.imgOptionIcon,
            color: theme.colorScheme.primary,
          )
        ],
    );
  }

  /// Section Widget

  Widget _buildMyBookings(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        //horizontal: 23.h,
        //vertical: 10.v,
        horizontal: getHorizontalSize(23),
        vertical: getVerticalSize(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(60),
              top: getVerticalSize(3),
            ),
            child: Text(
              "Ongoing",
              style: AppStyle.txtManropeExtraBold18.copyWith(
                letterSpacing: getHorizontalSize(0.2),
              ),
            ),
          ),
          Spacer(
             flex: 1,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: getHorizontalSize(60),
                top: getVerticalSize(3),
            ),
            child: Text(
              "Completed",
              style: AppStyle.txtManropeExtraBold18.copyWith(
                letterSpacing: getHorizontalSize(0.2),
              ),
            ),
          ),
          // Spacer(
          //   flex: 47,
          // ),
          // Padding(
          //   padding: EdgeInsets.only(bottom: getVerticalSize(2)),
          //   child: Text(
          //     "Cancelled",
          //     style: AppStyle.txtManropeExtraBold18.copyWith(
          //         letterSpacing: getHorizontalSize(0.2),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  onTapArrowleft20(BuildContext context) {
    Navigator.pop(context);
  }

  onTapProperty(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapOptions(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }

  onTapTopic2(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.topic_2);
  }

  onTapTopic3(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.topic_3);
  }

  onTapLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.home_Page);
  }

  onTapProductItem(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.topic_1);
  }
}
