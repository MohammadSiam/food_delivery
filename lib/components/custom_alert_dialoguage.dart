import 'package:flutter/material.dart';

Future<void> showCustomAlertDialog({
  required BuildContext context,
  required String title,
  required VoidCallback onConfirm,
  required VoidCallback onCancel,
  List<Widget> descriptions = const [], // ✅ multiple widgets
  String confirmText = "Confirm",
  String cancelText = "Cancel",
}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        content: SingleChildScrollView(
          child: ListBody(children: descriptions), // ✅ handles multiple widgets
        ),
        actions: <Widget>[
          TextButton(onPressed: onCancel, child: Text(cancelText)),
          ElevatedButton(onPressed: onConfirm, child: Text(confirmText)),
        ],
      );
    },
  );
}
