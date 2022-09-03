
import 'package:doctorapp/ui/views/top_doctors/doctor_detail.dart';
import 'package:doctorapp/viewmodel/topdoctorviwModel/topdoctor_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../widgets/home_widgets/bottom_list.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TopDoctorViewModel>.reactive(
      viewModelBuilder: ()=>TopDoctorViewModel(),
      builder: (context,model,child) => Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: Text("Top Doctor",),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          titleSpacing: 0,
          actions: [
            Padding(padding: EdgeInsets.only(right: 15),
            child: Row(children: [
            Icon(Icons.search,),
            SizedBox(width: 10,),
            Icon(Icons.more,),

            ],),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
               SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    
                    children: [
                      BottomList(ontap: (){},data: Text("All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("General",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Dentist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Pediartic",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Radiologist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Neurologist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),),
                      SizedBox(width: 15,),
                      BottomList(ontap: (){},data: Text("Ophthal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),),
                    ],
                  ),
                ),
                Expanded(
                  child:ListView.builder(
                    padding: EdgeInsets.only(top: 20),
                    itemBuilder:(context,index){
                      return Card(
                        child: Container(
                          padding: EdgeInsets.all(6),
                           height: 120,
                           width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          margin: EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetail()));
                                },
                                child: Container(
                                  
                                  width: 70,
                                  decoration: BoxDecoration(
                                    
                                    image: DecorationImage(image: AssetImage("images/virus.png"),fit: BoxFit.contain)
                                  ),
                                ),
                              ),
                              // SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Dr.Randy Wigham",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold ),),
                                        SizedBox(width: 50,),
                                        FaIcon(FontAwesomeIcons.heart,size: 16,color: Colors.blue,)
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.6,
                                      height: 0.1,
                                      color: Colors.black
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Cardiologist | The Valley Hospital",style: TextStyle(fontStyle: FontStyle.normal,fontSize: 13),),
                                    Text("data"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    } 
                    ) 
                  )
            ],
          ),
        ),
      )
      );
  }
}