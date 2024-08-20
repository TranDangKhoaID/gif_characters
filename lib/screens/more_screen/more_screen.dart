import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gif_skill/screens/more_screen/cubit/more_cubit.dart';

class MoreScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<MoreCubit> provider() {
    return BlocProvider(
      create: (context) => MoreCubit(),
      child: const MoreScreen(),
    );
  }

  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('More'),
      ),
    );
  }
}
