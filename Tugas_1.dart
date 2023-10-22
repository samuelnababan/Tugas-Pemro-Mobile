import 'package:flutter/material.dart';

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key});

  @override
  State<Tugas1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Tugas1> {
  bool tug1 = false;
  bool tug2 = false;
  bool tug3 = false;
  //define class untuk icon like

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //size
    return Scaffold( //berisikan appbar dan body
      appBar: AppBar( //appbar
        title: const Text("HEALING", style: TextStyle(fontWeight: FontWeight.bold),),//membuat title
        backgroundColor: Colors.blue.shade300,//menambahkan warna pada appbar
      ),
      body: Padding( //berfungsi untuk memberi jarak kiri dan kanan
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: ListView ( //scroll
            children: [
             const SizedBox(
              height: 16,
             ),
            Container(//container box untuk bukit pelangi
              width: size.width,
              height: size.height /3.3,
              decoration: BoxDecoration( //memberikan dekorasi untuk content
                color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(30)), //memberikan efek cembung pada container
                  boxShadow: [ //membberikan efek bayangan pada container
                    BoxShadow(
                        color: Colors.black54,
                        spreadRadius: 5,
                        blurRadius: 1,
                        offset: Offset(1, 3)//menentukan sisi mana yang diberikan efek shadow
                    )
                  ]
              ),
              child: Stack( //berfungsi untuk menumpukkan widget
                children: [
                  ClipRRect(// untuk memberikan efek round pada sisi gambar
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image(//gambar
                        fit: BoxFit.cover,//untuk menyesuaikan gambar
                        image: NetworkImage("https://lapisbogor.co.id/wp-content/uploads/2023/02/Wisata-Bogor-Bukit-Pelangi-1.jpg"),
                        width: size.width,//lebar
                        height: 170,//tinggi
                  )
      ),
                  Positioned(//mengatur posisi text dan icon agar seimbang
                    bottom: 0,
                    left: 10,
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, //membuat widget vertical
                              children: [
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Bukit Pelangi",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 0.5,
                                ),
                                Row(
                                children: [
                                  Icon(//membuat icon bintang
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    width: 2,
                                    height: 1,
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 1,
                                  ),
                                  Icon(//membuat icon lokasi
                                 Icons.pin_drop,
                                  color: Colors.teal,
                                  ),
                                  SizedBox(
                                    width: 2,
                                    height: 1,
                                  ),
                                  Text(
                                    "BOGOR",
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                                  ),
                                  SizedBox(
                                    width: 150,
                                    height: 1,
                                  ),
                                ],
                                )
                              ],
                            ),
                            InkWell( //membuat serta memberikan efek pada saat like
                              onTap: (){
                                setState(() {
                                  tug1 = !tug1; //memanggil class tug1
                                });
                              },
                              child: Icon(
                                tug1
                                ? Icons.favorite
                                : Icons.favorite_border,
                                    color:tug1 ? Colors.red : Colors.black,
                                size: 35,
                              ),
                            )
                          ],
                          ),
                        ),

                      ),


              ],



              ),

            ),
              const SizedBox( // jarak antara container
                height:16 ,
              ),
              Container( //container box untuk kebun raya
                width: size.width ,
                height: size.height /3.3,
                decoration: BoxDecoration(//meberikan dekorasi pada container
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),//memberikan efek cembung pada container
                    boxShadow: [//memberikan efek shadow
                      BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 5,
                          blurRadius: 1,
                          offset: Offset(1, 3)//untuk menentukan bagian mana yang diberi shadow
                      )
                    ]
                ),
                child: Stack(//untuk menumpuk widget
                  children: [
                    ClipRRect(//memberikan efek round pada gambar
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image(//import gambar dari internet
                          fit: BoxFit.cover,
                          image: NetworkImage("https://kebunraya.id/images/about/side-bogor.jpg"),
                          width: size.width,
                          height: 170,
                        )
                    ),
                    Positioned(//mengatur posisi text dan icon agar seimbang
                      bottom: 0,
                      left: 10,
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,//membuat widget vertical
                              children: [
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Kebun Raya",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 0.5,
                                ),
                                Row(
                                  children: [
                                    Icon(//membuat icon bintang
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 2,
                                      height: 1,
                                    ),
                                    Text(
                                      "4.7",
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                      height: 1,
                                    ),
                                    Icon(//membuat icon lokasi
                                      Icons.pin_drop,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      width: 2,
                                      height: 1,
                                    ),
                                    Text(
                                        "BOGOR",
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 1,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            InkWell(//membuat serta memberikan efek pada like
                              onTap: (){
                                setState(() {
                                  tug2 = !tug2;//memanggil tug2
                                });
                              },
                              child: Icon(
                                tug2
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:tug2 ? Colors.red : Colors.black,
                                size: 35,
                              ),
                            )
                          ],
                        ),
                      ),

                    ),


                  ],



                ),

              ),
              const SizedBox(//jarak antara container
                height:16 ,
              ),
              Container(//container box untuk taman safari
                width: size.width,
                height: size.height /3.3,
                decoration: BoxDecoration(//memberikan dekorasi pada container
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),//memberikan efek round pada container
                  boxShadow: [//memberikan efek shadow pada container
                    BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 5,
                      blurRadius: 1,
                      offset: Offset(1, 3)//menentukan bagian mana yang ingin diberi shadow
                    )
                  ]
                ),
                child: Stack(//untuk menumpuk widget
                  children: [
                    ClipRRect(//untuk memberikan efek round pada gambar
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2021/12/08/8a96b5a0-024d-4e5e-9999-508f7349aed7-1638950262082-ee0f4772e8f12f62cbd8285aed4c8314.jpg"),
                          width: size.width,
                          height: 170,
                        )
                    ),
                    Positioned(// mengatur posisi text dan icon agar seimbang
                      bottom: 0,
                      left: 10,
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,//membuat widget vertical
                              children: [
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Taman Safari",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 0.5,
                                ),
                                Row(
                                  children: [//membuat icon bintang
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 2,
                                      height: 1,
                                    ),
                                    Text(
                                      "4.7",
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                      height: 1,
                                    ),
                                    Icon(//membuat ikon lokasi
                                      Icons.pin_drop,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      width: 2,
                                      height: 1,
                                    ),
                                    Text(
                                        "BOGOR",
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 1,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            InkWell(//membuat dan memberikan efek like
                              onTap: (){
                                setState(() {
                                  tug3 = !tug3;
                                });
                              },
                              child: Icon(
                                tug3
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:tug3 ? Colors.red : Colors.black,
                                size: 35,
                              ),
                            )
                          ],
                        ),
                      ),

                    ),


                  ],



                ),

              ),
              SizedBox(//memberikan jarak antar container
                height: 16,
              )
          ],

    ),
    ),
    );
  }
}
