




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/payment_detail_body.dart';

class PaymentDetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity,50),
          child: CustomAppBar(
            title: 'Payment Details',
          )),

      body: PaymentDetailsBody(),
    );
  }
}
