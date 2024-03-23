




import 'package:flutter/material.dart';

import '../../../../core/utilis/styles.dart';

class ThankYouRowItem extends StatelessWidget {


  final String title,value;

  const ThankYouRowItem({super.key, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text(title,style: AppStyles.style18,),
        Text(value,style: AppStyles.style18_Bold600,),


      ],
    );
  }
}
