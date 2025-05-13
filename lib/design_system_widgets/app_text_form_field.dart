import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class AppTextFormField extends FormField<String> {
  final bool enableObscureToggle;
  final bool obscureText;
  final bool isDate;
  final TextEditingController? controller;

  AppTextFormField({
    super.key,
    super.validator,
    super.onSaved,
    super.enabled = true,
    String? initialValue,
    this.controller,
    this.obscureText = false,
    this.enableObscureToggle = false,
    this.isDate = false,
    String? labelText,
    String? hintText,
    TextInputType keyboardType = TextInputType.text,
    TextInputAction? textInputAction,
    List<TextInputFormatter>? inputFormatters,
    FocusNode? focusNode,
    VoidCallback? onTap,
    ValueChanged<String>? onChanged,
    ValueChanged<String>? onFieldSubmitted,
    bool readOnly = false,
    int? maxLines = 1,
    int? minLines,
    Widget? prefixIcon,
    Widget? suffixIcon,
    Color? fillColor,
    AutovalidateMode? autovalidateMode,
    double borderRadius = 8.0,
    TextStyle? style,
  }) : super(
    initialValue: controller != null ? controller.text : (initialValue ?? ''),
    autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
    builder: (FormFieldState<String> field) {
      final _AppTextFormFieldState state = field as _AppTextFormFieldState;
      final appField = state.widget as AppTextFormField;

      return TextField(
        controller: state._effectiveController,
        keyboardType: isDate ? TextInputType.number : keyboardType,
        obscureText: appField.enableObscureToggle
            ? state._obscureText
            : appField.obscureText,
        enabled: appField.enabled,
        readOnly: readOnly,
        focusNode: state._effectiveFocusNode,
        maxLines: maxLines,
        minLines: minLines,
        inputFormatters: isDate
            ? [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(8),
          _DateInputFormatter(),
        ]
            : inputFormatters,
        textInputAction: textInputAction,
        onTap: onTap,
        onSubmitted: onFieldSubmitted,
        style: style ?? const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          filled: true,
          fillColor: fillColor ?? const Color(0xFF0F172A).withOpacity(0.5),
          labelStyle: const TextStyle(color: Color(0xFF5EEAD4)),
          hintStyle: const TextStyle(color: Color(0xFF94A3B8)),
          errorText: field.errorText,
          prefixIcon: prefixIcon,
          suffixIcon: appField.enableObscureToggle
              ? IconButton(
            icon: Icon(
              state._obscureText ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xFF5EEAD4),
            ),
            onPressed: state._toggleObscureText,
          )
              : suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(color: Color(0xFF334155)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(color: Color(0xFF5EEAD4), width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(color: Colors.red, width: 2),
          ),
        ),
        onChanged: (value) {
          field.didChange(value);
          if (onChanged != null) {
            onChanged(value);
          }
        },
      );
    },
  );

  @override
  FormFieldState<String> createState() => _AppTextFormFieldState();

  /// Optional: parse current value to DateTime
  static DateTime? tryParseDate(String input) {
    try {
      return DateFormat('dd/MM/yyyy').parseStrict(input);
    } catch (_) {
      return null;
    }
  }
}

class _AppTextFormFieldState extends FormFieldState<String> {
  TextEditingController? _internalController;
  FocusNode? _internalFocusNode;
  bool _obscureText = false;

  TextEditingController get _effectiveController =>
      (widget as AppTextFormField).controller ?? _internalController!;

  FocusNode get _effectiveFocusNode =>
      (widget as AppTextFormField).controller != null
          ? (_internalFocusNode ??= FocusNode())
          : _internalFocusNode!;

  @override
  void initState() {
    super.initState();
    final appField = widget as AppTextFormField;

    if (appField.controller == null) {
      _internalController = TextEditingController(text: widget.initialValue);
    }

    _internalFocusNode = appField.controller == null ? FocusNode() : null;

    if (appField.enableObscureToggle) {
      _obscureText = true;
    }
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void didUpdateWidget(covariant AppTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    final appField = widget as AppTextFormField;
    final oldAppField = oldWidget;

    if (appField.controller == null &&
        oldAppField.initialValue != appField.initialValue) {
      _internalController?.text = appField.initialValue ?? '';
    }

    if (appField.controller != oldAppField.controller) {
      if (oldAppField.controller == null && appField.controller != null) {
        _internalController?.dispose();
        _internalController = null;
      }

      if (oldAppField.controller != null && appField.controller == null) {
        _internalController = TextEditingController(text: widget.initialValue);
      }
    }
  }

  @override
  void dispose() {
    _internalController?.dispose();
    _internalFocusNode?.dispose();
    super.dispose();
  }
}

class _DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final digits = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    final buffer = StringBuffer();

    for (int i = 0; i < digits.length && i < 8; i++) {
      buffer.write(digits[i]);
      if ((i == 1 || i == 3) && i != digits.length - 1) {
        buffer.write('/');
      }
    }

    final formatted = buffer.toString();
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
