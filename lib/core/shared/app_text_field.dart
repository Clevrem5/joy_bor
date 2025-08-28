import '../constants/exports.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.hint,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon, // 🔑 qo‘shildi
    this.hintStyle,
    this.fillColor,
  });

  final String? hint;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon; // 🔑 tashqaridan keladigan suffix
  final TextStyle? hintStyle;
  final Color? fillColor;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.w400s15h100cxC8C7CF,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: _isObscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: 8.w,
          right: 8.w,
          top: 8.h,
          bottom: 8.h,
        ),
        filled: true,
        fillColor: widget.fillColor ?? AppColors.white26,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        hintStyle: widget.hintStyle ?? AppStyles.w400s14h100cxC8C7CF,
        hintText: widget.hint ?? "",
        prefixIcon: widget.prefixIcon,

        // 🔑 suffixIcon logic
        suffixIcon:
            widget.suffixIcon ??
            (widget.obscureText
                ? IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white70,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  )
                : null),
      ),
    );
  }
}
