import 'package:flutter/material.dart';
import '../../data/butterflies_data.dart';
import '../../core/responsive/app_size.dart';
import '../../core/responsive/device_info.dart';
import '../../data/butterfly_model.dart';
import 'butterfly_card.dart';
import '../../core/widgets/video.dart';
import '../detail_screen/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Butterfly? _selected;

  @override
  Widget build(BuildContext context) {
    final isPortrait = DeviceInfo.isPhonePortrait(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const MainVideoBackground(),
          SafeArea(
            child: isPortrait
                ? ListView.builder(
                    itemCount: allButterflies.length,
                    itemBuilder: (_, i) {
                      final b = allButterflies[i];
                      return Padding(
                        padding: EdgeInsets.only(
                          top: AppSizes.mediumPadding(context),
                        ),
                        child: ButterflyCard(
                          butterfly: b,
                          selected: false,
                          onTap: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                maintainState: true,
                                opaque: false,
                                pageBuilder: (_, _, _) =>
                                    DetailScreenOverlay(butterfly: b),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  )
                // Большие экраны
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Список карточек слева
                      SizedBox(
                        width: AppSizes.cardWidth(context),
                        child: ListView.builder(
                          itemCount: allButterflies.length,
                          itemBuilder: (_, i) {
                            final b = allButterflies[i];
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: AppSizes.smallPadding(context),
                                horizontal: AppSizes.smallPadding(context),
                              ),
                              child: ButterflyCard(
                                butterfly: b,
                                selected: _selected == b,
                                onTap: () {
                                  setState(() {
                                    _selected = b;
                                  });
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: AppSizes.mediumPadding(context)),
                      // Правая панель с деталями
                      Expanded(
                        child: _selected == null
                            ? Container()
                            : Padding(
                                padding: AppSizes.detailPanelOuterPadding(
                                  context,
                                ),
                                child: DetailScreenOverlay(
                                  butterfly: _selected!,
                                ),
                              ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
