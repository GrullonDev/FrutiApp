import 'package:flutter/material.dart';
import 'package:fruti_app/features/widgets/arguments.dart';
import 'package:fruti_app/utils/base_model.dart';
import 'package:fruti_app/utils/routes/routes_switch.dart';

class HomeBloc extends BaseModel {
  HomeBloc({
    required this.nameUser,
    required BuildContext context,
  }) : _context = context;

  final BuildContext _context;
  final String nameUser;

  void sendArguments() {
    Navigator.pushNamed(
      _context,
      RoutesSwitch.additionOperations,
      arguments: Arguments(
        name: nameUser,
      ),
    );
  }
}
