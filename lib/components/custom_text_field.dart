import 'package:flutter/material.dart';

import '../src/data/app_size.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.icon,
      required this.hint,
      required this.isLast,
      required this.title,
      required this.obscure});
  final String icon;
  final String hint;
  final bool obscure;
  final String title;
  final bool isLast;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

bool showPassword = false;

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(color: Color(0xff001A72), fontSize: 20),
        ),
        TextField(
          obscureText: widget.obscure && showPassword,
          textInputAction:
              widget.isLast ? TextInputAction.done : TextInputAction.next,
          decoration: InputDecoration(
              suffixIcon: widget.obscure
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child: Image.asset(
                        showPassword == true
                            ? 'assets/icons/eye_opened.png'
                            : 'assets/icons/eye_closed.png',
                      ),
                    )
                  : null,
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              hintText: widget.hint,
              prefixIcon: Container(
                width: PhoneSize.phonewidth(context) * 0.15,
                margin: const EdgeInsets.only(
                  top: 6,
                  bottom: 6,
                  right: 10,
                ),
                decoration: const BoxDecoration(
                  border: Border(right: BorderSide(color: Color(0xff1B3A56))),
                ),
                child: Image.asset(
                  'assets/icons/${widget.icon}.png',
                  scale: 0.85,
                  height: 24,
                ),
              ),
              hintStyle:
                  const TextStyle(color: Color(0xffC1BEBE), fontSize: 15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: const BorderSide(color: Color(0xff1B3A56)))),
        )
      ],
    );
  }
}
