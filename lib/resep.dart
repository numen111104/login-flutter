import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: const Text("Aplikasi Profile"),
        centerTitle: true,
      ),*/
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              offset: Offset(8, 5),
                              color: Color(0xff002747),
                            )
                          ],
                          color: const Color(0xff98a7dd),
                          border: Border.all(color: Colors.black, width: 0.4),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4.0))),
                      child: const Text(
                        "Nu'man Nasyar MZ",
                        style: TextStyle(fontSize: 15.0),
                      ))
                ],
              ),
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.only(top: 6.0, bottom: 8.0),
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: const Text(
                        "Beliau adalah seorang Mahasiswa IDN",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ))
                ],
              ),
              Column(
                children: [
                  Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff8ffffc),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(56),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(7.0),
                              bottomRight: Radius.circular(15.0))),
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(top: 9.0, bottom: 12.0),
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(bottom: 12.0),
                              child: const Text("Total Income")),
                           Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //3 ROW
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(9),
                                  child: const Column(
                                    children: [
                                      Icon(Icons.home),
                                      Text("Home"),
                                      Text("\$456")
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(9),
                                  child: const Column(
                                    children: [
                                      Icon(Icons.money_off_csred_outlined),
                                      Text("Bank"),
                                      Text("\$5.400")
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(9),
                                  child: const Column(
                                    children: [
                                      Icon(Icons.streetview),
                                      Text("Used"),
                                      Text("\$840")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 8.5, bottom: 7.8),
                        padding: const EdgeInsets.all(10.4),
                        decoration: BoxDecoration(
                            color: const Color(0xfff4f3f2),
                            border: Border.all(
                              color: const Color(0xffbababa),
                              width: 0.8,
                            )),
                        child: Column(children: [
                          const Row(children: [
                            Icon(Icons.star, color: Color(0xFFFFD700)),
                            Icon(Icons.star, color: Color(0xFFFFD700)),
                            Icon(Icons.star, color: Color(0xFFFFD700)),
                            Icon(Icons.star, color: Color(0xFFFFD700)),
                            Icon(Icons.star, color: Color(0xFFFFD700)),
                          ]),
                          Container(
                              margin: const EdgeInsets.only(top: 4),
                              child: const Text("170 viewers")),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.deepOrange)
                  ]
                ),
                child: Image.network(
                    "https://media.licdn.com/dms/image/D5603AQEjf8jvwg0faQ/profile-displayphoto-shrink_800_800/0/1693293867094?e=2147483647&v=beta&t=7roA30YtzwQ8zvyVN4fYC0WxqfMpH7islkvZR_t2pxg", width: 300, height :300,),
              )
            ],
          ),
        ],
      ),
    );
  }
}
