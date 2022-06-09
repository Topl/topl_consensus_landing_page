import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';
import 'package:topl_consensus_landing_page/constants/styles.dart';
import 'package:video_player/video_player.dart';

class ButtonPartial extends StatefulWidget {
  const ButtonPartial({Key? key}) : super(key: key);

  @override
  State<ButtonPartial> createState() => _ButtonPartialState();
}

class _ButtonPartialState extends State<ButtonPartial> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('videos/animated_logo.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setVolume(0);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      color: Colors.white,
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
            SizedBox(
              width: 400,
              height: 300,
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    VideoPlayer(_controller),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () => html.window.open('https://bit.ly/ToplDiscord', 'new tab'),
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
