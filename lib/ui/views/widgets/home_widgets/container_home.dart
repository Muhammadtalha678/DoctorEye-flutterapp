
import 'package:flutter/material.dart';

class ContainerHome extends StatelessWidget {
  final ONTAP;
  final child;
  final shape;
  final border;
  final Image;
  const ContainerHome({Key? key,this.Image,this.ONTAP,this.child,this.shape=BoxShape.circle,this.border}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ONTAP,
      child: Container(
        width: 60,
        height: 50,
        decoration: BoxDecoration(
          shape: shape,
          color: Colors.white,
          borderRadius: border,
          image: Image
        ),
        child: Center(
            child: child,
        ),
      ),
    );
  }
}