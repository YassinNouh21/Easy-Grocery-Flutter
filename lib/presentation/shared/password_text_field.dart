import 'package:flutter/material.dart';
import 'package:quick_grocery/presentation/localization/app_localizations.dart';

class PasswordTextField extends StatefulWidget {
  final String text;
  const PasswordTextField({Key? key, required this.text}) : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.lock,
            color: Colors.grey.shade500,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.translate(widget.text)!,
                border: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }
}
