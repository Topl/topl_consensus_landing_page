import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';

class ScalableAndInterconnected extends StatelessWidget {
  const ScalableAndInterconnected({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.only(bottom: 140),
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
                      'images/scalable_and_interconnected.png',
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
                      'Scalable and interconnected',
                      style: ToplTextStyles.h2.copyWith(color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Blockchains thrive with scale and complexity. The Topl Protocol was designed as a L0 ecosystem of compatible chains with a focus on highly composable token and smart contract design.',
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
