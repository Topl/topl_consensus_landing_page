import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';
import 'package:topl_consensus_landing_page/helpers.dart';

class GlobalGaps extends StatelessWidget {
  const GlobalGaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    returnPaddingByScreenSize() {
      if (isSmallScreen(context) || isMediumScreen(context)) {
        return 0.0;
      }

      return 50.0;
    }

    return Container(
      width: screenSize.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Join us in closing these global gaps',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveGridCol(
                    lg: 4,
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/global_warming.svg',
                          width: 300,
                          color: ToplColors.defaultText,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Carbon reduction gap',
                          style: ToplTextStyles.h3,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: returnPaddingByScreenSize(),
                          ),
                          child: Text(
                            'We need to cut carbon emissions by 28 billion tonnes of CO2 per year beyond current commitments to maintain global warming at only 1.5C',
                            style: ToplTextStyles.body1.copyWith(color: ToplColors.greyText),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/gender_scale.svg',
                          width: 300,
                          color: ToplColors.defaultText,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Gender access to \ncapital gap',
                          style: ToplTextStyles.h3,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: returnPaddingByScreenSize(),
                          ),
                          child: Text(
                            '1 billion women worldwide still do not have access to the global financial system',
                            style: ToplTextStyles.body1.copyWith(color: ToplColors.greyText),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/wealth_gap.svg',
                          width: 300,
                          color: ToplColors.defaultText,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Global wealth gap',
                          style: ToplTextStyles.h3,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: returnPaddingByScreenSize(),
                          ),
                          child: Text(
                            "The world's 26 richest people have more wealth than the world's poorest 3.8 billion people",
                            style: ToplTextStyles.body1.copyWith(color: ToplColors.greyText),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
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
