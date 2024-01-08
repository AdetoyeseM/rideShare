import 'package:dev_test/ui/constants/colors.dart';
import 'package:dev_test/ui/constants/text_style.dart';
import 'package:dev_test/ui/screens/homepage/ride_details.dart';
import 'package:dev_test/ui/widgets/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key, this.visible});

  final bool? visible;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, CupertinoPageRoute(builder: (context) {
          return const RideDetailsScreen();
        }));
      },
      child: Column(
        children: [
          const RideDetailsCard(),
          const SizedBox(
            height: 14,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: const AppIcons(
              icons: "map",
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BookingDetails(
            visible: visible,
          )
        ],
      ),
    );
  }
}

class RideDetailsCard extends StatelessWidget {
  const RideDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.black,
              ),
            ),
            child: const Icon(Icons.person_2),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("11/Sep/2023",
                        style: appTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                    const Spacer(),
                    Text("8:12PM",
                        style: appTextStyle.copyWith(
                            fontSize: 12,
                            color: AppColors.appGrey1,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      "4 seats",
                      style: appTextStyle.copyWith(
                          fontSize: 12,
                          color: AppColors.appGrey1,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Text("46min 10sec",
                        style: appTextStyle.copyWith(
                            fontSize: 12,
                            color: AppColors.appGrey1,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(
                      width: 14,
                    ),
                    Text("40.4 mile",
                        style: appTextStyle.copyWith(
                            fontSize: 12,
                            color: AppColors.appGrey1,
                            fontWeight: FontWeight.w400))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key, this.visible});
  final bool? visible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const AppIcons(
                icons: "green_indicator",
              ),
              const SizedBox(
                width: 13,
              ),
              Text(
                "Douglas Crescent Road",
                style: appTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 4, bottom: 2, top: 2),
            color: AppColors.appBlack,
            height: 19,
            width: 0.5,
          ),
          Row(
            children: [
              const AppIcons(
                icons: "locale",
              ),
              const SizedBox(
                width: 13,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "Logan Avenue",
                      style: appTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: const MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 1)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3))),
                            backgroundColor: const MaterialStatePropertyAll(
                                AppColors.appBlack)),
                        child: Text(
                          "N20,000",
                          style: appTextStyle.copyWith(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Visibility(
            visible: visible!,
            child: Text(
              "5 Seats Booked",
              style: appTextStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
