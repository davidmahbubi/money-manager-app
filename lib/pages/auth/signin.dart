import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_manager_app/pages/auth/signup.dart';
import 'package:money_manager_app/services/auth_services.dart';

import 'package:money_manager_app/data/user_data.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool _obsecure = true;
  Icon _passIcon = const Icon(Icons.lock);

  void clearUserData() {
    UserData.activeUser = null;
  }

  @override
  Widget build(BuildContext context) {
    clearUserData();

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(("assets/images/13.svg")),
                const SizedBox(height: 100),
                Center(
                  child: SizedBox(
                    width: size.width * 0.75,
                    height: 50,
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 233, 76, 128),
                      cursorHeight: 20,
                      controller: email,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 63, 62, 62),
                      ),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          size: 24,
                          color: Color.fromARGB(255, 240, 96, 127),
                        ),
                        label: Text(
                          "Email",
                          style: TextStyle(color: Colors.grey),
                        ),
                        // hintText: "abcdefg@gmail.com"
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                Center(
                  child: SizedBox(
                    width: size.width * 0.75,
                    height: 50,
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 240, 96, 127),
                      cursorHeight: 20,
                      controller: password,
                      obscureText: _obsecure,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 63, 62, 62),
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_sharp,
                          size: 24,
                          color: Color.fromARGB(255, 240, 96, 127),
                        ),
                        suffixIcon: IconButton(
                          color: const Color.fromARGB(255, 240, 96, 127),
                          onPressed: () {
                            setState(() {
                              if (_obsecure == true) {
                                _obsecure = false;
                                _passIcon = const Icon(Icons.lock_open);
                              } else {
                                _obsecure = true;
                                _passIcon = const Icon(Icons.lock);
                              }
                            });
                          },
                          icon: _passIcon,
                        ),
                        label: const Text(
                          "Password",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                Center(
                  child: SizedBox(
                    width: size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () async {
                        await AuthServices.signInEmailPassword(
                          email.text,
                          password.text,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        minimumSize: const Size(200, 50),
                        primary: const Color.fromARGB(255, 240, 96, 127),
                      ),
                      child: const Text("Login"),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(child: Text("Doesn’t have an account yet ?")),
                Center(
                  child: TextButton(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => SignUp(),
                        ),
                      ).then((_) {
                        setState(() {});
                      });
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 240, 96, 127),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
