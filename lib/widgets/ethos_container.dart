import 'package:flutter/material.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/widgets/ehos.dart';

class EthosContainer extends StatelessWidget {
  const EthosContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final ethosData = [
      {
        "title": "Purpose-built",
        "subtitle":
            "Topl was conceived from the idea that sustainable and inclusive transformation requires technology built to spec. The protocol is uniquely designed to unlock and incentivize positive impact through its adoption.",
        "icon": "assets/images/purpose_built.svg",
        "iconPlacement": "left",
      },
      {
        "title": "Community-forward",
        "subtitle":
            "No minimums are required for staking participation and governance that will set a new standard for community control of funds and decisions. Topl embraces inclusion as a core tenet of what we want to enable and how we're built.",
        "icon": "assets/images/community_forward.svg",
        "iconPlacement": "right",
      },
      {
        "title": "Scalable and interconnected",
        "subtitle":
            "Blockchains thrive with scale and complexity. The Topl Protocol was designed as an L0 ecosystem of compatible chains focused on highly composable token and smart contract design.",
        "icon": "assets/images/scalable_interconnected.svg",
        "iconPlacement": "left",
      },
    ];

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
      child: Column(
        children: [
          SizedBox(height: 100),
          Ethos(ethosData: ethosData[0]),
          Ethos(ethosData: ethosData[1]),
          Ethos(ethosData: ethosData[2]),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
