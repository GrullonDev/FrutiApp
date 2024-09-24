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
        context.isTablet ? 16.0 : 12.0,
      ),
      child: SingleChildScrollView(
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
            const SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: context.isTablet ? 125.0 : 110.0,
                  height: context.isTablet ? 55.0 : 50.0,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Respuesta',
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                AppElevatedButton(
                  onTap: () {},
                  title: 'COMPROBAR',
                  style: UIButtonStyle.elevatedButtonStyle(
                    size: Size(
                      context.isTablet ? 160.0 : 120.0,
                      context.isTablet ? 60.0 : 50.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
