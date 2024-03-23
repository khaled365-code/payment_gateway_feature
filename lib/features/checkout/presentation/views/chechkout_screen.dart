



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_project/core/utilis/images.dart';
import 'package:payment_project/features/checkout/presentation/views/payment_details.dart';

import '../../../../core/utilis/styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/order_info_item.dart';
import '../widgets/total_price_item.dart';

class CheckoutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size(double.infinity,50),
          child: CustomAppBar(
            title: 'My Cart',
          )),

      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children:
          [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Stack(
                clipBehavior: Clip.none,
                children:
                [
                  Image.asset(ImageConstants.redCheckoutBigImage),
                  Positioned(
                    left:99,
                    top:11,
                    child: Container(
                      width:204,
                      height: 119,
                      decoration: BoxDecoration(
                        color:Color(0xffEDEDED),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.5),
                              offset: Offset(-2, 4),
                              blurRadius: 10,
                              spreadRadius: 0
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children:
                        [
                          Padding(
                            padding: const EdgeInsets.only(left: 11,top: 11),
                            child: Text('Kinetic Sand Dino\n Dig Playset',style: AppStyles.style18,),
                          ),
                          SizedBox(height: 12,),
                          Padding(
                            padding: const EdgeInsets.only(left: 11,bottom: 5),
                            child: Container(
                              height: 37,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 37,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(
                                                  color: Colors.black.withOpacity(.5),
                                                  width: 1
                                              ),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 14,),
                                             Text('-',style: AppStyles.style18,),
                                              SizedBox(width: 5,),
                                              VerticalDivider(
                                               color: Colors.black.withOpacity(.5),
                                              ),
                                              SizedBox(width: 11,),
                                              Text('1',style: AppStyles.style18,),
                                              SizedBox(width: 5,),
                                              VerticalDivider(

                                              ),
                                              SizedBox(width: 6,),
                                              Text('+',style: AppStyles.style18,),
                                              SizedBox(width: 8,),



                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 37),
                                          child: Text("19.99",style: AppStyles.style20,),
                                        ),

                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            OrderInfoItem(
              title: 'Order Subtotal',
               price: '42.97',
            ),
            SizedBox(height: 3,),
            OrderInfoItem(
              title: 'Discount',
              price: '0',
            ),
            SizedBox(height: 3,),OrderInfoItem(
            title: 'Shipping',
            price: '8',
          ),
            SizedBox(height: 12,),
            Divider(
              color: Color(0xffC7C7C7),
              thickness: 2,
            ),
            SizedBox(height: 10,),
            TotalPriceItem(
              title: 'Total',
              price: '50.97',
            ),
            SizedBox(height: 15,),
            CustomButton(
              btnText: 'Complete Payment',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentDetailsScreen(),));
              },

            )

          ],
        ),
      ),

    );
  }
}


