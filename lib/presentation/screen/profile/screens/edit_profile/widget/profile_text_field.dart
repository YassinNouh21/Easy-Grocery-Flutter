import 'package:flutter/material.dart';

import '../../../../../theme/color_manager.dart';

class ProfileTextField extends StatefulWidget {
  final String initialValue;
  final String labelText;
  final IconData prefixIcon;
  final bool isObscure;
  final bool isSuffixIcon;
  const ProfileTextField({
    Key? key,
    required this.initialValue,
    required this.labelText,
    required this.prefixIcon,
    this.isObscure = false,
    this.isSuffixIcon = false,
  }) : super(key: key);

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    bool localIsObscure = widget.isObscure;

    return TextFormField(
      cursorColor: ColorManager.btnPrimary,
      initialValue: widget.initialValue,
      maxLength: 20,
      obscureText: !localIsObscure,
      onTap: () {
        setState(() {
          _isTapped = true;
        });
      },
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(widget.prefixIcon),
        fillColor:
            _isTapped ? Colors.white : const Color.fromRGBO(240, 241, 242, 1),
        labelText: widget.labelText,
        labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
        suffixIcon: widget.isSuffixIcon
            ? Icon(
                !widget.isObscure ? Icons.visibility_off : Icons.visibility,
              )
            : null,
      ),
    );
  }
}
