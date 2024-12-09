import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDialog {
  const CustomDialog._();

  static void twoButtonDialog({
    required BuildContext context,
    required String textBody,
    required String textButton1,
    required String textButton2,
    required void Function() onPressed,
    required bool isLoading,
  }) {
    showDialog<dynamic>(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 20,
          ),
          child: Center(
            child: Text(textBody, style: TextStyles.font14WhiteSemiBold),
          ),
        ),
        actions: [
          AppTextButton(
            onPressed: onPressed,
            buttonText: textButton1,
            textStyle: TextStyles.font15grayRegular,
          ),
          const SizedBox(height: 10, width: 1),
          AppTextButton(
            onPressed: () {
              context.pop();
            },
            buttonText: textButton2,
            textStyle: TextStyles.font15grayRegular,
          ),
        ],
      ),
    );
  }
}
