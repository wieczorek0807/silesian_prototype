import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.appLocalizations.news),
    );
  }
}
