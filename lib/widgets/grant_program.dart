import 'dart:async';

import 'package:flip_board/flip_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';
import 'package:flip_board/flip_board.dart';

class GrantProgram extends StatelessWidget {
  const GrantProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    Stream<int> generateNumbers = (() async* {
      List<int> nums = [0, 1];

      for (var element in nums) {
        await Future<void>.delayed(const Duration(seconds: 0));
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
          color: ToplColors.tertiary,
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          border: Border.all(
            color: ToplColors.defaultText,
            width: 2,
          ),
        ),
        child: Text(
          (value).toString(),
          style: const TextStyle(fontSize: 54.0, color: ToplColors.defaultText),
        ),
      );
}
