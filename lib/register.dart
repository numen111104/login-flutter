import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9E6E6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF474BCA),
        centerTitle: false,
        title: Text(
          "Educare Book",
          textAlign: TextAlign.center,
          style:
          GoogleFonts.itim(color: const Color(0xffF9E6E6), fontSize: 27.0),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xffF9E6E6)),
          onPressed: () {},
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 5.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: const ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Color(0xffF9E6E6))),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.itim().fontFamily,
                    fontSize: 17.0,
                    color: const Color(0xFF474BCA),
                  ),
                ),
              )
          )
        ],
      ),
      body: const SafeArea(
        child: LoginWidget(),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _PasswordState();
}

class _PasswordState extends State<LoginWidget> {
  String? _email;
  String? _password;
  bool _isHidden = true;
  bool _lightOn = true;

  void _toggleVisablity() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  Text _rememberingUser() {
    return _lightOn
        ? Text(
        "Thanks $_email, password anda adalah $_password, Anda akan diingat")
        : Text(
        "Thanks $_email, password anda adalah $_password Anda akan dilupakan");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Image.network(
              'https://raw.githubusercontent.com/numen111104/login-flutter/master/images/login.png',
              width: 200,
              height: 200,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  color: const Color(0xffF9E6E6),
                  boxShadow: const [
                    BoxShadow(color: Color(0xFF474BCA), offset: Offset(6, 6))
                  ],
                  border: Border.all(
                    color: const Color(0xFF474BCA),
                    width: 1,
                    style: BorderStyle.solid,
                  )),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Buat Akun anda",
                      style: GoogleFonts.itim(
                          color: const Color(0xFF474BCA),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          shadows: [
                            const Shadow(
                                color: Color(0xffFFA3BE),
                                offset: Offset(0.1, 0.1)),
                          ]),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color(0xFF474BCA),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF474BCA))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF474BCA))),
                        hintText: "Masukkan nama anda",
                        hintStyle:
                        GoogleFonts.inter(color: const Color(0xFF474BCA)),
                        labelText: 'Nama',
                        labelStyle:
                        GoogleFonts.inter(color: const Color(0xFF474BCA)),
                        filled: true,
                        fillColor: const Color(0xffF9E6E6),
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.call,
                          color: Color(0xFF474BCA),
                        ),
                        suffixIcon: IconButton(
                          onPressed: _toggleVisablity,
                          icon: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                            size: 20.0,
                            color: const Color(0xFF474BCA),
                          ),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF474BCA))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF474BCA))),
                        hintText: "Masukkan password anda",
                        hintStyle:
                        GoogleFonts.inter(color: const Color(0xFF474BCA)),
                        labelText: 'Password',
                        labelStyle:
                        GoogleFonts.inter(color: const Color(0xFF474BCA)),
                        filled: true,
                        fillColor: const Color(0xffF9E6E6),
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _email = value;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: Text(
                            "Ingat Saya",
                            style: TextStyle(
                                color: const Color(0xFF474BCA),
                                fontFamily: GoogleFonts.itim().fontFamily,
                                fontSize: 15),
                          )),
                      Switch(
                          value: _lightOn,
                          activeColor: const Color(0xffF9E6E6),
                          activeTrackColor: const Color(0xFF474BCA),
                          inactiveThumbColor: const Color(0xFF474BCA),
                          inactiveTrackColor: const Color(0xffF9E6E6),
                          trackOutlineColor:
                          const MaterialStatePropertyAll(Color(0xFF474BCA)),
                          trackOutlineWidth:
                          const MaterialStatePropertyAll(0.5),
                          onChanged: (bool value) {
                            setState(() {
                              _lightOn = !_lightOn;
                            });
                          })
                    ],
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Color(0xFF474BCA)),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: _rememberingUser(),
                              );
                            });
                      },
                      child: const Text(
                        "Masuk",
                        style: TextStyle(color: Color(0xffF9E6E6)),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Belum punya akun? buat akun baru",
                          style: TextStyle(
                              color: const Color(0xFF474BCA),
                              fontFamily: GoogleFonts.itim().fontFamily,
                              fontSize: 12.5),
                        ),
                        // TextButton(onPressed: () {}, child: )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Color(0xFF474BCA),
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Login dengan akun lain',
                      style: TextStyle(
                          color: const Color(0xFF474BCA),
                          fontSize: 17.0,
                          fontFamily: GoogleFonts.itim().fontFamily,
                          shadows: const [
                            Shadow(
                                color: Color(0xffFFA3BE),
                                offset: Offset(0.01, 0.09))
                          ]),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Color(0xFF474BCA),
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF474BCA))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 3.5),
                                  child: Image.network(
                                    'https://www.gstatic.com/images/branding/googleg/2x/googleg_standard_color_192dp.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                Text(
                                  "Google",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 15.0,
                                    color: const Color(0xffF9E6E6),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF474BCA))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  child: Image.network(
                                    'https://th.bing.com/th?id=ODLS.dff3174d-c8cf-4132-8c42-90ebaa81f245&w=32&h=32&qlt=90&pcl=fffffa&o=6&pid=1.2',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                Text(
                                  "Microsoft",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 15.0,
                                    color: const Color(0xffF9E6E6),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 50,
          child: Center(
            child: Text(
              "- Dibuat dengan ❤ oleh Nu'man Nasyar MZ -",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 10,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 1.0),
            ),
          ),
        ),
        Image.network(
          'https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png',
          height: 20,
          width: 20,
        )
      ],
    );
  }
}
