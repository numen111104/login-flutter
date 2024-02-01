import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({super.key});

  final List<String> listGambar = [
    "https://scontent.cdninstagram.com/v/t51.2885-15/424125718_921751199342969_8510436291828434436_n.webp?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=105&_nc_ohc=OPctT-oqulAAX_BD44K&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzI5MDk4NjAyNjAyOTIzMjA2MQ%3D%3D.2-ccb7-5&oh=00_AfBZlGvNIouQwrmfyqFMHjwHWghL2pjbz2vSDKMNAJoLZw&oe=65BE9243&_nc_sid=10d13b",
    "https://scontent.cdninstagram.com/v/t51.2885-15/403970724_1090631168782424_636313040486577628_n.webp?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=108&_nc_ohc=UVMFY4sMuuoAX9xExkV&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzI0MzAzMDQ0MTg5MjM0ODQ5OQ%3D%3D.2-ccb7-5&oh=00_AfAsusVBFfRO4c1QYwuJlaFktNQ835tnAQeeLC6H5q9MjA&oe=65BDBE35&_nc_sid=10d13b",
    "https://scontent.cdninstagram.com/v/t51.2885-15/397003730_646763940903743_7002530196553766734_n.webp?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=111&_nc_ohc=E2id1zto8GYAX-ohfw6&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzIyNDY5MTQ5NzI3NDEzMTA0OQ%3D%3D.2-ccb7-5&oh=00_AfBSqoxIiTo40eEzD_AjZb_xdYgbjcApJPKtJXFkd0Lk3w&oe=65BF7BA3&_nc_sid=10d13b",
    "https://scontent.cdninstagram.com/v/t51.2885-15/372132456_3565798933688318_3901526097483317095_n.webp?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=pBR5JXed5T8AX9vXjur&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzE3OTE0MzUyMDY2NTM5MjI1OQ%3D%3D.2-ccb7-5&oh=00_AfBrKHL4GvKlUUUe6HXhV5vqUKv1TLSfH5W9KyaOYeuklg&oe=65C0C92F&_nc_sid=10d13b",
    "https://scontent.cdninstagram.com/v/t51.2885-15/369520484_2379964148850661_3929596872927774749_n.webp?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi43MjB4NzIwLnNkciJ9&_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=Uz28uQAkqP0AX8d_Ucl&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzE3NDAzMzY1OTQwOTY4MTkzNg%3D%3D.2-ccb7-5&oh=00_AfD1k8R93zNLL8fOzxOKvPxOBg_liSXtb__IDl34ILDJcA&oe=65C01530&_nc_sid=10d13b",
    "https://scontent.cdninstagram.com/v/t51.2885-15/364147236_1261775927811987_79617205378580777_n.webp?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=bV6I1AuPhQsAX8vVF_3&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzE1OTE0MTI3MzIzMTUzOTc4OQ%3D%3D.2-ccb7-5&oh=00_AfAR3vkO1vzRX-rttHgL3czf-d_qYNQDWD_ZUgESbHHUhA&oe=65C07C9D&_nc_sid=10d13b",
    "https://scontent.cdninstagram.com/v/t51.2885-15/361944395_1074897953487557_2735232255704605242_n.webp?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=105&_nc_ohc=nWA_4JzdjIIAX-Xcep7&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzE1MDMxOTc5MTE1NjE3NDg0Mg%3D%3D.2-ccb7-5&oh=00_AfBAbz_mUxoj4M6gtxDDVNR5rbZd-TbO6ZFP0nFgS2ZTZQ&oe=65BDC4AF&_nc_sid=10d13b"
  ];
  final List<int> angka = [1,2,3,4,5,6,7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: listGambar.length,
        itemBuilder: (BuildContext context, int link) {
          return Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.white)),
              child: Center(
                child: Image.network(listGambar[link]),
              ));
        },
        separatorBuilder: (BuildContext context, int number) {
          return SizedBox(
            width: 30,
            child: Center(child: Text('Page ${angka[number]}', style: const TextStyle(fontSize: 50),)),
          );
        },
      ),
    );
  }
}
//Kita bisa menggunakan map untuk melooping list yang sudah kita buat.
/*
* ListView(
        scrollDirection: Axis.horizontal,
        children: listGambar.map((linkIndex) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.white, border: Border.all(color: Colors.white)),
            child: Center(child: Image.network(linkIndex)),
          );
        }).toList(),
      ),
* */

//ListView Builder
/*
ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listGambar.length,
        itemBuilder: (BuildContext context, int link) {
          return Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.white)),
              child: Center(
                child: Image.network(listGambar[link]),
              ));
        },
      ),
*/

//ListView.separated

