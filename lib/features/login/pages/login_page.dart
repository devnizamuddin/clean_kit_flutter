import 'package:clean_kit_flutter/core/constants/display_text.dart';
import 'package:clean_kit_flutter/core/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/asset_path.dart';
import '../../../core/widgets/button/primary_button.dart';
import '../../../core/widgets/checkbox/primary_checkbox_tile.dart';
import '../../../core/widgets/image/primary_asset_image.dart';
import '../../../core/widgets/text_field/primary_text_field.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  bool _rememberMe = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLoginPressed() {
    // 1. Get the AuthBloc instance
    final authBloc = context.read<AuthBloc>();

    // 2. Dispatch the updated event with the checkbox status
    authBloc.add(
      AuthLoginRequested(
        email: _emailController.text,
        password: _passwordController.text,
        rememberMe: _rememberMe, // Pass the new state
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 128),
                PrimaryAssetImage(
                  assetPath: AssetPath.appIconCircle,
                  height: 128,
                  width: 128,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 48),
                Text(
                  DisplayText.appTagLine,
                  style: context.labelLarge,
                ),
                SizedBox(height: 48),

                PrimaryTextField(
                  labelText: 'Email',
                  controller: _emailController,
                ),
                SizedBox(height: 16),
                PrimaryTextField(
                  labelText: 'Password',
                  controller: _passwordController,
                ),
                PrimaryCheckboxTile(
                  label: 'Remember Me',
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value ?? false;
                    });
                  },
                ),
                SizedBox(height: 16),
                PrimaryButton(onPressed: _onLoginPressed, label: 'Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
