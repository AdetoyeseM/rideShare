import 'package:dev_test/ui/constants/colors.dart';
import 'package:dev_test/ui/constants/text_style.dart';
import 'package:dev_test/ui/widgets/icons.dart';
import 'package:flutter/material.dart';

class Riderscard extends StatelessWidget {
  const Riderscard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                height: 44,
                width: 44,
                child: AppIcons(image: "avatar"),
              ),
              const SizedBox(
                width: 22,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Saraj Jacob"),
                        Text("8:12PM",
                            style: appTextStyle.copyWith(
                                fontSize: 12,
                                color: AppColors.appGrey1,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  size: 18,
                                  color: AppColors.starColor,
                                ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const AppIcons(
                  icons: "locale",
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Logan Avenue",
                  style: appTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                const AppIcons(
                  icons: "call",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
