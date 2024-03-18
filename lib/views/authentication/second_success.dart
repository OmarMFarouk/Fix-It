import 'package:fixit/components/auth_button.dart';
import 'package:flutter/material.dart';

import '../../src/data/app_size.dart';

class SecondSuccessScreen extends StatelessWidget {
  const SecondSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: PhoneSize.phonewidth(context),
                height: PhoneSize.phoneHeight(context) * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/success_vector.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: PhoneSize.phoneHeight(context) * 0.08,
              ),
              const Text(
                'Success',
                style: TextStyle(
                    fontSize: 50,
                    color: Color(0XFF001A72),
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                'Congratulations !',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0XFF8A8989),
                ),
              ),
              SizedBox(
                height: PhoneSize.phoneHeight(context) * 0.04,
              ),
              AuthButton(title: 'Go To Home', onTap: () {}, isHollow: false)
            ],
          ),
        ),
      ),
    );
  }
}
