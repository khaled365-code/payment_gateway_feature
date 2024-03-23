


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/widgets/payment_method_container.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({
    super.key,
    required this.paymentMethodsImages,
  });

  final List<String> paymentMethodsImages;

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
              onTap: ()
              {
                setState(() {
                  currentIndex=index;
                });
              },
              child: PaymentMethodContainer(
                isActive: currentIndex==index,
                image: widget.paymentMethodsImages[index],
              )),
          separatorBuilder: (context, index) => SizedBox(width: 20,),
          itemCount: widget.paymentMethodsImages.length),
    );
  }
}