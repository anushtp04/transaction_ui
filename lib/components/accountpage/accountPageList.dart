import 'package:flutter/material.dart';

import '../../styleguide/colors.dart';

class AccountPageList extends StatelessWidget {
  final IconData leading;
  final String title;
  final IconData trailing;

  AccountPageList({required this.leading,required this.title, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white54
      ),
      child: ListTile(
        leading: Icon(leading,color: blueColor,),
          title: Text(title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
        trailing: Icon(trailing,color: blueColor,),
      ),
    );
  }
}
