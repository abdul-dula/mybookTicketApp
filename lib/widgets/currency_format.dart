import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../utils/app_styles.dart';

class AppCurrency extends StatelessWidget {

  final double Num;
  final bool? isColor;
  const AppCurrency({Key? key, this.isColor,
    required this.Num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(

      //style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
      children: [
        Text(NumberFormat.compactCurrency(locale: 'hi-IN',decimalDigits: 2).format(Num), style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
      ],
    );
  }
}