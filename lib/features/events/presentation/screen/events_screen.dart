import 'package:flutter/material.dart';
import 'package:silesian_prototype/core/extensions/build_context_ext.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.appLocalizations.events),
    );
  }
}
