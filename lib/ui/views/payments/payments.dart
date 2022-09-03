import 'package:doctorapp/ui/views/preview/preview.dart';
import 'package:doctorapp/viewmodel/payments_viewmodel/payments_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder:() => PaymentViewModel() , builder: (context,model,child)=>Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: Text("Payments",),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
           titleSpacing: 0,
          actions: [
            Padding(padding: EdgeInsets.only(right: 15),
            child: Row(children: [
            Icon(Icons.payment),
            ],),
            ),
          ],
        ),
        body: Padding(
          padding:EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select the payment method you want to use",style: TextStyle(letterSpacing: 1,wordSpacing: 1,fontWeight: FontWeight.w500)),
              SizedBox(height: 10,),
              Card(
                elevation: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.paypal,size:20),
                        // SizedBox(width: 0.09,),
                        Padding(
                          padding: const EdgeInsets.only(right: 190),
                          child: Text("PayPal",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Radio(value: (){}, groupValue: (){}, onChanged: null)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FontAwesomeIcons.google,size:20),
                        // SizedBox(widonly right: 190,),
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Text("Google Pay",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Radio(value: (){}, groupValue: (){}, onChanged: null)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.paypal,size:20),
                        // SizedBox(widonly only right: 190
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Text("Apple Pay",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Radio(value: (){}, groupValue: (){}, onChanged: null)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FontAwesomeIcons.idCard,size:20),
                        // SizedBox(widonly only right: 190
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Text("----4679",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Radio(value: true, groupValue: (){true;}, onChanged: null,focusColor: Colors.blue,),
                      ],
                    ),
                  ),
                ),
              ),
                        SizedBox(height: 30,),
                 InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Payments()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                        width: 400,
                        height: 50,
                          child: Center(child: Text("Add New Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)),
                          decoration:BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                          )
                        ),
                      ),
                    ),       
                        SizedBox(height: 90,),
                        InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Preview()));
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
      )
      );
  }
}