import 'package:car_dealership/src/core/core.dart';
import 'package:flutter/material.dart';

/// {@template custom_text_field}
/// A custom text field
/// {@endtemplate}
class CustomTextField extends StatelessWidget {
  /// {@macro custom_text_field}
  const CustomTextField({
    super.key,
    this.errorText,
    this.keyboardType,
    this.obscureText = false,
    this.ignoring = false,
    this.readOnly = false,
    required this.textFieldkey,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.hintText,
  });

  /// Key used to identify the text field.
  final Key textFieldkey;

  /// Error text to be displayed on failed validation.
  final String? errorText;

  /// Error text to be displayed on failed validation.
  final String? hintText;

  /// The type of keyboard the text field requires
  final TextInputType? keyboardType;

  /// Boolean which hides or displays the text in the text field
  final bool obscureText;

  /// Ignore pointer on field when fetching data
  final bool ignoring;

  /// Disable TextField input.
  final bool readOnly;

  /// Icon that apprears before the editable part of text field
  final Widget? prefixIcon;

  /// Icon that apprears after the editable part of text field
  final Widget? suffixIcon;

  /// Constraints for the [prefixIcon]
  final BoxConstraints? prefixIconConstraints;

  /// Constranints for the [suffixIcon]
  final BoxConstraints? suffixIconConstraints;

  /// Callback which listens for change in text input.
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: ignoring,
      child: TextField(
        key: textFieldkey,
        readOnly: readOnly,
        textAlign: TextAlign.left,
        obscureText: obscureText,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 14,
            ),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: ColorConsts.black,
              ),
          prefixIcon: prefixIcon,
          isDense: true,
          prefixIconConstraints: prefixIconConstraints,
          suffixIcon: suffixIcon,
          suffixIconConstraints: suffixIconConstraints,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 10,
          ),
          errorText: errorText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Color(0xFFACADAD),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Color(0xFFACADAD),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Color(0xFFACADAD),
            ),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
