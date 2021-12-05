
import 'package:bell_security_app/firebase_login/cubit/login_cubit.dart';
import 'package:bell_security_app/widgets/app_large_text.dart';
import 'package:bell_security_app/widgets/input_text_decorator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failure'),
              ),
            );
        }
      },
      child: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/tripsner-adapt-icon.png',
                        height: 120,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: AppLargeText(text: "Hey,")),
                Container(
                    alignment: Alignment.centerLeft,
                    child: AppLargeText(
                      text: "Let's Login",
                    )),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(height: 16),
                _EmailInput(),
                const SizedBox(height: 16),
                _PasswordInput(),
                const SizedBox(height: 16),
                _LoginButton(),
                const SizedBox(height: 16),
                _GoogleLoginButton(),
                const SizedBox(height: 16),
                _SignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          decoration: inputTextDecorator(
            labelText: 'Email',
            errorText: state.email.invalid ? 'invalid email' : null,
          ),
          // decoration: InputDecoration(
          //   labelText: 'Email',
          //   helperText: '',
          //   errorText: state.email.invalid ? 'invalid email' : null,
          // ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginCubit>().passwordChanged(password),
          obscureText: true,
          decoration: inputTextDecorator(
            labelText: 'Password',
            errorText: state.password.invalid ? 'invalid password' : null,
          ),
          // decoration: InputDecoration(
          //   labelText: 'Password',
          //   helperText: '',
          //   errorText: state.password.invalid ? 'invalid password' : null,
          // ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                color: theme.colorScheme.primary,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: state.status.isValidated
                      ? () => context.read<LoginCubit>().logInWithCredentials()
                      : null,
                  child: Text("Login",
                      textAlign: TextAlign.center,
                      style: style.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              );
      },
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: theme.colorScheme.secondary,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.android_rounded, color: Colors.white),
              SizedBox(width: 10),
              Text("Sign in with Google",
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );

    // ElevatedButton.icon(
    //   key: const Key('loginForm_googleLogin_raisedButton'),
    //   label: const Text(
    //     'SIGN IN WITH GOOGLE',
    //     style: TextStyle(color: Colors.white),
    //   ),
    //   style: ElevatedButton.styleFrom(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //     primary: theme.colorScheme.secondary,
    //   ),
    //   icon: const Icon(FontAwesomeIcons.google, color: Colors.white),
    //   onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
    // );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Navigator.of(context).push<void>(SignUpPage.route())
    final theme = Theme.of(context);
    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => null,
      child: Text(
        'CREATE ACCOUNT',
        style: TextStyle(color: theme.primaryColor, fontSize: 18),
      ),
    );
  }
}
