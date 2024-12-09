import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/helper/bottom_sheet/custom_bottom_sheet.dart';
import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/admin/presentation/categories/widgets/update_category_bottom_sheet.dart';
import 'package:ecommerce/features/admin/presentation/widgets/container_admin_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    required this.title,
    required this.icon,
    required this.isLoading,
    required this.isSuccess,
    super.key,
  });
  final String title;
  final String icon;
  final bool isLoading;
  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      effect: ShimmerEffect(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
      ),
      child: ContainerAdminItem(
        child: Row(
          children: [
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(title, style: TextStyles.font12GreyMedium),
                const Spacer(),
                if (isSuccess)
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          CustomBottomSheet.showModalBottomSheetContainer(
                            context: context,
                            whenComplete: () async {},
                            backgroundColor: ColorsManager.mainBlue,
                            widget: const UpdateCategoryBottomSheet(),
                          );
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  )
                else
                  const SizedBox.shrink(),
                const Spacer(),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 90,
              child: CachedNetworkImage(
                imageUrl: icon,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(
                  value: downloadProgress.progress,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
