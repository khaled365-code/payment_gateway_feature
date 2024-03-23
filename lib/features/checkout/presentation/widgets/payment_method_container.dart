




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utilis/images.dart';

class PaymentMethodContainer extends StatelessWidget {


  final bool isActive;
  final String image;

  const PaymentMethodContainer({super.key, required this.isActive, required this.image});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      width: 103,
      height: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: isActive? Color(0xff34A853):Color(0xff000000).withOpacity(.5),
              width: 1.5
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                color: isActive?Color(0xff34A853):Colors.white
            )
          ]
      ),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: SvgPicture.asset(image,fit: BoxFit.scaleDown,)),
    );
  }
}
