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
                        "images/mercury.png",
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
                        "images/cryptology.png",
                        width: 70,
                        height: 70,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "images/republic.png",
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
                        "images/mercy_corps.png",
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
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "images/iconic.png",
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
                        "images/blue_collective.png",
                        width: 40,
                        height: 40,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "images/sic.png",
                        width: 100,
                        height: 100,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "images/goose.png",
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
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "images/capital_factory.png",
                        width: 100,
                        height: 100,
                        color: ToplColors.greyText,
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        "images/bvc.png",
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
                        "images/A100x.png",
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
                        "images/chingona.png",
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
