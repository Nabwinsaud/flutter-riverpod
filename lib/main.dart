import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_state/provider/provider_stateless.dart';

String name = 'Nabin';
final nameProvider = Provider<String>(((ref) => "Nabin provider"));
// we can pass any thing almost all variables
final ageProvider = Provider<int>((ref) => 19);
void main() {
  // runApp(const MyApp());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: const ProviderStateLess(),
      ),
    );
  }
}
