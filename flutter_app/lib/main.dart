import 'dart:core';
import 'dart:core' as debug;
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/di/dependency_injection.dart';
import 'package:flutter_app/core/helper/constants.dart';
import 'package:flutter_app/core/helper/shared_pref_helper.dart';
import 'package:flutter_app/manager_app.dart';
import 'core/helper/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await setupGetIt();
  await checkIfLoggedIn();
  runApp(ManagerApp());
}

Future<void> checkIfLoggedIn() async {
  final token = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );

  isLoggedInUser = token.isNotEmpty;
}
