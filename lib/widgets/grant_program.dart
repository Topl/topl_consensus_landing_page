import 'dart:async';

import 'package:flip_board/flip_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';
import 'package:topl_consensus_landing_page/helpers.dart';

class GrantProgram extends StatelessWidget {
  const GrantProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    Stream<int> generateNumbers = (() async* {
      List<int> nums = [0, 1];

      for (var element in nums) {
        await Future<void>.delayed(const Duration(milliseconds: 500));
        yield element;
      }
    })();

    StreamController<int> controller = StreamController<int>.broadcast();
    Stream<int> stream = controller.stream;

    renderFlipWidget(int count) {
      var createElementList = List.generate(
        count,
        (i) => Padding(
          padding: EdgeInsets.symmetric(horizontal: isSmallScreen(context) ? 4 : 8),
          child: FlipWidget(
            flipType: FlipType.middleFlip,
            itemStream: stream,
            itemBuilder: _itemBuilder,
            initialValue: 0,
            flipDirection: AxisDirection.down,
            hingeWidth: 2.0,
            hingeLength: isSmallScreen(context) ? 28 : 56,
            hingeColor: ToplColors.defaultText,
          ),
        ),
      ).toList();

      createElementList.insert(
        0,
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 6),
          child: Text(
            ',',
            style: isSmallScreen(context)
                ? ToplTextStyles.commaDivider.copyWith(fontSize: 30)
                : ToplTextStyles.commaDivider,
            textAlign: TextAlign.center,
          ),
        ),
      );

      createElementList.insert(
        4,
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            ',',
            style: isSmallScreen(context)
                ? ToplTextStyles.commaDivider.copyWith(fontSize: 30)
                : ToplTextStyles.commaDivider,
            textAlign: TextAlign.center,
          ),
        ),
      );

      return createElementList;
    }

    return Container(
      width: screenSize.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '\$10 Million ',
                  style: ToplTextStyles.h2.copyWith(color: ToplColors.tertiary),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Grant Program',
                      style: ToplTextStyles.h2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Leading up to Topl's decentralization and tokenization event (Q4 2023)",
                style: ToplTextStyles.body1.copyWith(color: ToplColors.greyText),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    '\$',
                    style: isSmallScreen(context)
                        ? ToplTextStyles.commaDivider.copyWith(fontSize: 20)
                        : ToplTextStyles.commaDivider,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                FlipWidget(
                  flipType: FlipType.middleFlip,
                  itemStream: generateNumbers,
                  itemBuilder: _itemBuilder,
                  initialValue: 0,
                  flipDirection: AxisDirection.down,
                  hingeWidth: 2.0,
                  hingeLength: isSmallScreen(context) ? 28 : 56,
                  hingeColor: ToplColors.defaultText,
                ),
                Row(
                  children: renderFlipWidget(6),
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Available to be distributed across 20 recipients over the coming 9 months'.toUpperCase(),
                style: ToplTextStyles.h4.copyWith(color: ToplColors.tertiary),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "What we're looking for",
                style: ToplTextStyles.h2,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 4,
                    child: const ItemTile(itemNo: 0),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: const ItemTile(itemNo: 1),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: const ItemTile(itemNo: 2),
                  ),
                ],
              ),
            ),
            isSmallScreen(context)
                ? const SizedBox()
                : const SizedBox(
                    height: 40,
                  ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 2,
                    child: const SizedBox(),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: const ItemTile(itemNo: 3),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    child: const ItemTile(itemNo: 4),
                  ),
                  ResponsiveGridCol(
                    lg: 2,
                    child: const SizedBox(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int? value) => Container(
        width: isSmallScreen(context) ? 34 : 64,
        height: isSmallScreen(context) ? 48 : 64,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          border: Border.all(
            color: ToplColors.defaultText,
            width: 2,
          ),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ToplColors.tertiary,
              ToplColors.primaryGradient,
            ],
          ),
        ),
        child: Text(
          (value).toString(),
          style: isSmallScreen(context)
              ? const TextStyle(fontSize: 24.0, color: Colors.white)
              : const TextStyle(fontSize: 54.0, color: Colors.white),
        ),
      );
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
        'title': 'Mobile accessibility',
        'subtitle': 'Solutions enabling SMS or messenger based access to the Topl Protocol.',
        'icon': FontAwesomeIcons.mobile,
      },
      {
        'title': 'Sustainability',
        'subtitle': 'dApps driving impactful financial innovation.',
        'icon': FontAwesomeIcons.earthAmericas
      },
      {
        'title': 'Impact NFTs',
        'subtitle': "Tokens and collectibles aligned with the UN's Sustainable Development Goals.",
        'icon': FontAwesomeIcons.code
      },
      {
        'title': 'Proof-of-identity',
        'subtitle': 'dApps enabling on-chain identity in support of land claims or proof of production.',
        'icon': FontAwesomeIcons.idBadge,
      },
      {
        'title': 'Interoperability',
        'subtitle': 'Bridges to other web3 protocols and dApps.',
        'icon': FontAwesomeIcons.circleNodes,
      },
    ];

    return ListTile(
      leading: FaIcon(
        grantProgramConditions[itemNo]['icon'],
        size: 25,
        color: ToplColors.defaultText,
      ),
      title: Text(
        grantProgramConditions[itemNo]['title'],
        style: ToplTextStyles.h3,
      ),
      subtitle: Text(
        grantProgramConditions[itemNo]['subtitle'],
        style: ToplTextStyles.body1.copyWith(color: ToplColors.greyText),
      ),
    );
  }
}
