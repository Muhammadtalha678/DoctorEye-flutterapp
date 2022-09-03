import 'package:flutter/material.dart';
class RowHome extends StatelessWidget {
  const RowHome({Key? key,this.data,this.data1,this.data2,this.data3,this.MainAxisalignment = MainAxisAlignment.spaceBetween}) : super(key: key);
  final data;
  final data1;
  final data2;
  final data3;
  final MainAxisalignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisalignment,
      children: [
        data,
        data1,
        data2,
        data3
      ],
    );
  }
}