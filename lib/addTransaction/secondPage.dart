import 'package:flutter/material.dart';
import 'package:uigivenbyacompany/styleguide/colors.dart';

import '../main.dart';

class AddTransactionSecondPage extends StatefulWidget {

  @override
  State<AddTransactionSecondPage> createState() => _AddTransactionSecondPageState();
}

class _AddTransactionSecondPageState extends State<AddTransactionSecondPage> {
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
               child: Text("Enter invoice Date",style: TextStyle(fontSize: 20,color: blueColor,fontWeight: FontWeight.w600),),
             ),
             TextField(
               decoration: InputDecoration(
                 hintText: "Eg. December 12,2022",
                 hintStyle: TextStyle(color: Colors.grey[400],fontSize: 18),
                 suffixIcon:
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.calendar_month,size: 30,color: Colors.grey[500],),
                     Icon(Icons.keyboard_arrow_down_sharp,size: 40,color: Colors.grey[500],)
                   ],
                 ),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(12),
                   borderSide: BorderSide.none
                 ),
                 filled: true,
                 fillColor: whiteColor,

               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 20,bottom: 15 ),
               child: Text("Enter the Amount",style: TextStyle(fontSize: 20,color: blueColor,fontWeight: FontWeight.w600),),
             ),
             TextField(
               decoration: InputDecoration(
                 hintText: "Eg. 2500",
                 hintStyle: TextStyle(color: Colors.grey[400],fontSize: 18),
                 suffixIcon:
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.calendar_month,size: 30,color: Colors.grey[500],),
                     Icon(Icons.keyboard_arrow_down_sharp,size: 40,color: Colors.grey[500],)
                   ],
                 ),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(12),
                   borderSide: BorderSide.none
                 ),
                 filled: true,
                 fillColor: whiteColor,

               ),
             ),
             Container(
               margin: EdgeInsets.only(top: 20),
               height: 330,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/uibycompany/transaction.png"),
                   fit: BoxFit.fill
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
                         Navigator.of(context).pop();
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
                           return HomePagePurchase();
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
                           Text("Submit",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.w600),),
                           SizedBox(width: 5,),
                           Icon(Icons.check_circle_outline, color: whiteColor,size: 20,),
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
