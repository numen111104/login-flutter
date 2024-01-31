import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9E6E6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF474BCA),
        centerTitle: true,
        title: Text(
          "Educare Book",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.itim(color: const Color(0xffF9E6E6), fontSize: 27.0),
        ),
        leading: const Icon(
          Icons.book_online_outlined,
          color: Color(0xffF9E6E6),
        ),
        actions: const [
          Icon(
            Icons.data_saver_on_outlined,
            color: Color(0xffF9E6E6),
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
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Image.asset(
              'images/login.png',
              width: 225,
              height: 225,
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
                      "Login ke Akun Anda",
                      style: GoogleFonts.itim(
                          color: const Color(0xffFFA3BE),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          shadows: [
                            const Shadow(
                                color: Color(0xFF474BCA), offset: Offset(1, 2)),
                          ]),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Color(0xFF474BCA),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF474BCA))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF474BCA))),
                        hintText: "Masukkan email anda",
                        hintStyle:
                            GoogleFonts.inter(color: const Color(0xFF474BCA)),
                        labelText: 'Email',
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
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.key,
                          color: Color(0xFF474BCA),
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
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                    "Terima kasih $_email keren $_password", style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: GoogleFonts.inter().fontFamily
                                ),),
                              );
                            });
                      },
                      child: const Text("Login"))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xFF474BCA),
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Login dengan akun lain',

                      style: TextStyle(
                        color: Color(0xFF474BCA),
                          fontSize: 16.0,
                        shadows: [
                          Shadow(
                            color: Color(0xffFFA3BE),
                            offset: Offset(0.5, 1)
                          )
                        ]
                      ),
                    ),
                  ),
                  Expanded(
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
                                  MaterialStatePropertyAll(Color(0xffFFA3BE))),
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
                                const Text(
                                  "Google",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color(0xffF9E6E6),
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
                                  MaterialStatePropertyAll(Color(0xffFFA3BE))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 3.5),
                                  child: Image.network(
                                    'https://th.bing.com/th?id=ODLS.dff3174d-c8cf-4132-8c42-90ebaa81f245&w=32&h=32&qlt=90&pcl=fffffa&o=6&pid=1.2',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                const Text(
                                  "Microsoft",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color(0xffF9E6E6),
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
        )
      ],
    );
  }
}
