import 'package:doctorapp/viewmodel/preview_viewmodel.dart/preview_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class Preview extends StatelessWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PreviewViewModel>.reactive(viewModelBuilder: ()=> PreviewViewModel(), builder: (context,model,child)=> Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black,
          title: Text("Review Summary",),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
           titleSpacing: 0,
          
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
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
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>));
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
                        SizedBox(height: 20,),
                        Card(
                          child: Container(
                            padding: EdgeInsets.all(6),
                             height: 120,
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 8),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Date & Hour"),
                                      Text("Dec 23,2014 | 10:00 AM"),
                                      // SizedBox(height: 20,),
                                      
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Packaging"),
                                      Text("Messaging"),
                                      // SizedBox(height: 15,),
                                      
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Duration"),
                                      Text("30 minutes"),
                                      // SizedBox(height: 20,),
                                      
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                          Card(
                          child: Container(
                            padding: EdgeInsets.all(6),
                             height: 150,
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 8),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Amount"),
                                      Text("${20}"),
                                      // SizedBox(height: 20,),
                                      
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Duration(30 mins)"),
                                      Text("1 x 20"),
                                      // SizedBox(height: 15,),
                                      
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                      height: 0.1,
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.black,                                    
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Total"),
                                      Text("20 "),
                                      // SizedBox(height: 20,),
                                      
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                          Card(
                          child: Container(
                            padding: EdgeInsets.all(6),
                             height: 70,
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 8),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Icon(FontAwesomeIcons.idCard,size:20),
                                  SizedBox(width: 20,),
                                  Text("----4679")
                                  ,SizedBox(width: MediaQuery.of(context).size.width*0.48,),
                                  InkWell(
                                    onTap: (){},
                                    child: Text("Change",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                                  )
                                ],
                              )
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
                        InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Preview()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                        width: 400,
                        height: 50,
                          child: Center(child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)),
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
    ));    
  }
}