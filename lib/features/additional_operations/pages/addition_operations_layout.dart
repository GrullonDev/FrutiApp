import 'package:flutter/material.dart';
import 'package:fruti_app/features/widgets/simple_math_operation.dart';
import 'package:fruti_app/utils/buttons/elevated_button.dart';
import 'package:fruti_app/utils/responsive/responsive.dart';
import 'package:fruti_app/utils/styles/button_style.dart';

class AdditionOperationsLayout extends StatelessWidget {
  const AdditionOperationsLayout({
    required this.player,
    super.key,
  });

  final String player;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.isMobile ? 16.0 : 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Jugador: $player',
            style: TextStyle(
              fontSize: context.isTablet ? 30.0 : 20.0,
            ),
          ),
          Text(
            'Score: ',
            style: TextStyle(
              fontSize: context.isTablet ? 30.0 : 20.0,
            ),
          ),
          Text(
            'Manzanas: ',
            style: TextStyle(
              fontSize: context.isTablet ? 30.0 : 20.0,
            ),
          ),
          const SimpleMathOperation(
            firstImage: 'panda1',
            operation: 'addition',
            secondImage: 'mickey',
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: context.isTablet ? 124.5 : 110.0,
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Respuesta',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.5),
          AppElevatedButton(
            onTap: () {},
            title: 'COMPROBAR',
            style: UIButtonStyle.elevatedButtonStyle(),
          ),
        ],
      ),
    );
  }
}
