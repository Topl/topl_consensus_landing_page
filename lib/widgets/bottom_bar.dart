import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.blueGrey[900],
      child: Column(
        children: [
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                lg: 3,
                child: const BottomBarColumn(
                  heading: 'ABOUT',
                  link1: {'text': 'How It works', 'link': 'https://www.topl.co/how-it-works/how-it-works#What-is-Topl'},
                  link2: {'text': 'Topl Team', 'link': 'https://www.topl.co/community/team'},
                  link3: {'text': 'Careers', 'link': 'https://angel.co/company/topl'},
                ),
              ),
              ResponsiveGridCol(
                lg: 3,
                child: const BottomBarColumn(
                  heading: 'HELP',
                  link1: {'text': 'Blog', 'link': 'https://medium.com/topl-blog'},
                  link2: {'text': 'FAQs', 'link': 'https://www.topl.co/how-it-works/faq'},
                  link3: {'text': 'Developer Hub', 'link': 'https://docs.topl.co/'},
                ),
              ),
              ResponsiveGridCol(
                lg: 3,
                child: const BottomBarColumn(
                  heading: 'SOCIAL',
                  link1: {'text': 'Facebook', 'link': 'https://www.facebook.com/topl.protocol/'},
                  link2: {'text': 'Instagram', 'link': 'https://www.instagram.com/topl_protocol/'},
                  link3: {'text': 'Twitter', 'link': 'https://twitter.com/topl_protocol'},
                ),
              ),
              ResponsiveGridCol(
                lg: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    InfoText(
                      type: 'Email',
                      text: 'community@topl.me',
                    ),
                    SizedBox(height: 28),
                    InfoText(
                      type: 'Address',
                      text: '310 Comal Street Floor 2, Austin, TX, USA 78702',
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            color: ToplColors.greyText,
            thickness: 1,
          ),
          const SizedBox(height: 20),
          const Text(
            'Copyright © 2022, Topl, Inc. All Rights Reserved.',
            style: TextStyle(
              color: ToplColors.greyText,
              fontSize: 14,
              fontFamily: 'DM Sans',
            ),
          ),
        ],
      ),
    );
  }
}

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final Map<String, String> link1;
  final Map<String, String> link2;
  final Map<String, String> link3;

  const BottomBarColumn({
    Key? key,
    required this.heading,
    required this.link1,
    required this.link2,
    required this.link3,
  }) : super(key: key);

  MouseRegion renderTextLink(text, link) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Text(
          text,
          style: ToplTextStyles.body1Small.copyWith(
            color: Colors.blueGrey[100],
          ),
        ),
        onTap: () async {
          final Uri _url = Uri.parse(
            link,
          );
          if (await canLaunchUrl(_url)) launchUrl(_url);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            heading,
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'DM Sans',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          renderTextLink(link1['text'], link1['link']),
          const SizedBox(height: 5),
          renderTextLink(link2['text'], link2['link']),
          const SizedBox(height: 5),
          renderTextLink(link3['text'], link3['link']),
        ],
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  const InfoText({Key? key, required this.type, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          '$type: ',
          style: TextStyle(
            color: Colors.blueGrey[300],
            fontSize: 14,
            fontFamily: 'DM Sans',
          ),
        ),
        SelectableText(
          text,
          style: TextStyle(
            color: Colors.blueGrey[100],
            fontSize: 14,
            fontFamily: 'DM Sans',
          ),
        )
      ],
    );
  }
}
