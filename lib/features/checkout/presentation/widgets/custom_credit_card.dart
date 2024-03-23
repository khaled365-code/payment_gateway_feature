



import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_project/core/utilis/styles.dart';

class CustomCreditCard extends StatefulWidget {


  final GlobalKey<FormState> paymentCardKey;
  final AutovalidateMode autovalidateMode;

  const CustomCreditCard({super.key, required this.paymentCardKey, required this.autovalidateMode});


  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {

  String cardNumber='',expiryDate='',cardHolderName='',cvvCode='';
  bool showBackView=false;






  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          CreditCardWidget(
              isHolderNameVisible: true,
              bankName: 'Banque Misr',
              width: 328,
              height: 192,
              padding: 0,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: showBackView,
              onCreditCardWidgetChange: (value){}),
          CreditCardForm(
              autovalidateMode: widget.autovalidateMode,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (creditCardModel)
              {
                cardNumber=creditCardModel.cardNumber;
                expiryDate=creditCardModel.expiryDate;
                cardHolderName=creditCardModel.cardHolderName;
                cvvCode=creditCardModel.cvvCode;
                showBackView=creditCardModel.isCvvFocused;
                setState(() {

                });
              },
              formKey: widget.paymentCardKey),
        ],
      ),
    );
  }
}
