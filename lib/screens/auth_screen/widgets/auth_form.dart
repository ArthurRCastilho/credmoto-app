import 'package:credmoto/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({
    super.key,
  });

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool passwordVisibility = true;

  void togglePasswordVisibility() {
    setState(() {
      passwordVisibility = !passwordVisibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFormField(
            controller: usernameController,
            hintText: 'Username',
            prefixIcon: Icons.supervised_user_circle_outlined,
          ),
          CustomFormField(
            controller: passwordController,
            hintText: 'Password',
            prefixIcon: Icons.password,
            obscureText: passwordVisibility,
            suffixIcon: Icons.visibility,
            onTapSuffixIcon: togglePasswordVisibility,
          ),
          ElevatedButton(
            onPressed: () {
              // TODO!: Implementar a lógica de autenticação
              print('username: ${usernameController.text}');
              print('password: ${passwordController.text}');

              Get.offNamed('/home');
            },
            child: const Text(
              'Entrar',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
