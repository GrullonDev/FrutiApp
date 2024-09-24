import 'package:flutter/material.dart';
import 'package:fruti_app/features/additional_operations/bloc/addition_operations_bloc.dart';
import 'package:fruti_app/features/additional_operations/pages/addition_operations_layout.dart';
import 'package:fruti_app/utils/base_model_scaffold.dart';
import 'package:fruti_app/utils/widgets/custom_appbar.dart';

class AdditionOperationsPage extends StatelessWidget {
  const AdditionOperationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseModelScaffold(
      model: AdditionOperationsBloc(),
      builder: (_, __) => const Scaffold(
        appBar: CustomAppbar(
          title: 'SUMAS',
          icon: null,
        ),
        body: AdditionOperationsLayout(),
      ),
    );
  }
}
