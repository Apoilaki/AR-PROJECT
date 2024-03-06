import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils_2.dart';
import 'package:trial_v3/app_essentials/theme/theme_Helper.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
    key: key

  );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;


  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
        child: AppBar(
          elevation: 0,
          toolbarHeight: height ?? 64.v,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          flexibleSpace: _getStyle(),
          leadingWidth: leadingWidth ?? 0,
          leading: leading,
          title: title,
          titleSpacing: 0,
          centerTitle: centerTitle ?? false,
          actions: actions,
        ),
    );
  }

  @override
  Size get preferredSize => Size(
    SizeUtils.width,
    height ?? 64.v,
  );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 64.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill,
}
