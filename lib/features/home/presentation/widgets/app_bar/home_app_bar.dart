import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/app_bar/home_app_bar_circular_icon.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/app_bar/home_app_bar_logo.dart';
import 'package:video_player/video_player.dart';

class HomeAppBar extends StatefulWidget {
  final ScrollController scrollController;

  const HomeAppBar({super.key, required this.scrollController});

  @override
  HomeAppBarState createState() => HomeAppBarState();
}

class HomeAppBarState extends State<HomeAppBar> {
  late VideoPlayerController _controller;
  double _appBarHeight = 0.0;

  @override
  void initState() {
    super.initState();
    _initializeVideoController();
  }

  void _initializeVideoController() {
    _controller = VideoPlayerController.asset(AppVideos.header)..initialize().then((_) => setState(() {}));
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.play();
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _appBarHeight = widget.scrollController.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      expandedHeight: MediaQuery.of(context).size.height / 2,
      floating: false,
      pinned: true,
      toolbarHeight: AppDimensions.homeAppBarToolBarHeight,
      leadingWidth: AppDimensions.homeAppBarLeadingWidth,
      leading: const HomeAppBarCircularIcon(icon: Icons.menu),
      actions: const [
        HomeAppBarCircularIcon(icon: Icons.favorite_border),
        HomeAppBarCircularIcon(icon: Icons.search),
      ],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: HomeAppBarLogo(
          appBarHeight: _appBarHeight,
        ),
        background: _controller.value.isInitialized
            ? SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  ),
                ),
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
