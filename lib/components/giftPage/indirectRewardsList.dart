import 'package:flutter/material.dart';
import 'package:uigivenbyacompany/styleguide/colors.dart';

class IndirectRewardsList extends StatelessWidget {
  final int number;
  final int orderId;
  final String valid;

  IndirectRewardsList({required this.number,required this.orderId, required this.valid});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
        color: whiteColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            child: Text("$number",style: TextStyle(color: blueColor,fontSize: 26,fontWeight: FontWeight.bold)),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Order ID - $orderId",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Valid Till",style: TextStyle(color: Colors.grey[600]),),
                Text(valid,style: TextStyle(color: Colors.grey[600]))
              ],
            ),
          )
        ],
      )


      // ListTile(
      //   leading: Text("$number",style: TextStyle(color: blueColor,fontSize: 26,fontWeight: FontWeight.bold),),
      //   title: Text("Order ID - $orderId",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
      //   trailing: Text("Valid Till \n $valid",),
      // ),
    );
  }
}
