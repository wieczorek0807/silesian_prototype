import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/presentation/presentatnion/app_silver_header_delegate.dart';
import 'package:silesian_prototype/core/presentation/values/values.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/home_app_bar.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended_body.dart';
import 'package:silesian_prototype/features/home/presentation/widgets/recommended_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<bool> _isScrollButtonVisible = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    _isScrollButtonVisible.value = currentScroll > maxScroll * 0.75;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          HomeAppBar(scrollController: _scrollController),
          SliverPersistentHeader(
            pinned: true,
            delegate: AppSilverHeaderDelegate(
              minExtent: 130.0,
              maxExtent: 130.0,
              child: RecommendedHeader(scrollController: _scrollController),
            ),
          ),
          RecommendedBody(),
        ],
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _isScrollButtonVisible,
        builder: (context, isVisible, child) {
          return Visibility(
            visible: isVisible,
            child: FloatingActionButton(
              onPressed: _scrollToTop,
              backgroundColor: AppColors.mintGreen,
              child: const Icon(
                Icons.arrow_upward,
                color: AppColors.offWhite,
              ),
            ),
          );
        },
      ),
    );
  }
}
