// import 'dart:html';

import 'package:doctorapp/ui/views/payments/payments.dart';
import 'package:doctorapp/ui/views/widgets/home_widgets/Row_homw.dart';
import 'package:doctorapp/ui/views/widgets/home_widgets/container_home.dart';
import 'package:doctorapp/viewmodel/topdoctorviwModel/topdoctor_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     String text;
    return ViewModelBuilder<TopDoctorViewModel>.reactive(
      onModelReady: (model) =>model.initialise(),
      viewModelBuilder: () =>  TopDoctorViewModel(),
      builder: (context,model,child) => Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: Text("Dr.Randy Wigham",),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
           titleSpacing: 0,
          actions: [
            Padding(padding: EdgeInsets.only(right: 15),
            child: Row(children: [
            Icon(FontAwesomeIcons.heart,),
            SizedBox(width: 20,),
            Icon(Icons.more,),

            ],),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                          child: Container(
                            padding: EdgeInsets.all(6),
                             height: 120,
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
                        ),
                        SizedBox(height: 10,),
                        RowHome(
                          MainAxisalignment: MainAxisAlignment.spaceAround,
                          data:Column(
                            children: [
                               ContainerHome(
                                child: Icon(Icons.people,color: Colors.blue,),
                              ),
                              SizedBox(height: 10,),
                              Text("5,000+",style:TextStyle(color:Colors.blue,fontWeight:FontWeight.bold,fontSize:16)),
                              SizedBox(height: 10,),
                              Text("Patients",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500))
                            ],
                          ) ,
                          data1:Column(
                            children: [
                               ContainerHome(
                                child: Icon(Icons.people,color: Colors.blue,),
                              ),
                              SizedBox(height: 10,),
                              Text("10+",style:TextStyle(color:Colors.blue,fontWeight:FontWeight.bold,fontSize:16)),
                              SizedBox(height: 10,),
                              Text("years expert",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500))
                            ],
                          ),
                          data2:Column(
                            children: [
                               ContainerHome(
                                child: Icon(FontAwesomeIcons.rankingStar,color: Colors.blue,),
                              ),
                              SizedBox(height: 10,),
                              Text("4.8",style:TextStyle(color:Colors.blue,fontWeight:FontWeight.bold,fontSize:16)),
                              SizedBox(height: 10,),
                              Text("rating",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500))
                            ],
                          ),
                          data3:Column(
                            children: [
                               ContainerHome(
                                child: Icon(Icons.more,color: Colors.blue,),
                              ),
                              SizedBox(height: 10,),
                              Text("4942",style:TextStyle(color:Colors.blue,fontWeight:FontWeight.bold,fontSize:16)),
                              SizedBox(height: 10,),
                              Text("reviews",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500))
                            ],
                          ) ,
                         ),
                         SizedBox(height:15 ,),
                         Container(
                            padding: EdgeInsets.all(0),
                             height: 100,
                             width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(bottom: 8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("About me",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5,),
                                  
                                  Text(
                                   "Dr.Randy Wigham is the most immunologist specialist  in Christ Hospital in London.She achieved several awards for her wonderful contribution in medical field.She is available for  private contribution.She is available for  private contribution",
                                    style: TextStyle(letterSpacing: 1,wordSpacing: 1),
                                    overflow: model.Is_bool?TextOverflow.visible:TextOverflow.ellipsis,
                                    maxLines: model.Is_bool ? null:3,
                                     ),
                                     InkWell(
                                    onTap:(){model.updatebool();},
                                    child: Text(model.Is_bool?text = "view less":text = 'view more',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),),
                                ],
                              ),
                            )
                          ),
                          // SizedBox(height: 10,),
                          Text("Working Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                          ,SizedBox(height: 5,),
                          Text("Monday-Friday 08 00 AM-20 00 PM"),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Reviews",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              InkWell(onTap: (){},child: Text("See All",style: TextStyle(
                      fontSize: 16,color: Colors.blue,fontWeight: FontWeight.w600
                    ),))
                            ],
                          ),
                          SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerHome(Image: DecorationImage(image: AssetImage("images/virus.png")),),
                          // SizedBox(width: 10,),
                      Text("Charolette Hanlin",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                          ,SizedBox(width: 50,)
                      ,Icon(FontAwesomeIcons.rankingStar,color: Colors.blue,),
                          // SizedBox(width: 2,),
                      Icon(FontAwesomeIcons.rankingStar,color: Colors.blue,),
                    ],
                   ),
                          SizedBox(height: 10,),
                   Text(style: TextStyle(letterSpacing: 1,wordSpacing: 1),"Dr Randy is very professional in her work and responsive I have consulted and my problem is solved")
                          ,SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Payments()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                        width: 400,
                        height: 50,
                          child: Center(child: Text("Book Appointment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)),
                          decoration:BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                          )
                        ),
                      ),
                    )
                      
        
              ],
            ),
            ),
        ),
      ) 
      );
  }
}