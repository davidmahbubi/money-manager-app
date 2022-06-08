import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final email = TextEditingController();

  final password = TextEditingController();

  bool _obsecure = true;

  Icon _passIcon = Icon(Icons.lock);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(
                  ("assets/images/12.svg"),
                ),
              ),
              SizedBox(
                width: 300,
                height: 270,
                //color: Colors.black12,
                child: SvgPicture.asset(("assets/images/11.svg")),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  SizedBox(
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
                          color: Color.fromARGB(255, 233, 76, 128),
                        ),
                        label: Text(
                          "Email",
                          style: TextStyle(color: Colors.grey),
                        ),
                        // hintText: "abcdefg@gmail.com"
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  SizedBox(
                    width: size.width * 0.75,
                    height: 50,
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 233, 76, 128),
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
                          color: Color.fromARGB(255, 233, 76, 128),
                        ),
                        suffixIcon: IconButton(
                          color: const Color.fromARGB(255, 233, 76, 128),
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
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: size.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () async {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      minimumSize: Size(200, 50),
                      primary: Color.fromARGB(255, 233, 76, 128),
                    ),
                    child: const Text("Sign Up"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Already have an account ? "),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Color.fromARGB(255, 233, 76, 128)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
