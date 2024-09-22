import 'package:flutter/material.dart';

class MessageDisplay {
  const MessageDisplay._();

  static void hideSnackbar(BuildContext context) {
    try {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    } catch (e) {
      // sl.get<Logger>().e(e);
    }
  }

  static void failure(BuildContext context, String message) {
    hideSnackbar(context);

    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red[600],
          duration: const Duration(seconds: 5),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.error),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    message.trim(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } catch (e) {
      // sl.get<Logger>().e(e);
    }
  }

  static void success(BuildContext context, String message) {
    hideSnackbar(context);

    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          action: SnackBarAction(
            label: 'Cerrar',
            onPressed: () {},
          ),
        ),
      );
    } catch (e) {
      // sl.get<Logger>().e(e);
    }
  }

  static void noInternet(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Verifica tu conexión a internet'),
          content: const Text(
              'Por favor, revisa tu conexión a internet y vuelve a intentarlo.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
