import 'package:flutter/material.dart';
import 'package:lepidopterology_app/core/theme/app_text_styles.dart';
import '../../core/responsive/app_size.dart';
import '../../core/widgets/glass_container.dart';
import '../../data/butterfly_model.dart';

class ButterflyCard extends StatelessWidget {
  final Butterfly butterfly;
  final VoidCallback onTap;
  final bool selected;

  const ButterflyCard({
    super.key,
    required this.butterfly,
    required this.onTap,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final imageSize = AppSizes.cardImageSize(context);
    final cardWidth = AppSizes.cardWidth(context);
    final headerHeight = AppSizes.cardHeaderHeight(context);
    final imageMul = AppSizes.cardImageMultiplier(context);
    final leftMul = AppSizes.cardTextLeftPaddingMultiplier(context);
    final topMul = AppSizes.cardTextTopPaddingMultiplier(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.mediumPadding(context),
        vertical: AppSizes.smallPadding(context),
      ),

      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: cardWidth),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            GlassContainer(
              child: ExpansionTile(
                initiallyExpanded: selected,
                title: SizedBox(
                  width: cardWidth,
                  height: headerHeight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: imageSize * leftMul,
                      top: imageSize * topMul,
                      bottom: 6,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        butterfly.name,
                        style: AppTextStyles.cardTitle(
                          context,
                          selected: selected,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                // Раскрытие контента
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(
                      AppSizes.mediumPadding(context),
                    ),
                    title: Text(
                      butterfly.info,
                      style: AppTextStyles.cardInfo(context),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -imageSize * 0.25,
              left: -imageSize * 0.22,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.network(
                      butterfly.imageUrl,
                      width: imageSize * imageMul,
                      height: imageSize * imageMul,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
