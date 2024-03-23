




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_thank_you_container.dart';
import 'custom_circle_check.dart';
import 'dashed_line_widget.dart';

class ThankYouBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsetsDirectional.only(start: 20,end: 20,top: 100),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouBigContainer(),
          Positioned(
              bottom: MediaQuery.of(context).size.height*.15+20,
              left:0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: DashedLineWidget(),
              )),
          Positioned(
            bottom: MediaQuery.of(context).size.height*.15,
              left: -20,
              child: CircleAvatar(
              backgroundColor: Colors.white,
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height*.15,
              right: -20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            top: -50,
              left: 0,
              right: 0,
              child: CustomCircleCheck()),

        ],
      ),
    );
  }
}






