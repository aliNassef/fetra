import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieVideo extends StatefulWidget {
  const ChewieVideo(
      {super.key, required this.videoPlayerController, required this.looping});
  final VideoPlayerController videoPlayerController;
  final bool looping;
  @override
  State<ChewieVideo> createState() => _ChewieVideoState();
}

class _ChewieVideoState extends State<ChewieVideo> {
  late ChewieController controller;
  @override
  void initState() {
    super.initState();
    controller = ChewieController(
      autoInitialize: true,
      videoPlayerController: widget.videoPlayerController,
      looping: widget.looping,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.video_settings_rounded,
                  color: Colors.grey,
                  size: MediaQuery.of(context).size.height * .08),
              const Text(
                "cann't load video",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.grey[100],
        child: Chewie(controller: controller),
      ),
    );
  }
}
