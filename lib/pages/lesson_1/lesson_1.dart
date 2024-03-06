import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
//import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Logo.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';
import 'package:trial_v3/app_essentials/tools/app_bar2/app_Bar_2.dart';
import 'package:trial_v3/app_essentials/tools/app_bar2/app_Bar_Leading_Image.dart';
import 'package:trial_v3/app_essentials/tools/app_bar2/app_Bar_Title.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils_2.dart';
import 'package:trial_v3/app_essentials/theme/theme_Helper.dart';


class Lesson1Proper extends StatelessWidget {
  const Lesson1Proper({Key? key}) : super(key: key);

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
            // appBar: CustomAppBar(
            //   height: getVerticalSize(70),
            //   leadingWidth: 64,
            //   title: AppBarLogo(
            //     height: 100,
            //     width: 100,
            //     margin: getPadding(
            //       left: 25,
            //     ),
            //     imagePath: ImageConstant.imgAppBarLogo,
            //     onTap: () {
            //       onTapLogo(context);
            //     },
            //
            //   ),
            //
            //   actions: [
            //     AppBarLogo(
            //       height: 30,
            //       width: 30,
            //       margin: getPadding(
            //         right: 25,
            //       ),
            //
            //       svgPath: ImageConstant.imgOptionIcon,
            //     )
            //   ],
            // ),

            appBar: _buildAppBar(context),

            body: SingleChildScrollView(
              child: Container(

                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: getHorizontalSize(20),
                  vertical: getVerticalSize(12),
                ),
                child: Column(
                  children: [
                    //_buildFrameFortyFive(context),
                    SizedBox(height: getVerticalSize(18)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: getHorizontalSize(265),
                        margin: EdgeInsets.only(right: getHorizontalSize(69)),
                        child: Text(
                          "Projectile Motion",
                          overflow: TextOverflow.ellipsis,
                          //style: theme.textTheme.headlineSmall!.copyWith(
                          //  height: 1.50,
                          //),
                          style: AppStyle.txtManropeExtraBold20,
                        ),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "From your previous academic years especially in Grade 7, you’ve learned about the descriptors of motion in one dimension which govern on moving objects traveling in either two of the straight lines at uniform acceleration (constant acceleration): the horizontal (motion on a straight line) and vertical motions (free fall).",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),
                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Specifically, you will be able to: ",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "1. Define what a projectile and projectile motion is",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "2. Illustrate the path travel by a projectile",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "3. Appreciate the application of projectile motion in relation to sports",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Uniform acceleration is when the speed of an object changes at the same rate. This leads to the study of motion using equations and known as kinematics. Knowing details such as how fast an object is going after a given time interval rather than just the fact that the object is moving is our primary interest. To describe the properties, characteristics and behavior of motion with greater detail the following equations were discussed.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Table1: Kinematic Equations (horizontal motion)",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(18)),
                    CustomImageView(
                      imagePath: ImageConstant.imgOptics100,
                      height: getVerticalSize(174),
                      width: getHorizontalSize(335),
                      radius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "The four kinematic equations can be utilized to predict the unknown information about an object’s motion if other information is present. These equations can only be utilized if the motion undergoes constant velocity (a = 0) or a motion having a constant acceleration. ",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "The motion of objects acted solely by gravity is also an example of uniform acceleration having a constant value of g=−9.8ms2 ⁄ .(“-” means downward). It is associated with free-falling objects and objects thrown vertically straight to the air. With this, we also transform our Kinematic Equations along the horizontal to Kinematic Equations along the vertical by changing variable x to y and a to g.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Table2: Kinematic Equation (vertical motion)",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(18)),
                    CustomImageView(
                      imagePath: ImageConstant.imgOptics100,
                      height: getVerticalSize(174),
                      width: getHorizontalSize(335),
                      radius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(16)),
                    Text(
                      "Note: y - height, t - time, g - gravitational acceleration (−9.8𝑚𝑠2 ⁄ ), 𝑣𝑦 - final velocity 𝑣𝑜𝑦- along y, 𝑣𝑜𝑦 - initial velocity along y ",
                      maxLines: 10,
                      //style: theme.textTheme.bodySmall,
                      style: AppStyle.txtManropeSemiBold14,
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "There are few conceptual characteristics of free fall motion that you need to recall in applying the equations from the above table:",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        " An object in free-fall experiences an acceleration of -9.8m/s2. (The negative sign indicates a downward acceleration) Whether explicitly stated or not, the value of the acceleration in the kinematic equations is -9.8 m/s2 for any freely",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        " If an object is merely dropped (as opposed to being thrown) from an elevated height, then the initial velocity of the object is 0 m/s.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        " If an object is projected upwards in a perfectly vertical direction, then it will slow down as it rises upward. The instant at which it reaches the peak of its trajectory,its velocity is 0 m/s. This value can be used as one of the motion parameters in the kinematic equations;",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        " If an object is projected upwards in a perfectly vertical direction, then the velocity at which it is projected is equal in magnitude and opposite in sign to the velocity that it has when it returns to the same height.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "For this lesson, you will learn the definition of projectile motion and the associated concepts. Furthermore, we will learn that projectile motion consists of two motions where we can apply the kinematic equations for both vertical and horizontal motions. ",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Which of the three situations is/are more likely to happen in real-life?",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Figure 1.1: Ball thrown by a man at the cliff",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(18)),
                    CustomImageView(
                      imagePath: ImageConstant.diagonal_f1,
                      height: getVerticalSize(174),
                      width: getHorizontalSize(335),
                      radius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    Text(
                      "Illustrated by: Jumari S. Sapio",
                      maxLines: 10,
                      //style: theme.textTheme.bodySmall,
                      style: AppStyle.txtManropeSemiBold14,
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "In addition, supposed you were able to use a stroboscope in observing a player playing sepak takraw. As the player kicks the rattan ball, you observed the motion of the rattan ball. ",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Figure1.2: Sepak takraw player kicking a rattan ball",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(18)),
                    CustomImageView(
                      imagePath: ImageConstant.diagonal_f12,
                      height: getVerticalSize(174),
                      width: getHorizontalSize(335),
                      radius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    Text(
                      "Illustrated by: Jumari S. Sapio",
                      maxLines: 10,
                      //style: theme.textTheme.bodySmall,
                      style: AppStyle.txtManropeSemiBold14,
                    ),

                    SizedBox(height: getVerticalSize(16)),

                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "What will be your observations as you look into the motion of the ball on a strobe? Is it situation A or situation B? What do you think would be the explanation? ",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Projectile motion is a form of motion where an object given an initial velocity is thrown or projected and is allowed to be acted on by gravity in a curved-like path. These objects are called projectiles. The curved path followed by a projectile is called a trajectory.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "In projectile motion, the physical principles and mathematical formulas that must be applied are those concepts that were recalled earlier. Combining the two allows us to make predictions concerning projectile motion. As such the principles and formulas are well understood in various types of projectile problems.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Type 1: Horizontally Launched Projectiles",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Horizontally launched projectiles are projectiles that are launched with an initial velocity from an elevated position and follows a curved-like path to the ground.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Figure 1.3: A man diving into the water",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(18)),
                    CustomImageView(
                      imagePath: ImageConstant.diving,
                      height: getVerticalSize(174),
                      width: getHorizontalSize(335),
                      radius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    Text(
                      "Illustrated by: Jumari S. Sapio",
                      maxLines: 10,
                      //style: theme.textTheme.bodySmall,
                      style: AppStyle.txtManropeSemiBold14,
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "In Figure1.3, the motion of the man as it dives into the water is moving along a curved path downwards due to a natural force called gravitational force of the earth or gravity. Gravity is the natural force that causes objects to fall towards the earth. Hence, the acceleration due to gravity is always directed downwards and has a value of -9.8m/s2. With this, the motion of the man undergoes projectile motion. ",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Type 2: Angle-Launched Projectiles",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Angle-launched projectiles are projectiles launched at an angle with respect to the horizontal and rises to a peak while moving horizontally. Upon reaching the peak, the projectile falls with a motion that is symmetrical to its path upwards to the peak. ",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Figure 1.4: A sepak takraw player kicking a rattan ball over the net",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(18)),
                    CustomImageView(
                      imagePath: ImageConstant.sepak,
                      height: getVerticalSize(174),
                      width: getHorizontalSize(335),
                      radius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    Text(
                      "Illustrated by: Jumari S. Sapio",
                      maxLines: 10,
                      //style: theme.textTheme.bodySmall,
                      style: AppStyle.txtManropeSemiBold14,
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "What is the projectile in Figure 1.4? If you think that the rattan ball is the projectile, then you are right! How do you describe its trajectory? The rattan ball is travelling on a curved path. In mathematical terms, what do you call this pattern? Try to rearrange the following letters for you to answer the question.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "Figure1.5: Scrambled bubble letters",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(18)),
                    CustomImageView(
                      imagePath: ImageConstant.letters,
                      height: getVerticalSize(174),
                      width: getHorizontalSize(335),
                      radius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    Text(
                      "Illustrated by: Jumari S. Sapio",
                      maxLines: 10,
                      //style: theme.textTheme.bodySmall,
                      style: AppStyle.txtManropeSemiBold14,
                    ),

                    SizedBox(height: getVerticalSize(16)),
                    SizedBox(
                      width: getHorizontalSize(335),
                      child: Text(
                        "If you got the term parabola, then you were right! An angle-launched projectile exhibits a full parabolic trajectory motion. This shows that as the player kicked the rattan ball in the air, the ball will eventually go back to the ground still due to gravity as it moves horizontally. Hence projectile motion consists of horizontal and vertical motion working independently.",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        //style: CustomTextStyles.titleSmallBlack900_1.copyWith(
                        //  height: 1.50,
                        style: AppStyle.txtManrope14gray700,
                      ),
                    ),

                    SizedBox(height: getVerticalSize(30)),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }



  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      //leadingWidth: 36.h,
        leadingWidth: getHorizontalSize(44),
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown2,
            margin: EdgeInsets.only(
                left: getHorizontalSize(12),
                top: getVerticalSize(20),
                bottom: getVerticalSize(20)
              // left: 12.h,
              // top: 20.v,
              // bottom: 20.v,
            ),
            onTap: () {
              onTapArrowDown(context);
            }),
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
    );
  }

  /// Section Widget
  // Widget _buildFrameFortyFive(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Text(
  //         "John Doe in Lorem Ipsum",
  //         style: CustomTextStyles.titleSmallOnPrimary,
  //       ),
  //       Spacer(),
  //       Container(
  //         height: 3.adaptSize,
  //         width: 3.adaptSize,
  //         margin: EdgeInsets.only(
  //           top: 8.v,
  //           bottom: 10.v,
  //         ),
  //         decoration: BoxDecoration(
  //           color: appTheme.gray600,
  //           borderRadius: BorderRadius.circular(
  //             1.h,
  //           ),
  //         ),
  //       ),
  //       Padding(
  //         padding: EdgeInsets.only(left: 8.h),
  //         child: Text(
  //           "29 July",
  //           style: CustomTextStyles.titleSmallGray600,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  onTapLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.home_Page);
  }

  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.topic_1);
  }

  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.home_Page);
  }
}


