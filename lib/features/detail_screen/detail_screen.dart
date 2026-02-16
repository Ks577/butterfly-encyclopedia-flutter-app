import 'package:flutter/material.dart';
import 'package:lepidopterology_app/core/theme/app_text_styles.dart';
import 'package:lepidopterology_app/features/detail_screen/3d_button.dart';
import '../../core/responsive/app_size.dart';
import '../../core/widgets/glass_container.dart';
import '../../data/butterfly_model.dart';
import '../3d_model_screen/3d_screen.dart';

class DetailScreenOverlay extends StatelessWidget {
  final Butterfly butterfly;

  const DetailScreenOverlay({super.key, required this.butterfly});

  @override
  Widget build(BuildContext context) {
    final imageWidth = AppSizes.detailImageWidth(context);
    final imageHeight = AppSizes.detailImageHeight(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Padding(
                padding: AppSizes.detailPanelInnerPadding(context),
                child: GlassContainer(
                  borderRadius: AppSizes.cardRadius(context),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.detailHorizontalPadding(context),
                    ),
                    child: Padding(
                      padding: AppSizes.detailPanelOuterPadding(context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: AppSizes.mediumPadding(context)),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              AppSizes.cardRadius(context),
                            ),
                            child: Image.network(
                              butterfly.imageUrl,
                              width: imageWidth,
                              height: imageHeight,
                              fit: BoxFit.cover,
                              loadingBuilder: (context, child, progress) {
                                if (progress == null) return child;
                                return SizedBox(
                                  width: imageWidth,
                                  height: imageHeight,
                                  child: const Center(
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                );
                              },
                              errorBuilder: (_, _, _) => SizedBox(
                                width: imageWidth,
                                height: imageHeight,
                                child: const Center(child: Icon(Icons.error)),
                              ),
                            ),
                          ),
                          SizedBox(height: AppSizes.mediumPadding(context)),
                          Text(
                            butterfly.name,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.detailTitle(context),
                          ),
                          SizedBox(height: AppSizes.largePadding(context)),
                          Butterfly3DButton(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => Butterfly3DScreen(
                                    modelUrl: butterfly.modelUrl!,
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: AppSizes.largePadding(context)),
                          Text(
                            butterfly.description,
                            textAlign: TextAlign.justify,
                            style: AppTextStyles.detailDescription(context),
                          ),
                          SizedBox(height: AppSizes.largePadding(context)),
                        ],
                      ),
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
