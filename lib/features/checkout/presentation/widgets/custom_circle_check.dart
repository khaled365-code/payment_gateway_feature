


import 'package:flutter/material.dart';

class CustomCircleCheck extends StatelessWidget {
  const CustomCircleCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:Color(0xffD9D9D9) ,
      radius: 50,
      child: CircleAvatar(
        backgroundColor: Color(0xff34A853),
        radius: 40,
        child: Icon(Icons.check,size: 50,color: Colors.white,),
      ),
    );
  }
}