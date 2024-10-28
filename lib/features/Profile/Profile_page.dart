import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/Profile/widgets/Bank_Account_Details.dart';
import 'package:ecommerce/features/Profile/widgets/Business_Address_Details.dart';
import 'package:ecommerce/features/Profile/widgets/Personal_Details.dart';
import 'package:ecommerce/features/Profile/widgets/img_profile.dart';
import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';
import '../../core/widgets/app_text_button.dart';

class peofilePage extends StatefulWidget {
  const peofilePage({super.key});

  @override
  State<peofilePage> createState() => _peofilePageState();
}

class _peofilePageState extends State<peofilePage> {
  bool isObscureTextPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Checkout",style: TextStyles.font24BlackBold),
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
                imgProfile(),
                PersonalData(),
                const Divider(height:3,color: ColorsManager.lighterBlack),
                BusinessAddressData(),
                const Divider(height:3,color: ColorsManager.lighterBlack),
                BankAccountData(),

                AppTextButton(
                  backgroundColor: ColorsManager.red,
                  buttonHeight: 60,
                  buttonText: 'save',
                  textStyle: TextStyle(color: Colors.white, fontSize: 25),
                  onPressed: () {},
                ),
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
