import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';

class BackedBy extends StatelessWidget {
  const BackedBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      color: ToplColors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Backed By',
              style: ToplTextStyles.h2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.48),
              child: const Divider(
                color: ToplColors.greyText,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/mercury.png",
                        width: 80,
                        height: 80,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/iconic.png",
                        width: 50,
                        height: 50,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/mercy_corps.png",
                        width: 60,
                        height: 60,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/capital_factory.png",
                        width: 100,
                        height: 100,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/blue_collective.png",
                        width: 40,
                        height: 40,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/sic.png",
                        width: 100,
                        height: 100,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/goose.png",
                        width: 60,
                        height: 60,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/bvc.png",
                        width: 80,
                        height: 80,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/A100x.png",
                        width: 80,
                        height: 80,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "assets/images/chingona.png",
                        width: 60,
                        height: 60,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
