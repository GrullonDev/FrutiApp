import 'package:flutter/material.dart';
import 'package:fruti_app/features/additional_operations/bloc/addition_operations_bloc.dart';
import 'package:fruti_app/features/additional_operations/pages/addition_operations_layout.dart';
import 'package:fruti_app/features/widgets/arguments.dart';
import 'package:fruti_app/utils/base_model_scaffold.dart';
import 'package:fruti_app/utils/widgets/custom_appbar.dart';

class AdditionOperationsPage extends StatelessWidget {
  const AdditionOperationsPage({
    required this.player,
    super.key,
  });

  final Arguments player;

  @override
  Widget build(BuildContext context) {
    return BaseModelScaffold(
      model: AdditionOperationsBloc(
        player: player.name,
      ),
      builder: (_, __) => Scaffold(
        appBar: const CustomAppbar(
          title: 'SUMAS',
          icon: null,
        ),
        body: AdditionOperationsLayout(
          player: player.name,
        ),
      ),
    );
  }
}
