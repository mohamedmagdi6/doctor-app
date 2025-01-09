import 'package:doctor_app/core/routing/route_generator.dart';
import 'package:doctor_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DocApp(appRouter: AppRouter()));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return DocApp(appRouter: AppRouter());
//   }
// }
