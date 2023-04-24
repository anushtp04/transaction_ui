import 'package:flutter/material.dart';

import '../components/giftPage/rewardsMainPage.dart';
import '../styleguide/colors.dart';

class GiftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: greyColor,
        appBar: AppBar(
          backgroundColor: greyColor,
          title: Text(
            "Rewards Wallet",
            style: TextStyle(color: blueColor),
          ),
          leadingWidth: 25,
          leading: Padding(
            padding: EdgeInsets.only(left: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: blueColor,
                )),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 170,
                      child: Column(
                        children: [
                          Container(
                            height: 85,
                            decoration: BoxDecoration(
                                color: blueColor,
                                gradient: LinearGradient(colors: [
                                  Color(0xFF0F1AE3),
                                  Color(0xFF2931D9),
                                  Color(0xFF4750EA),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Total Balance",
                                  style: TextStyle(fontSize: 16,color: whiteColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "14,325",
                                      style: TextStyle(
                                        color: whiteColor,
                                          fontSize: 34,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "assets/uibycompany/coin.png",
                                      height: 32,
                                      width: 32,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 90,
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Redeemable Points",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey[600]),
                                          maxLines: 2),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14,325",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: blueColor),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                            "assets/uibycompany/coin.png",
                                            height: 18,
                                            width: 18,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Expired Points",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey[600]),
                                        maxLines: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "7,803",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: blueColor),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                            "assets/uibycompany/coin.png",
                                            height: 18,
                                            width: 18,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/uibycompany/cart2.png"),
                          )),
                    ),
                  )
                ],
              ),
            ),

            ///2nd Item

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: TabBar(
                  labelColor: Colors.blue[800],
                  unselectedLabelColor: Colors.grey[500],
                  labelPadding: EdgeInsets.only(top: 8,bottom: 8),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(color: Color(0xFF174FE1),width: 3))
                  ),
                  indicatorWeight: 3,

                  tabs: [
                    Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wallet_giftcard_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rewards",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    )),
                    Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_balance_wallet),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Transactions", style: TextStyle(fontSize: 16))
                      ],
                    )),
                  ]),
            ),
            Expanded(
              child: TabBarView(children: [
                RewardsPage(),
                Center(child: Text("Transaction Page"),),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
