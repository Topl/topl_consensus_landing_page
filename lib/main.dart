import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/widgets/community_forward.dart';
import 'package:topl_consensus_landing_page/widgets/global_gaps.dart';
import 'package:topl_consensus_landing_page/widgets/hero_header.dart';
import 'package:topl_consensus_landing_page/widgets/purpose_built.dart';
import 'package:topl_consensus_landing_page/widgets/scalable_and_interconnected.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                toolbarHeight: 100,
                flexibleSpace: Container(
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
                ),
                backgroundColor: Colors.transparent,
                title: SvgPicture.asset(
                  'images/topl_logo_light.svg',
                  width: 60,
                ),
                pinned: false,
                floating: true,
              ),
            ];
          },
          body: ListView(
            children: const <Widget>[
              HeroHeader(),
              GlobalGaps(),
              PurposeBuilt(),
              CommunityForward(),
              ScalableAndInterconnected(),
            ],
          ),
        ),
      ),
    );
  }
}
