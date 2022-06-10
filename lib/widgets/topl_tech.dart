import 'dart:async';

import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:topl_consensus_landing_page/helpers.dart';

class ToplTech extends StatelessWidget {
  const ToplTech({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    List<Widget> returnSocialButtons() {
      return [
        SizedBox(
          width: 200,
          child: SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () => html.window.open('https://wiki.topl.co', 'new tab'),
              style: ElevatedButton.styleFrom(
                primary: ToplColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.bookAtlas,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      'Visit Wiki',
                      style: ToplTextStyles.body1Bold.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 200,
          child: SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () => html.window.open('https://github.com/topl', 'new tab'),
              style: ElevatedButton.styleFrom(
                primary: ToplColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.github,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      'Visit Github',
                      style: ToplTextStyles.body1Bold.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ];
    }

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
        padding: const EdgeInsets.symmetric(vertical: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Topl's Tech",
              style: ToplTextStyles.h2.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Purpose-built and community-informed, the Topl Protocol was designed to be different. More secure, composable, and affordable.",
              style: ToplTextStyles.body1.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.48),
              child: const Divider(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 3,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ItemTile(itemNo: 0),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ItemTile(itemNo: 1),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ItemTile(itemNo: 2),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 3,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ItemTile(itemNo: 3),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            isSmallScreen(context)
                ? Column(
                    children: returnSocialButtons(),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: returnSocialButtons(),
                  ),
          ],
        ),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;

  const ItemTile({
    Key? key,
    required this.itemNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List grantProgramConditions = [
      {
        'title': 'Dual Tokenomics',
        'subtitle':
            "Key to supporting broad networks of users is ensuring transaction fees remain low and stable even as the network grows. With a dual-token design, Topl's users benefit from a dedicated stablecoin for payments.",
        'imageLink': 'assets/images/tokens.svg',
      },
      {
        'title': 'Smart Assets and DSL',
        'subtitle':
            'With a community and user-informed design mentality, Topl has incorporated a robust token system, supporting (non-)fungibility and many other token behaviors, along with a simple and efficient DSL, Quivr.',
        'imageLink': 'assets/images/diamond.svg',
      },
      {
        'title': 'Layer 2 Smart Contracts',
        'subtitle':
            "For the use-cases where Quivr proves to limiting, the second layer of Topl's ledger logic system comes into play. Topl integrates the fully Turing-complete Digital Asset Modeling Language (DAML) as a scalable, privacy preserving layer 2 scheme.",
        'imageLink': 'assets/images/contract.svg',
      },
      {
        'title': 'Taktikos PoS',
        'subtitle':
            "Topl's novel consensus algorithm, Taktikos, breaks the trend of allowing only those users with extremely large token balances to participate in staking while at the same time being the first protocol to exceed the security guarantees of Bitcoin's Proof-of-Work.",
        'imageLink': 'assets/images/pos.svg',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SimpleShadow(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 700,
          ),
          child: DecoratedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    grantProgramConditions[itemNo]['imageLink'],
                    width: 300,
                    color: ToplColors.defaultText,
                  ),
                  Text(
                    grantProgramConditions[itemNo]['title'],
                    style: ToplTextStyles.h3.copyWith(color: ToplColors.defaultText),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    grantProgramConditions[itemNo]['subtitle'],
                    style: ToplTextStyles.body1.copyWith(color: ToplColors.greyText),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
        opacity: 0.2,
        color: Colors.black,
        offset: const Offset(1, 1),
        sigma: 6,
      ),
    );
  }
}
