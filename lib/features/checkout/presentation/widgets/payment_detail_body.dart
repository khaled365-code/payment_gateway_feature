







import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/views/thank_you_screen.dart';
import 'package:payment_project/features/checkout/presentation/widgets/payment_method_list_view.dart';

import '../../../../core/utilis/images.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_credit_card.dart';

class PaymentDetailsBody extends StatefulWidget {



  PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {


  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;

  final List<String>paymentMethodsImages=[
    ImageConstants.creditcardIcon,
    ImageConstants.paypalIcon,
    ImageConstants.applepayIcon,
  ];

  final GlobalKey<FormState>cardFormKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:
      [
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 34,horizontal: 20),
              child: PaymentMethodListView(paymentMethodsImages: paymentMethodsImages)
          ),
        ),
        SliverToBoxAdapter(child: CustomCreditCard(
          paymentCardKey: cardFormKey,
          autovalidateMode: autoValidateMode,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsetsDirectional.only(bottom: 12,start: 20,end: 20),
              child: CustomButton(
               btnText: 'Pay',
                onPressed: ()
                {
                  if(cardFormKey.currentState!.validate())
                    {
                      cardFormKey.currentState!.save();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ThankYouScreen(),));
                    }
                  else
                    {
                      setState(() {
                        autoValidateMode=AutovalidateMode.always;
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ThankYouScreen(),));


                    }

                },
              ),
            ),
          ),
        ),


      ],

    );
  }
}



