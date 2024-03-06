// import 'package:flutter/material.dart';
// import 'package:trial_v3/app_essentials/theme/app_Decoration.dart';
// import 'package:trial_v3/app_essentials/theme/app_Style.dart';
// import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
// import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
// import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
//
// class Topic1ItemWidget extends StatelessWidget {
//   //const Topic1ItemWidget({Key? key, required this.onTapProperLesson,}) : super( key: key);
//   Topic1ItemWidget({
//     Key? key,
//     this.onTapProperLesson,
//   }) : super(
//     key: key,
//   );
//   VoidCallback? onTapProperLesson;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       //onTap: onTapProperLesson,
//       onTap: () {
//         onTapProperLesson!.call();
//       },
//
//       child: Column(
//         children: [
//
//           Container(
//             decoration: AppDecoration.outlineGray3001.copyWith(
//               borderRadius: BorderRadiusStyle.roundedBorder10,
//             ),
//             child: Row(
//                   children: [
//                     CustomImageView(
//                       //imagePath: ImageConstant.imgImage109x102,
//                       imagePath: ImageConstant.imgOptics100,
//                       height: getVerticalSize(100),
//                       width: getHorizontalSize(100),
//                       radius: BorderRadius.only(
//                         topLeft: Radius.circular(
//                           getHorizontalSize(10),
//                         ),
//                         bottomLeft: Radius.circular(
//                           getHorizontalSize(10),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 16,
//                         top: 15,
//                         bottom: 12,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Lesson Proper",
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: AppStyle.txtManropeBold16.copyWith(
//                               letterSpacing: getHorizontalSize(0.2),
//                             ),
//                           ),
//                           Padding(
//                             padding: getPadding(top: 8),
//                             child: Text(
//                               "Description ",
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtManropeExtraBold16.copyWith(
//                                 letterSpacing: getHorizontalSize(0.2),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//             ),
//
//           Padding(
//             padding: getPadding(top:20),
//           ),
//
//           Container(
//             decoration: AppDecoration.outlineGray3001.copyWith(
//               borderRadius: BorderRadiusStyle.roundedBorder10,
//             ),
//             child: Row(
//               children: [
//                 CustomImageView(
//                   //imagePath: ImageConstant.imgImage109x102,
//                   imagePath: ImageConstant.imgOptics100,
//                   height: getVerticalSize(100),
//                   width: getHorizontalSize(100),
//                   radius: BorderRadius.only(
//                     topLeft: Radius.circular(
//                       getHorizontalSize(10),
//                     ),
//                     bottomLeft: Radius.circular(
//                       getHorizontalSize(10),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: getPadding(
//                     left: 16,
//                     top: 15,
//                     bottom: 12,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Module 1 Activities",
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtManropeBold16.copyWith(
//                           letterSpacing: getHorizontalSize(0.2),
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(top: 8),
//                         child: Text(
//                           "Description ",
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtManropeExtraBold16.copyWith(
//                             letterSpacing: getHorizontalSize(0.2),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
//
// }

import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/theme/app_Decoration.dart';
import 'package:trial_v3/app_essentials/theme/app_Style.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/tools/custom_Image_View.dart';
import 'package:trial_v3/app_essentials/utils/image_Constants.dart';
// import 'package:trial_v3/pages/lesson_proper/lesson_proper.dart';
// import 'package:trial_v3/pages/module_1_activities/module_1_activities.dart';

class Topic1ItemWidget extends StatelessWidget {
  final VoidCallback? onTapProperLesson;
  final VoidCallback? onTapModule1Activities;

  const Topic1ItemWidget({
    Key? key,
    this.onTapProperLesson,
    this.onTapModule1Activities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTapProperLesson,
          child: Container(
            decoration: AppDecoration.outlineGray3001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOptics100,
                  height: getVerticalSize(100),
                  width: getHorizontalSize(100),
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(10),
                    ),
                    bottomLeft: Radius.circular(
                      getHorizontalSize(10),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 15,
                    bottom: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Lesson Proper",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeBold16.copyWith(
                          letterSpacing: getHorizontalSize(0.2),
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 8),
                        child: Text(
                          "Description",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeExtraBold16.copyWith(
                            letterSpacing: getHorizontalSize(0.2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: getVerticalSize(20)),
        GestureDetector(
          onTap: onTapModule1Activities,
          child: Container(
            decoration: AppDecoration.outlineGray3001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOptics100,
                  height: getVerticalSize(100),
                  width: getHorizontalSize(100),
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(10),
                    ),
                    bottomLeft: Radius.circular(
                      getHorizontalSize(10),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 15,
                    bottom: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Module 1 Activities",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeBold16.copyWith(
                          letterSpacing: getHorizontalSize(0.2),
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 8),
                        child: Text(
                          "Description",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeExtraBold16.copyWith(
                            letterSpacing: getHorizontalSize(0.2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}