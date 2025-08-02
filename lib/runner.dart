import 'package:flutter/material.dart';
import 'package:surf_places/features/app/app.dart';
import 'package:surf_places/features/app/di/di.dart';

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  runApp(const SurfPlacesApp());
}
