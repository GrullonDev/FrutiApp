import 'package:flutter/material.dart';
import 'package:fruti_app/features/main/bloc/main_bloc.dart';
import 'package:fruti_app/features/main/widgets/score_form.dart';
import 'package:fruti_app/utils/buttons/elevated_button.dart';
import 'package:fruti_app/utils/messages_display.dart';
import 'package:fruti_app/utils/widgets/Input/custom_input.dart';
import 'package:fruti_app/utils/widgets/images/load_images_svg.dart';
import 'package:provider/provider.dart';

class MainForm extends StatelessWidget {
  const MainForm({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MainBloc>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LoadSvgAsset(
          'apple',
          fit: BoxFit.contain,
          height: 185,
          width: 25,
        ),
        const SizedBox(height: 16.0),
        CustomInput(
          formKey: bloc.formKey,
          nameController: bloc.nameController,
          hintText: '¿Cómo te llamas?',
          errorText: 'Por favor, introduce tu nombre',
        ),
        const SizedBox(height: 16.0),
        AppElevatedButton(
          onTap: () {
            if (bloc.formKey.currentState?.validate() == true) {
              bloc.submitName(context);
            } else {
              MessageDisplay.failure(
                context,
                'Por favor, introduce tu nombre',
              );
            }
          },
          title: 'JUGAR',
        ),
        const SizedBox(height: 105.0),
        ScoreWidget(
          scoreController: bloc.scoreController,
        ),
      ],
    );
  }
}
