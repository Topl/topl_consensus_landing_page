import 'dart:async';

import 'package:flip_board/flip_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';

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

    return Container(
      width: screenSize.width,
      color: ToplColors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
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
            const SizedBox(
              height: 10,
            ),
            Text(
              "Leading up to Topl's decentralization and tokenization event (Q4 2023)",
              style: ToplTextStyles.body1.copyWith(color: ToplColors.greyText),
              textAlign: TextAlign.center,
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
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    '\$',
                    style: ToplTextStyles.commaDivider,
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
                  hingeLength: 56.0,
                  hingeColor: ToplColors.defaultText,
                ),
                const SizedBox(width: 5),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    ',',
                    style: ToplTextStyles.commaDivider,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                FlipWidget(
                  flipType: FlipType.middleFlip,
                  itemStream: stream,
                  itemBuilder: _itemBuilder,
                  initialValue: 0,
                  flipDirection: AxisDirection.down,
                  hingeWidth: 2.0,
                  hingeLength: 56.0,
                  hingeColor: ToplColors.defaultText,
                ),
                const SizedBox(width: 10),
                FlipWidget(
                  flipType: FlipType.middleFlip,
                  itemStream: stream,
                  itemBuilder: _itemBuilder,
                  initialValue: 0,
                  flipDirection: AxisDirection.down,
                  hingeWidth: 2.0,
                  hingeLength: 56.0,
                  hingeColor: ToplColors.defaultText,
                ),
                const SizedBox(width: 10),
                FlipWidget(
                  flipType: FlipType.middleFlip,
                  itemStream: stream,
                  itemBuilder: _itemBuilder,
                  initialValue: 0,
                  flipDirection: AxisDirection.down,
                  hingeWidth: 2.0,
                  hingeLength: 56.0,
                  hingeColor: ToplColors.defaultText,
                ),
                const SizedBox(width: 5),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    ',',
                    style: ToplTextStyles.commaDivider,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 5),
                FlipWidget(
                  flipType: FlipType.middleFlip,
                  itemStream: stream,
                  itemBuilder: _itemBuilder,
                  initialValue: 0,
                  flipDirection: AxisDirection.down,
                  hingeWidth: 2.0,
                  hingeLength: 56.0,
                  hingeColor: ToplColors.defaultText,
                ),
                const SizedBox(width: 10),
                FlipWidget(
                  flipType: FlipType.middleFlip,
                  itemStream: stream,
                  itemBuilder: _itemBuilder,
                  initialValue: 0,
                  flipDirection: AxisDirection.down,
                  hingeWidth: 2.0,
                  hingeLength: 56.0,
                  hingeColor: ToplColors.defaultText,
                ),
                const SizedBox(width: 10),
                FlipWidget(
                  flipType: FlipType.middleFlip,
                  itemStream: stream,
                  itemBuilder: _itemBuilder,
                  initialValue: 0,
                  flipDirection: AxisDirection.down,
                  hingeWidth: 2.0,
                  hingeLength: 56.0,
                  hingeColor: ToplColors.defaultText,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Available to be distributed across 20 recipients over the coming 9 months'.toUpperCase(),
              style: ToplTextStyles.h4.copyWith(color: ToplColors.tertiary),
            ),
            const SizedBox(
              height: 140,
            ),
            const Text(
              "What we're looking for",
              style: ToplTextStyles.h2,
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            SizedBox(
              width: screenSize.width * 0.8,
              height: 300,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => ItemTile(itemNo: index),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int? value) => Container(
        width: 64.0,
        height: 64.0,
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
          style: const TextStyle(fontSize: 54.0, color: Colors.white),
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
