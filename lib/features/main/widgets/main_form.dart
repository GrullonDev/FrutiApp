import 'package:flutter/material.dart';
import 'package:fruti_app/features/main/bloc/main_bloc.dart';
import 'package:fruti_app/features/main/widgets/score_form.dart';
import 'package:fruti_app/utils/buttons/elevated_button.dart';
import 'package:fruti_app/utils/messages_display.dart';
import 'package:fruti_app/utils/responsive/responsive.dart';
import 'package:fruti_app/utils/widgets/Input/custom_input.dart';
import 'package:fruti_app/utils/widgets/images/load_images_svg.dart';
import 'package:provider/provider.dart';

class MainForm extends StatelessWidget {
  const MainForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MainBloc>();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            context.isMobile ? 10.0 : 16.0, // Detectar si es teléfono pequeño
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoadSvgAsset(
            'apple',
            fit: BoxFit.contain,
            height: context.isTablet ? 200.0 : 150.0,
            width: context.isTablet ? 100.0 : 50.0,
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
          const SizedBox(height: 16.0),
          ScoreWidget(
            scoreController: bloc.scoreController,
          ),
        ],
      ),
    );
  }
}
