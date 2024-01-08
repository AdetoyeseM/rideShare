import 'package:dev_test/ui/constants/colors.dart';
import 'package:dev_test/ui/constants/text_style.dart';
import 'package:dev_test/ui/widgets/button.dart';
import 'package:dev_test/ui/widgets/divider.dart';
import 'package:dev_test/ui/widgets/map_card.dart';
import 'package:dev_test/ui/widgets/riders_card.dart';
import 'package:flutter/material.dart';

class RideDetailsScreen extends StatelessWidget {
  const RideDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.black,
          automaticallyImplyLeading: true,
          title: Text(
            "Ride Share",
            style: appTextStyle,
          )),
      body: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          const MapCard(
            visible: true,
          ),
          const AppDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Text(
              "Riders",
              style: appTextStyle.copyWith(fontSize: 16),
            ),
          ),
          const Riderscard(),
          const AppDivider(),
          const Riderscard(),
          const AppDivider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: AppButton(),
          )
        ],
      ),
    );
  }
}
