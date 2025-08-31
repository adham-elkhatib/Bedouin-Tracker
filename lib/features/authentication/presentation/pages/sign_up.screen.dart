//t2 Core Packages Imports
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../Data/Repositories/user.repo.dart';
import '../../../../Data/Model/User/user.model.dart' as User;
import '../../../../core/Services/Auth/auth.service.dart';
import '../../../../core/Services/Auth/models/auth.model.dart';
import '../../../../core/Services/Auth/src/Providers/auth_provider.dart';
import '../../../../core/utils/SnackBar/snackbar.helper.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/tertiary_button.dart';
import '../../../home/presentation/pages/home.screen.dart';
import 'sign_in.screen.dart';

//t2 Dependencies Imports
//t3 Services
//t3 Models
//t1 Exports
class SignUpScreen extends StatefulWidget {
  //SECTION - Widget Arguments
  //!SECTION
  //
  const SignUpScreen({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //
  //SECTION - State Variables
  //t2 --Controllers
  final TextEditingController _fNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  bool hasMinLength = false;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;

  //t2 --Controllers
  //
  //t2 --State
  //t2 --State
  //
  //t2 --Constants
  final _formKey = GlobalKey<FormState>();

  //t2 --Constants
  //!SECTION
  //SECTION - Stateless functions
  //!SECTION

  //SECTION - Action Callbacks
  //!SECTION

  @override
  Widget build(BuildContext context) {
    //SECTION - Build Setup
    //t2 -Values
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    //t2 -Values
    //
    //t2 -Widgets
    //t2 -Widgets
    //!SECTION

    //SECTION - Build Return
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Account',
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Account Information'
                    ,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.15,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: _fNameController,
                    decoration: const InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'The name cannot be empty';
                      } else if (value.length < 3) {
                        return 'The name must be at least 3 characters long';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _phoneNumberController,
                    decoration: const InputDecoration(
                      hintText: "971********",
                      labelText: "mobile number",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      if (!RegExp(r'^971\d{9}$').hasMatch(value)) {
                        return 'The phone number must start with "971" and be 12 digits long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: "exa@example.com",
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                      if (!emailRegex.hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: "Password", // Already in English
                              labelText: "Password", // Already in English
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              setState(() {
                                hasMinLength = value.length >= 8;
                                hasUpperCase = RegExp(r'[A-Z]').hasMatch(value);
                                hasLowerCase = RegExp(r'[a-z]').hasMatch(value);
                                hasNumber = RegExp(r'[0-9]').hasMatch(value);
                                hasSpecialChar =
                                    RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                                        .hasMatch(value);
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'The password cannot be empty';
                              } else if (!hasMinLength) {
                                return 'The password must be at least 8 characters long';
                              } else if (!hasUpperCase) {
                                return 'The password must contain at least one uppercase letter';
                              } else if (!hasLowerCase) {
                                return 'The password must contain at least one lowercase letter';
                              } else if (!hasNumber) {
                                return 'The password must contain at least one number';
                              } else if (!hasSpecialChar) {
                                return 'The password must contain at least one special character';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    hasMinLength ? Icons.check : Icons.close,
                                    color: hasMinLength
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text("At least 8 characters long"),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    hasUpperCase ? Icons.check : Icons.close,
                                    color: hasUpperCase
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                      "Contains at least one uppercase letter"),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    hasLowerCase ? Icons.check : Icons.close,
                                    color: hasLowerCase
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                      "Contains at least one lowercase letter"),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    hasNumber ? Icons.check : Icons.close,
                                    color:
                                        hasNumber ? Colors.green : Colors.red,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text("Contains at least one number"),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    hasSpecialChar ? Icons.check : Icons.close,
                                    color: hasSpecialChar
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                      "Contains at least one special character"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    AuthService authService = AuthService(
                      authProvider: FirebaseAuthProvider(
                        firebaseAuth: FirebaseAuth.instance,
                      ),
                    );

                    AuthModel? authModel = await authService.signUp(
                      _emailController.text.trim(),
                      _passwordController.text,
                    );

                    if (authModel != null) {
                      User.User user =  User.User(
                        id: authModel.uid,
                        email: _emailController.text,
                        name: _fNameController.text,
                        phoneNumber: _phoneNumberController.text,
                      );

                      await AppUserRepo()
                          .createSingle(user, itemId: authModel.uid);
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const HomeScreen(),
                        ),
                        (route) => false,
                      );
                    } else {
                      SnackbarHelper.showError(context,
                          title: 'Failed to sign up');
                    }
                  }
                },
                title: "Sign up",
              ),
            ),
            TertiaryButton(
              title: "I already have an account",
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SignInScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
    //!SECTION
  }

  @override
  void dispose() {
    //SECTION - Disposable variables
    //!SECTION
    super.dispose();
  }
}
