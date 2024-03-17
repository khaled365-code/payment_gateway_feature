



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_project/core/utilis/images.dart';

import '../../../../core/utilis/styles.dart';

class CheckoutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(onPressed: () {  },icon: Icon(Icons.arrow_back)),
        title: Text('My Cart'),
        titleTextStyle: AppStyles.style25,
        centerTitle: true,
      ),

      body: Column(
        children:
        [
          Padding(
            padding: const EdgeInsets.only(left: 56,right:56,top: 25),
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
          )
        ],
      ),

    );
  }
}
