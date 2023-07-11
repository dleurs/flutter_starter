import 'package:flutter/material.dart';
import 'package:flutter_starter/features/design_demo/presentation/widgets/color_palettes_widget.dart';
import 'package:flutter_starter/features/design_demo/presentation/widgets/components_widget.dart';
import 'package:flutter_starter/features/design_demo/presentation/widgets/elevation_widget.dart';
import 'package:flutter_starter/features/design_demo/presentation/widgets/typography_widget.dart';

class DesignDemoPage extends StatelessWidget {
  const DesignDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Subtitle(text: 'Typography'),
            TypographyWidget(),
            Subtitle(text: 'Color Palettes'),
            ColorPalettesWidget(),
            Subtitle(text: 'Components Part 1'),
            FirstComponentList(showNavBottomBar: true, showSecondList: false),
            Subtitle(text: 'Elevation'),
            ElevationWidget(),
          ],
        ),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  final String text;
  const Subtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(thickness: 4),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(text, style: Theme.of(context).textTheme.headlineMedium),
        ),
        const Divider(thickness: 4),
      ],
    );
  }
}
