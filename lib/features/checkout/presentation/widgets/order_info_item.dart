



import 'package:flutter/cupertino.dart';
import 'package:payment_project/core/utilis/styles.dart';

class OrderInfoItem extends StatelessWidget {

  final String title,price;

  const OrderInfoItem({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Text(title,style: AppStyles.style18,),
        Spacer(),
        Text(r'$'+price,style: AppStyles.style18,),

      ],
    );
  }
}
