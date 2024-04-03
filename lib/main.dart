import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:spentwise/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'simple_bloc_observer.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}
