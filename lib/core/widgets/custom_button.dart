




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilis/styles.dart';

class CustomButton extends StatelessWidget { 

  final String btnText;
  final  void Function()? onPressed;
  const CustomButton({super.key, required this.btnText, this.onPressed});

  @override
  Widget build(BuildContext context) {
   
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15),

        )),
        backgroundColor: MaterialStatePropertyAll(Color(0xff34A853)),
        elevation:MaterialStatePropertyAll(0),
        fixedSize:MaterialStatePropertyAll(Size(350,60)),
        alignment:Alignment.center
      ),
        onPressed: onPressed,
        child:Text(btnText,style: AppStyles.style22,),
    );
  }
}
