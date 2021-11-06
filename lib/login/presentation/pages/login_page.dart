import 'package:bell_security_app/login/presentation/widgets/google_sign_in_button.dart';
import 'package:bell_security_app/login/presentation/widgets/login_button.dart';
import 'package:bell_security_app/login/presentation/widgets/login_page_header.dart';
import 'package:bell_security_app/login/utils/login_strings.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginPageHeader(),
            Form(
              //autovalidate: state.showErrorMessages,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                          style: TextStyle(color: Colors.green),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: LoginStrings.textFieldEmailLabel,
                            focusColor: Colors.green,
                          ),
                          autocorrect: false,
                          onChanged: (value) {
                            // context.read<SignInFormBloc>()
                            //     .add(SignInFormEvent.emailChanged(value)),
                          }

                          // validator: (_) => context
                          //     .read<SignInFormBloc>()
                          //     .state
                          //     .emailAddress
                          //     .value
                          //     .fold(
                          //         (f) => f.maybeMap(
                          //             invalidEmail: (_) =>
                          //                 LoginStrings.textFieldEmailError,
                          //             orElse: () => null),
                          //         (_) => null),
                          ),
                    ),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key),
                          labelText: LoginStrings.textFieldPasswordLabel,
                        ),
                        autocorrect: false,
                        obscureText: true,
                        onChanged: (value) {
                          // context.read<SignInFormBloc>().add(
                          //       SignInFormEvent.passwordChanged(value),
                          //     );
                        },
                        // validator: (_) => context
                        //     .read<SignInFormBloc>()
                        //     .state
                        //     .password
                        //     .value
                        //     .fold(
                        //         (f) => f.maybeMap(
                        //             shortPassword: (_) =>
                        //                 LoginStrings.textFieldPasswordError,
                        //             orElse: () => null),
                        //         (_) => null),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(fontSize: 14.0),
                          ),
                          onTap: () => Navigator.of(context)
                              .pushNamed('/password-reset'),
                        )),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 12.0),
                      child: LoginButtonWidget(
                          title: LoginStrings.signInButton,
                          action: () {
                            // context.read<SignInFormBloc>().add(
                            //       const SignInFormEvent
                            //           .signInWithEmailAndPasswordPressed(),
                            //     );
                          },
                          isAffirmative: true),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: SignInGoogleButton(
                        action: () {
                          // context.read<SignInFormBloc>().add(
                          //     const SignInFormEvent.signInWithGooglePressed());
                        },
                      ),
                    ),
                    Center(
                        child: InkWell(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: 14.0,
                              color:
                                  Theme.of(context).textTheme.headline6?.color),
                          children: [
                            new TextSpan(text: 'Dont have an account? '),
                            new TextSpan(
                                text: 'Register',
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      onTap: () => Navigator.of(context).pushNamed('/register'),
                    )),
                    // if (state.isSubmitting) ...[
                    //   const SizedBox(height: 8.0),
                    //   const LinearProgressIndicator(value: null),
                    // ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
