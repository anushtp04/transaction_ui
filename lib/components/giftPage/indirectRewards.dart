import 'package:flutter/material.dart';
import 'package:uigivenbyacompany/components/giftPage/indirectRewardsList.dart';
import 'package:uigivenbyacompany/styleguide/colors.dart';

class IndirectRewards extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: ListView(
        children: [
          IndirectRewardsList(number: 26, orderId: 6463783112, valid: "Jan 12, 2023"),
          IndirectRewardsList(number: 12, orderId: 7648464834, valid: "Jan 24, 2023"),
          IndirectRewardsList(number: 31, orderId: 1287393783, valid: "Feb 04, 2023"),
          IndirectRewardsList(number: 52, orderId: 3894746327, valid: "Mar 5, 2023"),
          IndirectRewardsList(number: 14, orderId: 9674537332, valid: "Mar 15, 2023"),
          IndirectRewardsList(number: 12, orderId: 6252427223, valid: "Mar 23, 2023"),
          IndirectRewardsList(number: 09, orderId: 8236353621, valid: "Apr 10, 2023"),
          IndirectRewardsList(number: 48, orderId: 4895736486, valid: "Apr 20, 2023"),
          IndirectRewardsList(number: 72, orderId: 2784565480, valid: "May 3, 2023"),
          IndirectRewardsList(number: 89, orderId: 9375647321, valid: "Jun 23, 2023"),
        ],
      ),
    );
  }
}
