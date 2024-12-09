import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/admin/presentation/widgets/container_admin_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DashBoardContainer extends StatelessWidget {
  const DashBoardContainer({
    required this.title,
    required this.icon,
    required this.num,
    required this.isLoading,
    super.key,
  });
  final String title;
  final String icon;
  final String num;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ContainerAdminItem(
      child: Row(
        children: [
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(title,
                  style: TextStyles.font20WhiteMedium
                      .copyWith(fontWeight: FontWeight.bold)),
              const Spacer(),
              Skeletonizer(
                enabled: isLoading,
                effect: ShimmerEffect(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                ),
                child: Text(num, style: TextStyles.font20WhiteMedium),
              ),
              const Spacer(),
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 90,
            child: Image.asset(icon),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
