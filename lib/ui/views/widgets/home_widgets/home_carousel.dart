
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder:(context,index){
          return SizedBox(
            height: 200,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(600),
              ),
              // child: Image.network(
              //   "https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?cs=srgb&dl=pexels-pixabay-40568.jpg&fm=jpg"
              //   ,fit: BoxFit.cover,
                
              //   ),
            ),
          );
        } 
        ),
    );
  }
}