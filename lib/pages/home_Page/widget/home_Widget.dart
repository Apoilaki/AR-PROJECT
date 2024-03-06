//import 'package:christian_vridge_s_application3/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
//import 'package:christian_vridge_s_application3/core/app_export.dart';
import 'package:trial_v3/app_essentials/app_new/app_decoration.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';

// ignore: must_be_immutable
class FavoriteproductItemWidget extends StatelessWidget {
  FavoriteproductItemWidget({
    Key? key,
    this.onTapProductItem,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProductItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductItem!.call();
      },
      child: Container(
        padding: EdgeInsets.all(getHorizontalSize(15)),
        decoration: App_Decoration.outlineBlue50.copyWith(
          borderRadius: BorderRadiusStyle_.roundedBorder5,
          color: Color(0xFFF0F0F0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgOptics420,
              height: getVerticalSize(133),
              width: getHorizontalSize(133),
              radius: BorderRadius.circular(getHorizontalSize(5)
              ),
            ),
            SizedBox(height: getHorizontalSize(8),),
            SizedBox(
              width: getHorizontalSize(107),
              child: Text(
                "Module 1",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyle.txtManropeExtraBold18.copyWith(
                    letterSpacing: getHorizontalSize(0.2)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
