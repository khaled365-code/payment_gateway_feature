



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_project/core/utilis/images.dart';
import 'package:payment_project/features/checkout/presentation/widgets/thank_you_row_item.dart';
import 'package:payment_project/features/checkout/presentation/widgets/total_price_item.dart';

import '../../../../core/utilis/styles.dart';
import 'card_info_item.dart';

class ThankYouBigContainer extends StatelessWidget {
  const ThankYouBigContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: 350,
      height: 672,
      decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 50+16,start: 18,end: 19),
        child: Column(
          children: [
            Text('Thank you!',style: AppStyles.style25,),
            SizedBox(height: 2,),
            Text('Your transaction was successful',style: AppStyles.style20_bold400.copyWith(color: Colors.black.withOpacity(.8)),),
            SizedBox(height: 42,),
            ThankYouRowItem(
              title: 'Date',
              value: '01/24/2023',
            ),
            SizedBox(height: 20,),
            ThankYouRowItem(
              title: 'Time',
              value: '10:15 AM',
            ),
            SizedBox(height: 20,),
            ThankYouRowItem(
              title: 'To',
              value: 'Sam Louis',
            ),
            SizedBox(height: 30,),
            Divider(
              thickness: 2,
              color: Color(0xffC7C7C7),
            ),
            SizedBox(height: 24,),
            TotalPriceItem(
              title: 'Total',
              price: '50.97',
            ),
            SizedBox(height: 30,),
            CardInfoItem(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                SizedBox(width: 8,),
                SvgPicture.asset(ImageConstants.barcodeIcon,height: 71,width: 142,),
                Spacer(),
                Container(
                  width: 113,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color(0xff34A853),
                          width: 1.5
                      )
                  ),
                  child: Center(child: Text('PAID',style: AppStyles.style24.copyWith(color: Color(0xff34A853))),
                ))
              ],
            ),
            SizedBox(height:MediaQuery.of(context).size.height*(.15/2)-29)

          ],
        ),
      ),
    );
  }
}

