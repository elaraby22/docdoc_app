import 'package:curely_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:curely_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:curely_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                DoctorImageAndText(),
                Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13GreyRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GetStartedButton()
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
