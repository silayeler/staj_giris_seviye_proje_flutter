import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  final String name; // ad bilgisi
  final String email; // e-posta bilgisi
  final String phone; // telefon bilgisi

  const UserDetailPage({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcı Bilgileri'), // üst başlık
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // genel boşluk
        child: Card(
          elevation: 4, // hafif gölge verir
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              ListTile(
                leading: const Icon(Icons.person), // ikon
                title: Text(name), // ad bilgisi
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: Text(email), // e-posta
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: Text(phone), // telefon
              ),
            ],
          ),
        ),
      ),
    );
  }
}
