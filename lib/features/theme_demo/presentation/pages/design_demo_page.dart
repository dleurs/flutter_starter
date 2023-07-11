import 'package:flutter/material.dart';
import 'package:flutter_starter/features/theme_demo/presentation/widgets/color_palettes_widget.dart';
import 'package:flutter_starter/features/theme_demo/presentation/widgets/components_widget.dart';
import 'package:flutter_starter/features/theme_demo/presentation/widgets/elevation_widget.dart';
import 'package:flutter_starter/features/theme_demo/presentation/widgets/typography_widget.dart';

class DesignDemoPage extends StatelessWidget {
  const DesignDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Text('Typography', style: Theme.of(context).textTheme.headlineMedium),
            const TypographyWidget(),
            const Divider(),
            Text('Color Palettes', style: Theme.of(context).textTheme.headlineMedium),
            const ColorPalettesWidget(),
            const Divider(),
            Text('Components', style: Theme.of(context).textTheme.headlineMedium),
            const ComponentWidget(showNavBottomBar: false),
            const Divider(),
            Text('Elevation', style: Theme.of(context).textTheme.headlineMedium),
            const ElevationWidget(),
          ],
        ),
      ),
    );
  }
}
