// import 'dart:html';

import 'package:doctorapp/ui/views/top_doctors/top_doctors.dart';
import 'package:doctorapp/ui/views/widgets/home_widgets/Row_homw.dart';
import 'package:doctorapp/ui/views/widgets/home_widgets/bottom_list.dart';
import 'package:doctorapp/ui/views/widgets/home_widgets/container_home.dart';
import 'package:doctorapp/ui/views/widgets/home_widgets/home_carousel.dart';
import 'package:doctorapp/ui/views/widgets/home_widgets/home_textFieldsearchbar.dart';
import 'package:doctorapp/viewmodel/home_viewmodel/home_viewmodel.dart';
import 'package:doctorapp/viewmodel/topdoctorviwModel/topdoctor_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () =>  HomeViewModel(),
      builder: (context,model,chilld) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Theme.of(context).scaffoldBackgroundColor,
          leading: Padding(
          padding:  EdgeInsets.only(left: 15),
          child: CircleAvatar(
            // backgroundImage: new NetworkImage(userPicUrl),
          ),
        ),
          
          title: Column(
            children: [
              Text(model.bartitle,style: TextStyle(color: Colors.black, fontSize: 17.0),),
              Text(model.bartitle,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:15),
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.bell,size: 20,color: Colors.black),
                  SizedBox(width: 20,),
                  FaIcon(FontAwesomeIcons.heart,size: 20,color: Colors.black),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.calendar),label: 'Appointment',),
          BottomNavigationBarItem(icon: Icon(Icons.history),label: 'History',),
          BottomNavigationBarItem(icon: Icon(Icons.article),label: 'Articles',),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Profile',),
        ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(padding: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 10,),
                CustomSearchBar(onChange: (){}),
                SizedBox(height: 25,),
                Carousel(),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Doctor Speciality",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                  InkWell(
                    onTap: (){},
                    child: Text("See All",style: TextStyle(
                    fontSize: 16,color: Colors.blue,fontWeight: FontWeight.w600
                  ),)
                    ),
                ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      RowHome(
                       data:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Icon(Icons.people,color: Colors.blue,),),
                           SizedBox(height: 10,),
                           Text("General")
                         ],
                       ) ,
                       data1:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: FaIcon(FontAwesomeIcons.locationCrosshairs,color: Colors.blue,),),
                           SizedBox(height: 10,),
                           Text("Dentist")
                         ],
                       ) ,
                       data2:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Icon(Icons.remove_red_eye,color: Colors.blue,),),
                           SizedBox(height: 10,),
                           Text("Ophthal")
                         ],
                       ) ,
                       data3:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: FaIcon(FontAwesomeIcons.nutritionix,color: Colors.blue,),),
                           SizedBox(height: 10,),
                           Text("Nutritions")
                         ],
                       ) ,
                      ),
                      SizedBox(height: 15,),
                       RowHome(
                       data:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Icon(Icons.people,color: Colors.blue,),),
                           SizedBox(height: 10,),
                           Text("General")
                         ],
                       ) ,
                       data1:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: FaIcon(FontAwesomeIcons.locationCrosshairs,color: Colors.blue,),),
                           SizedBox(height: 10,),
                           Text("Dentist")
                         ],
                       ) ,
                       data2:Column(
                         children: [
                           ContainerHome(
                            ONTAP: (){},child: Icon(Icons.remove_red_eye,color: Colors.blue,),),
                           SizedBox(height: 10,),
                           Text("Ophthal")
                         ],
                       ) ,
                       data3:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: FaIcon(FontAwesomeIcons.nutritionix,color: Colors.blue,),),
                           SizedBox(height: 10,),
                           Text("Nutritions")
                         ],
                       ) ,
                      ),
                      
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Top Doctors",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TopDoctors()));
                    },
                    child: Text("See All",style: TextStyle(
                    fontSize: 16,color: Colors.blue,fontWeight: FontWeight.w600
                  ),)
                    ),
                ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    
                    children: [
                      BottomList(ontap: (){},data: Text("All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("General",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Dentist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Pediartic",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Radiologist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Neurologist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Ophthal",style: TextStyle(fontSize: 15,color: Colors.blue),),),
                    ],
                  ),
                )
              ],
            ),
            )
            ),
        ),
      )
      );
  }
}