import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gif_skill/screens/setting_screen/cubit/setting_cubit.dart';

class SettingScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<SettingCubit> provider() {
    return BlocProvider(
      create: (context) => SettingCubit(),
      child: const SettingScreen(),
    );
  }

  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Setting'),
      ),
    );
  }
}
