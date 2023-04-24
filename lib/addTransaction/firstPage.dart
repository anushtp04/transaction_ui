import 'package:flutter/material.dart';
import 'package:uigivenbyacompany/addTransaction/secondPage.dart';
import 'package:uigivenbyacompany/styleguide/colors.dart';

import '../main.dart';

class AddTransactionFirstPage extends StatefulWidget {

  @override
  State<AddTransactionFirstPage> createState() => _AddTransactionFirstPageState();
}

class _AddTransactionFirstPageState extends State<AddTransactionFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: SafeArea(
     child: Container(
       height: double.infinity,
       width: double.infinity,
       color: greyColor,
       padding: EdgeInsets.only(left: 20,right: 20,top: 20),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               height: 40,
               width: 40,
               padding: EdgeInsets.only(left: 5),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: whiteColor
               ),
               child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: blueColor,)),
             ),
             Padding(
               padding: EdgeInsets.only(top: 40,bottom: 15 ),
               child: Text("Enter the invoice number",style: TextStyle(fontSize: 20,color: blueColor,fontWeight: FontWeight.w600),),
             ),
             TextField(
               decoration: InputDecoration(
                 hintText: "Eg. 654748635",
                 hintStyle: TextStyle(color: Colors.grey[400],fontSize: 18),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(12),
                   borderSide: BorderSide.none
                 ),
                 filled: true,
                 fillColor: whiteColor,

               ),
             ),
             Container(
               margin: EdgeInsets.only(top: 20,bottom: 100),
               height: 350,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/uibycompany/transaction.png"),
                 )
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Expanded(
                   child: GestureDetector(
                     onTap: () {
                       setState(() {
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                           return HomePagePurchase();
                         },));
                       });
                     },
                     
                     child: Container(
                       height: 45,
                       decoration: BoxDecoration(
                         color: whiteColor,
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           Icon(Icons.arrow_back_ios, color: blueColor,size: 18,),
                           SizedBox(width: 5,),
                           Text("Back",style: TextStyle(color: blueColor,fontSize: 16,fontWeight: FontWeight.w600),)
                         ],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(width: 10,),
                 Expanded(
                   child: GestureDetector(
                     onTap: () {
                       setState(() {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                           return AddTransactionSecondPage();
                         },));
                       });
                     },
                     child: Container(
                       height: 45,
                       decoration: BoxDecoration(
                           color: blueColor,
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           Text("Next",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.w600),),
                           SizedBox(width: 5,),
                           Icon(Icons.arrow_forward_ios, color: whiteColor,size: 18,),
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             )
           ],
         ),
       ),
     ),
   ),
    );
  }
}
