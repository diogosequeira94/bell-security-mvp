import 'package:bell_security_app/bottom_navigation_bar/bloc/bottom_navigation_bar_bloc.dart';
import 'package:bell_security_app/bottom_navigation_bar/widgets/bottom_nav_bar_widget.dart';
import 'package:bell_security_app/login/utils/login_strings.dart';
import 'package:bell_security_app/widgets/app_large_text.dart';
import 'package:bell_security_app/widgets/input_text_decorator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirebaseLogin extends StatelessWidget {
  FirebaseLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Image.asset(
                      LoginStrings.appLogoCirclePath,
                      height: 220,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 20,
                  ),
                  const SizedBox(height: 16),
                  _EmailInput(),
                  const SizedBox(height: 16),
                  _PasswordInput(),
                  _buildForgotPasswordBtn(),
                  const SizedBox(height: 36),
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

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  final kLabelStyle = TextStyle(
    color: Colors.black45,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
  );
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => null,
          decoration: inputTextDecorator(
            labelText: 'Email',
            errorText: null,
          ),
          // decoration: InputDecoration(
          //   labelText: 'Email',
          //   helperText: '',
          //   errorText: state.email.invalid ? 'invalid email' : null,
          // ),
        );
      }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              null,
          obscureText: true,
          decoration: inputTextDecorator(
            labelText: 'Password',
            errorText: null,
          ),
          // decoration: InputDecoration(
          //   labelText: 'Password',
          //   helperText: '',
          //   errorText: state.password.invalid ? 'invalid password' : null,
          // ),
        );
      }
}

class _LoginButton extends StatelessWidget {
  final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: theme.colorScheme.primary,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                        create: (context) => BottomNavigationBarBloc()
                          ..add(BottomNavigationHomePagePressed()),
                        child: BottomNavBarWidget()),
                  ));
            },
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
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
        onPressed: () => null,
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
