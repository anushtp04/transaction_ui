import 'package:flutter/material.dart';
import 'package:uigivenbyacompany/components/giftPage/indirectRewards.dart';

import '../../styleguide/colors.dart';

class RewardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
          backgroundColor: greyColor,
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                height: 60,
                child: TabBar(
                  labelPadding: EdgeInsets.zero,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    labelColor: Colors.blue[800],
                    unselectedLabelColor: Colors.grey[500],
                    indicator: BoxDecoration(color: greyColor),
                    tabs:  [

                      Tab(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10),
                          width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          child: Text("All"),
                        ),
                      ),
                      Tab(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10),
                          width: 140,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          child: Text("Direct Rewards"),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          alignment: Alignment.center,
                          width: 140,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          child: Text("Indirect Rewards"),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(
                    children: [
                  Center(child: Text("All",),),
                  Center(child: Text("Direct Rewards",),),
                  IndirectRewards()
                ]),
              )
            ],
          )),
    );
  }
}
