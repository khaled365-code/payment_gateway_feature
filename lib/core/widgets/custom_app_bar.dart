



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilis/styles.dart';


class CustomAppBar extends StatelessWidget {

  final String? title;

  const CustomAppBar({
    super.key, this.title
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back)),
      title: Text(title??''),
      titleTextStyle: AppStyles.style25,
      centerTitle: true,
    );
  }
}