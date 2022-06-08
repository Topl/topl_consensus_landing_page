import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';

class HeroHeader extends StatelessWidget {
  const HeroHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.55,
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
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Blockchain For Good',
                    style: ToplTextStyles.h1.copyWith(color: Colors.white),
                  ),
                  Text(
                    'Decentralized protocol optimized to unlock the next wave of inclusive, sustainable innovation across supply chains, markets, and the next billion.',
                    style: ToplTextStyles.h3.copyWith(color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SimpleShadow(
                    child: SvgPicture.asset(
                      'images/blockchain.svg',
                      width: 435,
                      color: Colors.white,
                    ),
                    opacity: 0.5,
                    color: Colors.white,
                    offset: const Offset(1, 1),
                    sigma: 10,
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
