import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Logo.dart';
import 'package:trial_v3/app_essentials/tools/app_bar/app_Bar_Subtitle.dart';
//import 'package:trial_v3/app_essentials/tools/app_bar/custom_App_Bar.dart';
import 'package:trial_v3/app_essentials/tools/custom_Button.dart';
import 'package:trial_v3/app_essentials/tools/custom_Icon_Button.dart';
import 'package:trial_v3/app_essentials/tools/custom_Text_Form_Field.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/theme/app_Decoration.dart';
import 'package:trial_v3/app_essentials/tools/app_bar2/app_Bar_2.dart';
import 'package:trial_v3/app_essentials/tools/app_bar2/app_Bar_Leading_Image.dart';
import 'package:trial_v3/app_essentials/theme/theme_Helper.dart';

class EditProfilePage extends StatelessWidget {

  TextEditingController fullnameOneController = TextEditingController();
  TextEditingController emailOneController = TextEditingController();
  TextEditingController addressOneController = TextEditingController();
  TextEditingController passwordOneController = TextEditingController();

  EditProfilePage({super.key});

  @override Widget build(BuildContext context) {
    return SafeArea(
      //child: Padding(
        //padding: getPadding(top: 20),

        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 12,
                      right: 24,
                      bottom: 32,
                    ),

                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: getSize(100),
                                    width: getSize(100),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgRectangle361100x100,
                                              height: getSize(100),
                                              width: getSize(100),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(50)
                                              ),
                                              alignment: Alignment.center
                                          ),
                                          CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              variant: IconButtonVariant.OutlineGray50,
                                              shape: IconButtonShape.RoundedBorder10,
                                              padding: IconButtonPadding.PaddingAll5,
                                              alignment: Alignment.bottomRight,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant.imgEdit12x12
                                              )
                                          )
                                        ]
                                    )
                                )
                            ),
                            Padding(
                                padding: getPadding(top: 33),
                                child: Text(
                                    "Full Name",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
                                        letterSpacing: getHorizontalSize(0.4)
                                    )
                                )
                            ),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: fullnameOneController,
                                hintText: "Lapag Name",
                                margin: getMargin(top: 7)
                            ),
                            Padding(
                                padding: getPadding(top: 17),
                                child: Text(
                                    "Email",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
                                        letterSpacing: getHorizontalSize(0.4)
                                    )
                                )
                            ),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: emailOneController,
                                hintText: "Lapagemail@gmail.com",
                                margin: getMargin(top: 7),
                                textInputType: TextInputType.emailAddress
                            ),
                            Padding(
                                padding: getPadding(top: 17),
                                child: Text(
                                    "Address",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
                                        letterSpacing: getHorizontalSize(0.4)
                                    )
                                )
                            ),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: addressOneController,
                                hintText: "Tagadon",
                                margin: getMargin(top: 7)
                            ),
                            Padding(
                                padding: getPadding(top: 17),
                                child: Text(
                                    "Password",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
                                        letterSpacing: getHorizontalSize(0.4)
                                    )
                                )
                            ),
                            CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: passwordOneController,
                                hintText: "123456",
                                margin: getMargin(
                                    top: 7,
                                    bottom: 5
                                ),
                                textInputAction: TextInputAction.done
                            )
                          ]
                      ),
                  ),
                ),
            ),
            bottomNavigationBar: Container(
                padding: getPadding(all: 24),
                decoration: AppDecoration.outlineBluegray1000f,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Save Change",
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1
                      )
                    ]
                )
            )
        ),
      //),
    );
  }

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


  onTapArrowleft19(BuildContext context) {
    Navigator.pop(context);
  }

  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoute.next);
  }
}
