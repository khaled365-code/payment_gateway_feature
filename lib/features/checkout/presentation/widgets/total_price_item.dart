




import 'package:flutter/cupertino.dart';

import '../../../../core/utilis/styles.dart';

class TotalPriceItem extends StatelessWidget {

  final String title,price;

  const TotalPriceItem({super.key, required this.title, required this.price});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: AppStyles.style24,),
        Spacer(),
        Text(r'$'+price,style: AppStyles.style24,),

      ],
    );
  }
}
