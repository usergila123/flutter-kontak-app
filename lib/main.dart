import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KontakPage(),
    );
  }
}

class KontakPage extends StatelessWidget {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Kontak"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // INPUT SECTION
                  TextField(
                    controller: namaController,
                    decoration: InputDecoration(
                      labelText: "Nama Kontak",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: nomorController,
                    decoration: InputDecoration(
                      labelText: "Nomor HP",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 12),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // hanya UI (sesuai tugas)
                      },
                      child: Text("Tambah Kontak"),
                    ),
                  ),

                  SizedBox(height: 20),

                  // LIST SECTION
                  Text(
                    "Daftar Kontak",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Arya"),
                    subtitle: Text("08123456789"),
                  ),
                  Divider(),

                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Budi"),
                    subtitle: Text("08234567890"),
                  ),
                  Divider(),

                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Citra"),
                    subtitle: Text("08345678901"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}