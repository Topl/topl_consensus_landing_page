import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/widgets/backed_by.dart';
import 'package:topl_consensus_landing_page/widgets/bottom_bar.dart';
import 'package:topl_consensus_landing_page/widgets/button_partial.dart';
import 'package:topl_consensus_landing_page/widgets/ethos_container.dart';
import 'package:topl_consensus_landing_page/widgets/global_gaps.dart';
import 'package:topl_consensus_landing_page/widgets/grant_program.dart';
import 'package:topl_consensus_landing_page/widgets/hero_header.dart';
import 'package:topl_consensus_landing_page/widgets/process.dart';
import 'package:topl_consensus_landing_page/widgets/topl_tech.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
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
                  'assets/images/topl_logo_light.svg',
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
              EthosContainer(),
              GrantProgram(),
              Process(),
              ButtonPartial(),
              ToplTech(),
              BackedBy(),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
