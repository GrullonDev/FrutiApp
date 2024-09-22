import 'package:flutter/material.dart';
import 'package:fruti_app/utils/base_model.dart';

class MainBloc extends BaseModel {
  MainBloc();

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final scoreController = TextEditingController();

  void submitName() {
    // Lógica cuando se presiona el botón de "Jugar"
    final name = nameController.text;
    // Realiza alguna acción con el nombre, por ejemplo, navega a una nueva pantalla
    print('Nombre ingresado: $name');
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
