




import 'package:flutter/material.dart';

import '../../../../core/utilis/images.dart';
import '../../../../core/utilis/styles.dart';

class CardInfoItem extends StatelessWidget {
  const CardInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 73,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 26,start: 23,end: 22),
            child: Image.asset(ImageConstants.mastercardImage),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credit Card',
                  style: AppStyles.style18,
                ),
                Text(
                  'Mastercard **78',
                  style: AppStyles.style16
                      .copyWith(color: Colors.black.withOpacity(.7)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}