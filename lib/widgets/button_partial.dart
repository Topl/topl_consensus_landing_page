import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';

class ButtonPartial extends StatelessWidget {
  const ButtonPartial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      color: ToplColors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Keep in Touch',
              style: ToplTextStyles.h2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.48),
              child: const Divider(
                color: ToplColors.greyText,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: ToplColors.primary,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.discord,
                            size: 20,
                            color: ToplColors.primary,
                          ),
                          Text(
                            'Discord',
                            style: ToplTextStyles.body1Bold.copyWith(color: ToplColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => html.window.open('https://topl.typeform.com/to/ptnvogkn', 'new tab'),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: ToplColors.primary,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.envelope,
                            size: 20,
                            color: ToplColors.primary,
                          ),
                          Text(
                            'Mailing List',
                            style: ToplTextStyles.body1Bold.copyWith(color: ToplColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
