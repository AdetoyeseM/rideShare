import 'package:dev_test/ui/constants/colors.dart';
import 'package:dev_test/ui/constants/text_style.dart';
import 'package:dev_test/ui/widgets/divider.dart';
import 'package:dev_test/ui/widgets/map_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Ride Share",
          style: appTextStyle,
        )),
        body: DefaultTabController(
            length: 3,
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(
                    right: 8, left: 8, top: 22, bottom: 32),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.appBlack,
                    )),
                child: TabBar(
                  labelStyle: appTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffF7F7F7)),
                  unselectedLabelStyle: appTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appGrey1),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                      color: AppColors.appBlack),
                  tabs: const [
                    Tab(
                      child: Text(
                        'Upcoming',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Completed',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Create New',
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [HomepageView(), HomepageView(), HomepageView()],
                ),
              ),
            ])));
  }
}

class HomepageView extends StatelessWidget {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MapCard(
          visible: false,
        ),
       AppDivider(),
        MapCard(
          visible: false,
        ),
      ],
    );
  }
}
