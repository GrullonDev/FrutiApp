import 'package:flutter/material.dart';
import 'package:fruti_app/features/main/bloc/main_bloc.dart';
import 'package:fruti_app/features/main/pages/main_layout.dart';
import 'package:fruti_app/utils/base_model_scaffold.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseModelScaffold(
      model: MainBloc(),
      builder: (_, __) {
        return const MainLayout();
      },
    );
  }
}
