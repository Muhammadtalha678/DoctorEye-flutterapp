import 'package:flutter/material.dart';
class BottomList extends StatelessWidget {
  const BottomList({Key? key,this.data,this.ontap}) : super(key: key);
final data;
final ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
              ),
              child: data),
    );
  }
}