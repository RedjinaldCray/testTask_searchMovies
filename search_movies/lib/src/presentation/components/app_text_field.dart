import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:search_movies/src/core/consts/assets.dart';
import 'package:search_movies/src/presentation/components/app_scale_animation.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    required this.hintText,
    required this.onChange,
    required this.onClear,
    this.prefixIcon,
    this.textAlign = TextAlign.start,
    this.height,
    this.maxLines,
    this.minLines,
    this.typeKeyboard,
    this.expands = false,
    this.maxLenght,
    this.suffix,
    this.focusNode,
    this.autofocus,
    this.border,
    this.backgroundColor,
    this.includedDefaultHeight = true,
    this.padding,
  }) : super(key: key);

  final String hintText;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final double? height;
  final int? maxLines;
  final int? minLines;
  final int? maxLenght;
  final void Function(String) onChange;
  final TextInputType? typeKeyboard;
  final bool? expands;
  final Widget? suffix;
  final void Function() onClear;
  final FocusNode? focusNode;
  final bool? autofocus;
  final InputBorder? border;
  final Color? backgroundColor;
  final bool? includedDefaultHeight;
  final EdgeInsets? padding;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isActive = false;
  FocusNode focusNode = FocusNode();
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    if (widget.focusNode == null) {
      focusNode.addListener(() {
        if (focusNode.hasFocus) {
          setState(() {
            isActive = true;
          });
        } else {
          setState(() {
            isActive = false;
          });
        }
      });
    } else {
      if (widget.focusNode != null) {
        widget.focusNode!.addListener(() {
          if (widget.focusNode!.hasFocus) {
            setState(() {
              isActive = true;
            });
          } else {
            setState(() {
              isActive = false;
            });
          }
        });
      }
    }
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
        borderSide:
            const BorderSide(color: Color.fromARGB(255, 96, 96, 96), width: 1),
        borderRadius: BorderRadius.circular(16));
    return Container(
        height: widget.height ?? (widget.includedDefaultHeight! ? 60 : null),
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          focusNode: widget.focusNode ?? focusNode,
          controller: controller,
          expands: widget.expands!,
          textAlign: widget.textAlign!,
          cursorColor: Colors.black,
          textAlignVertical: TextAlignVertical.top,
          onChanged: (value) {
            setState(() {
              controller
                ..text = value
                ..selection = TextSelection.fromPosition(
                    TextPosition(offset: controller.text.length));
            });
            widget.onChange(value);
          },
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          maxLength: widget.maxLenght,
          keyboardType: widget.typeKeyboard ?? TextInputType.emailAddress,
          autofocus: widget.autofocus ?? false,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              isDense: true,
              counterText: '',
              prefixIcon: widget.prefixIcon,
              suffix: widget.suffix ??
                  (controller.text.isNotEmpty
                      ? AppScaleAnimation(
                          child: SizedBox(
                            height: 14,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: SvgPicture.asset(
                                Assets.closeIcon,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              controller.text = '';
                            });
                            widget.onClear();
                          })
                      : const SizedBox()),
              isCollapsed: true,
              hintText: widget.hintText,
              contentPadding: widget.padding ??
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
              border: widget.border ?? outlineInputBorder,
              errorBorder: widget.border ?? outlineInputBorder,
              enabledBorder: widget.border ?? outlineInputBorder,
              focusedBorder: isActive
                  ? widget.border ??
                      OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(16))
                  : widget.border ?? outlineInputBorder,
              disabledBorder: widget.border ?? outlineInputBorder,
              focusedErrorBorder: widget.border ?? outlineInputBorder),
        ));
  }
}
