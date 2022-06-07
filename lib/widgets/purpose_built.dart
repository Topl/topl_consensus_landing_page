import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';

class PurposeBuilt extends StatelessWidget {
  const PurposeBuilt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            ToplColors.tertiary,
            ToplColors.primaryGradient,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 140),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SimpleShadow(
                    child: Image.asset(
                      'images/purpose_built.png',
                      width: 480,
                    ),
                    opacity: 0.5,
                    color: Colors.white,
                    offset: const Offset(1, 1),
                    sigma: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: screenSize.width * 0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Purpose-built',
                      style: ToplTextStyles.h2.copyWith(color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Topl was conceived from the idea that sustainable and inclusive transformation requires technology built to spec. The protocol is uniquely designed to unlock and incentivize positive impact through its adoption.',
                      style: ToplTextStyles.h4.copyWith(color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
