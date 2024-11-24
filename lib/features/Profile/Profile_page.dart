import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/Profile/widgets/Bank_Account_Details.dart';
import 'package:ecommerce/features/Profile/widgets/Business_Address_Details.dart';
import 'package:ecommerce/features/Profile/widgets/Personal_Details.dart';
import 'package:ecommerce/features/Profile/widgets/img_profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/routes.dart';
import '../../core/theme/colors.dart';
import '../../core/widgets/app_text_button.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  bool isObscureTextPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Checkout", style: TextStyles.font24BlackBold),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: MediaQuery.of(context).size.height * 0.07),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const imgProfile(),
                const PersonalData(),
                const Divider(height: 3, color: ColorsManager.lighterBlack),
                const BusinessAddressData(),
                const Divider(height: 3, color: ColorsManager.lighterBlack),
                const BankAccountData(),
                AppTextButton(
                  backgroundColor: ColorsManager.red,
                  buttonHeight: 60,
                  buttonText: 'save',
                  textStyle: TextStyles.font20WhiteMedium,
                  onPressed: () {
                    GoRouter.of(context).push(Routes.kButtomNavigationBar);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
