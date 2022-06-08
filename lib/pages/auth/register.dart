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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(30),
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
                      fontSize: 20,
                      color: Color.fromARGB(255, 63, 62, 62),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        size: 30,
                        color: Color.fromARGB(255, 233, 76, 128),
                      ),
                      label: Text(
                        "Email",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      // hintText: "abcdefg@gmail.com"
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  width: size.width * 0.75,
                  height: 50,
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 233, 76, 128),
                    cursorHeight: 20,
                    controller: password,
                    obscureText: _obsecure,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 63, 62, 62),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_sharp,
                        size: 30,
                        color: Color.fromARGB(255, 233, 76, 128),
                      ),
                      suffixIcon: IconButton(
                        color: Color.fromARGB(255, 233, 76, 128),
                        onPressed: () {
                          setState(() {
                            if (_obsecure == true) {
                              _obsecure = false;
                              _passIcon = Icon(Icons.lock_open);
                            } else {
                              _obsecure = true;
                              _passIcon = Icon(Icons.lock);
                            }
                          });
                        },
                        icon: _passIcon,
                      ),
                      label: Text(
                        "Password",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () async {},
                  child: Text("Sign Up", style: TextStyle(fontSize: 23)),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      minimumSize: Size(200, 50),
                      primary: Color.fromARGB(255, 233, 76, 128)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Already have an account ? "),
            TextButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              child: Text(
                "Login",
                style: TextStyle(color: Color.fromARGB(255, 233, 76, 128)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
