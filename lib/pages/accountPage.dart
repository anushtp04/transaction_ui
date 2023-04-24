import 'package:flutter/material.dart';
import 'package:uigivenbyacompany/components/accountpage/accountPageList.dart';
import 'package:uigivenbyacompany/styleguide/colors.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: blueColor)),
        title: Text("Account",style: TextStyle(color: blueColor),),
        centerTitle: true,
        elevation: 0,
        leadingWidth: 80,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: MediaQuery.of(context).size.height*0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
              color: Colors.white70,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white,width: 5),
                    image: DecorationImage(
                      image: AssetImage("assets/uibycompany/beckham.jpg"),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                Text("David Beckham",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.mail_outline_outlined,color: blueColor,),
                    SizedBox(width: 5,),
                    Text("davidbeckham23@gmail.com",style: TextStyle(color: Colors.grey[600]))
                ],),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android,color: blueColor,),
                    SizedBox(width: 5,),
                    Text("9895123456",style: TextStyle(color: Colors.grey[600]),)
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade800,
                        Colors.blue.shade700,
                        Colors.blue.shade600,
                      ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter

                    )
                  ),
                  height: 35,width: 120,
                  child: Text("Edit Profile",style: TextStyle(color: whiteColor,fontSize: 15,fontWeight: FontWeight.w600),),
                )
              ],
            ),
          ),
          Expanded(child: ListView(
            children: [
              AccountPageList(leading: Icons.wallet, title: "My Wallet", trailing: Icons.arrow_forward_ios),
              AccountPageList(leading: Icons.policy, title: "Terms & Policies", trailing: Icons.arrow_forward_ios),
              AccountPageList(leading: Icons.info, title: "About", trailing: Icons.arrow_forward_ios),
              AccountPageList(leading: Icons.logout, title: "Logout", trailing: Icons.arrow_forward_ios),
            ],
          ))
        ],
      ),
    );
  }
}
