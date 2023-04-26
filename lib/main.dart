
import 'package:color_pallate_generator_app/provider/color_provider.dart';
import 'package:color_pallate_generator_app/provider/them_provider.dart';
import 'package:color_pallate_generator_app/views/Curated_palettes.dart';
import 'package:color_pallate_generator_app/views/Homepage.dart';
import 'package:color_pallate_generator_app/views/Palette_generator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ColorProvider>(create: (context) => ColorProvider()),
        ChangeNotifierProvider<ThemeProvider>(create: (context) => ThemeProvider()),
      ],
      builder: (context, _){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: (Provider.of<ThemeProvider>(context).themdata.isDark)
              ? ThemeMode.dark
              : ThemeMode.light,
          routes: {
            '/': (context) => const Homepage(),
                'Curated_palettes': (context) => const Curated_palettes(),
                'Palette_generator': (context) => const Palette_generator(),
          },
        );
      },
    ),
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     useMaterial3: true,
    //   ),
    //   routes: {
    //     '/': (context) => const Homepage(),
    //     'Curated_palettes': (context) => const Curated_palettes(),
    //     'Palette_generator': (context) => const Palette_generator(),
    //   },
    // ),
  );
}

