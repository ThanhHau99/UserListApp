import 'package:app_list_user/share/theme_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool value = themeProvider.isDartMode ? false : true;
    return FloatingActionButton(
      backgroundColor:
          Theme.of(context).floatingActionButtonTheme.backgroundColor,
      child: Icon(
        Icons.lightbulb_outline_sharp,
        //color: Colors.white,
      ),
      onPressed: () {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
