import 'package:flutter/material.dart';
import 'package:fruti_app/utils/responsive/responsive.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    required this.formKey,
    required this.nameController,
    required this.hintText,
    required this.errorText,
    super.key,
  });

  final Key formKey;
  final TextEditingController nameController;
  final String hintText;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Form(
        key: formKey,
        child: TextFormField(
          controller: nameController,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: context.isSmallPhone ? 14.0 : 18.0,
            color: Colors.purple,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.purple.withOpacity(0.7),
            ),
            border: InputBorder.none,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return errorText;
            }
            return null;
          },
        ),
      ),
    );
  }
}
