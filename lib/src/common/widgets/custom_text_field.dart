import 'package:car_dealership/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    this.labelText,
    this.showTextFieldInputBorder = false,
    this.lableStyle,
    this.isValid,
    this.inputFormatters,
    this.maxLength,
    this.maxLines,
  });

  /// Key used to identify the text field.
  final Key textFieldkey;

  /// Error text to be displayed on failed validation.
  final String? errorText;

  /// Label of the text field
  final String? labelText;

  /// Hint text to show what kind of input the text field accepts
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

  final bool showTextFieldInputBorder;

  /// The style to use for lable
  final TextStyle? lableStyle;

  ///
  final bool? isValid;

  final List<TextInputFormatter>? inputFormatters;

  final int? maxLength;

  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: ignoring,
      child: !showTextFieldInputBorder
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: isValid == null ? Colors.grey.shade500 : Colors.red,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                key: textFieldkey,
                maxLines: maxLines,
                onChanged: onChanged,
                keyboardType: keyboardType,
                inputFormatters: inputFormatters,
                maxLength: maxLength,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ColorConsts.primaryColor,
                    ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: labelText,
                  labelStyle: lableStyle ??
                      Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.grey.shade600),
                  errorText: errorText,
                ),
              ),
            )
          : TextField(
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
                labelText: labelText,
                labelStyle: lableStyle,
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
