import 'package:flutter/material.dart';
import 'package:fruti_app/features/home/bloc/home_bloc.dart';
import 'package:fruti_app/features/home/pages/home_layout.dart';
import 'package:fruti_app/utils/base_model_scaffold.dart';
import 'package:fruti_app/utils/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.user,
    super.key,
  });

  final String user;

  @override
  Widget build(BuildContext context) {
    return BaseModelScaffold(
      model: HomeBloc(
        nameUser: user,
      ),
      builder: (_, __) => Scaffold(
        appBar: const CustomAppbar(
          title: 'FRUTIAPP',
          icon: Icons.games,
          onBack: null,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bienvenido $user',
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.1,
                    ),
                  ),
                  const Expanded(
                    child: HomeLayout(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
