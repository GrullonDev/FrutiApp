import 'package:flutter/material.dart';
import 'package:fruti_app/utils/base_model.dart';
import 'package:fruti_app/utils/routes/routes_switch.dart';

class MainBloc extends BaseModel {
  MainBloc();

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final scoreController = TextEditingController();

  void submitName(BuildContext context) {
    final name = nameController.text;
    Navigator.pushNamed(
      context,
      RoutesSwitch.homePage,
      arguments: name,
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
