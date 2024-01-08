import 'package:dev_test/ui/constants/colors.dart';
import 'package:dev_test/ui/constants/text_style.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
            vertical: 5,
          )),
          backgroundColor: MaterialStatePropertyAll(AppColors.appBlack)),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            "     Start Trip",
            style: appTextStyle.copyWith(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.white.withOpacity(.1)),
            height: 45,
            width: 45,
            child: const Icon(
              Icons.arrow_forward,
              color: AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}
