import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.appLocalizations.explore),
    );
  }
}
