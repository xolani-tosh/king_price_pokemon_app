import 'package:flutter/material.dart';
import 'package:king_price_pokemon_app/helpers/app_sizes.dart';
import 'package:king_price_pokemon_app/widgets/app_bar.dart';

class AppTemplate extends StatefulWidget {
  const AppTemplate({super.key, required this.title, required this.page});

  final String title;
  final Widget page;

  @override
  State<AppTemplate> createState() => _AppTemplateState();
}

class _AppTemplateState extends State<AppTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopBar(
        isHomePage: true,
        logoPath: 'assets/branding/app_logo.webp',
        onMenuTap: () {},
        onActionTap: () {},
      ),
      body: Padding(
        padding: AppSizes(context).padding.medium,
        child: widget.page,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
