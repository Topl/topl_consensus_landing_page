import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';

class CommunityForward extends StatelessWidget {
  const CommunityForward({Key? key}) : super(key: key);

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(right: 40, left: screenSize.width * 0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Community-forward',
                    style: ToplTextStyles.h2.copyWith(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'No minimums required for staking participation and governance that will set a new standard for community control of funds and decisions, Topl embraces inclusion as a core tenet of not just what we want to enable but of how we’re built.',
                    style: ToplTextStyles.h4.copyWith(color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SimpleShadow(
                  child: Image.asset(
                    'images/community_forward.png',
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
        ],
      ),
    );
  }
}
