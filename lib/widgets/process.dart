import 'dart:ui';

import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';
import 'package:topl_consensus_landing_page/helpers.dart';

class Process extends StatelessWidget {
  const Process({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    Padding returnNumberStep(numberStep, textStep) {
      const gradient = LinearGradient(
        colors: <Color>[
          ToplColors.tertiary,
          ToplColors.primaryGradient,
        ],
      );

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SimpleShadow(
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return gradient.createShader(Offset.zero & bounds.size);
                  },
                  child: Center(
                    child: Text(
                      numberStep,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isSmallScreen(context) ? 30.0 : 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              opacity: 0.1,
              color: Colors.grey,
              offset: const Offset(1, 1),
              sigma: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                textStep,
                style: ToplTextStyles.body1.copyWith(
                  color: Colors.white,
                  shadows: [
                    const Shadow(
                      blurRadius: 10.0,
                      color: Colors.grey,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      width: screenSize.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("assets/images/mother_daughter.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.center,
            color: Colors.black.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 140),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Application Process',
                    style: ToplTextStyles.h2.copyWith(
                      color: Colors.white,
                      shadows: [
                        const Shadow(
                          blurRadius: 10.0,
                          color: Colors.grey,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.48),
                    child: const Divider(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        lg: 4,
                        child: returnNumberStep("1", "Find your team and envision a better world"),
                      ),
                      ResponsiveGridCol(
                        lg: 4,
                        child: returnNumberStep("2", "Inspire us with what you'll accomplish"),
                      ),
                      ResponsiveGridCol(
                        lg: 4,
                        child: returnNumberStep("3", "Leverage Topl's technology and expertise to unleash your impact"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SimpleShadow(
                    child: SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () => html.window.open('https://topl.typeform.com/to/u1gCxpFe', 'new tab'),
                        style: ElevatedButton.styleFrom(
                          primary: ToplColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Apply for Grant',
                            style: ToplTextStyles.body1.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    opacity: 0.1,
                    color: Colors.grey,
                    offset: const Offset(1, 1),
                    sigma: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
