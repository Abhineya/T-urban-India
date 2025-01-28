import 'package:flutter/material.dart';
import 'package:t_urban_india/core/constants/constant_colors.dart';

class CommonTextFieldWidget extends StatefulWidget {
  const CommonTextFieldWidget({
    required this.hintText,
    this.onChanged,
    super.key,
    this.maxLines,
    this.keyboardType,
    this.errorText,
    this.ontap,
    this.controller,
    this.readOnly = false,
    this.focusNode,
  });
  final String hintText;
  final int? maxLines;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final Function()? ontap;
  final TextEditingController? controller;
  final bool? readOnly;
  final FocusNode? focusNode;

  @override
  State<CommonTextFieldWidget> createState() => _CommonTextFieldWidgetState();
}

class _CommonTextFieldWidgetState extends State<CommonTextFieldWidget> {
  @override
  Widget build(final BuildContext caontext) {
    return TextFormField(
      focusNode: widget.focusNode,
      readOnly: widget.readOnly!,
      controller: widget.controller,
      onChanged: widget.onChanged,
      onTap: widget.ontap,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      style: Theme.of(context).textTheme.titleSmall,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ConstantColors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ConstantColors.red),
        ),
        errorText: widget.errorText,
        filled: true,
        fillColor: ConstantColors.white,
        hintText: widget.hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: ConstantColors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ConstantColors.primaryColor),
        ),
      ),
    );
  }
}
