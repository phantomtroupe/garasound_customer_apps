import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
class StandardTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final TextEditingController controller;
  final String hint;
  final TextInputType inputType;

  const StandardTextField(
      {Key? key,
      required this.controller,
      this.hint = "",
      this.onChanged,
      this.inputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: AppColors.primary,
            width: 1.0,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            width: 1,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final Function(String)? onChanged;
  final TextEditingController controller;
  final String hint;

  const PasswordTextField(
      {Key? key, this.hint = "", required this.controller, this.onChanged})
      : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            icon: Icon(_passwordVisible
                ? Icons.visibility
                : Icons.visibility_off)),
        hintText: widget.hint,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide:
              BorderSide(color: Color.fromRGBO(57, 154, 209, 1), width: 1.0),
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              width: 1,
              color: Color.fromRGBO(57, 154, 209, 1),
            )),
      ),
    );
  }
}
