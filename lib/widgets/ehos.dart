import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';
import 'package:topl_consensus_landing_page/helpers.dart';

class Ethos extends StatelessWidget {
  final Map<String, String> ethosData;

  const Ethos({required this.ethosData, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    EdgeInsets returnEdgeInsertsByDirection() {
      return ethosData["iconPlacement"]! == 'left'
          ? EdgeInsets.only(
              right: screenSize.width * 0.2,
            )
          : EdgeInsets.only(
              left: screenSize.width * 0.2,
            );
    }

    var pageData = [
      ResponsiveGridCol(
        lg: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SimpleShadow(
              child: SvgPicture.asset(
                ethosData["icon"]!,
                width: 300,
              ),
              opacity: 0.5,
              color: Colors.white,
              offset: const Offset(1, 1),
              sigma: 10,
            ),
          ],
        ),
      ),
      ResponsiveGridCol(
        lg: 6,
        child: Padding(
          padding: isExtraLargeScreen(context) || isLargeScreen(context)
              ? returnEdgeInsertsByDirection()
              : EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.1,
                ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ethosData["title"]!,
                style: ToplTextStyles.h2.copyWith(color: Colors.white),
                textAlign: TextAlign.left,
              ),
              Text(
                ethosData["subtitle"]!,
                style: ToplTextStyles.h4.copyWith(color: Colors.white, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    ];

    return ResponsiveGridRow(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
          ethosData["iconPlacement"]! == 'left' && !isSmallScreen(context) ? pageData : pageData.reversed.toList(),
    );
  }
}
