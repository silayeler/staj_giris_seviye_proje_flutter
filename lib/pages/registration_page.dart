import 'package:flutter/material.dart';
import 'user_detail_page.dart'; // sayfa geçişi için eklendi
import 'package:flutter/services.dart'; // kalvye girislerini kontrol eder
 

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() =>
      _RegistrationPageState(); //durum yönetimi sağlayacak,
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<
      FormState>(); //formkey diye bi globalkey nesnesi olsuuyor, bu key de bir FormState nesnesiyle ilsikili.yani bu key sayesinde forma dısarıdan erisip validate save ve reset islemleri yapılabilir
  String name = '';
  String email = '';
  String phone = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıt Formu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), //ic bosluk ekledim
        child: Form(
          //form icin child actim
          key:
              _formKey, // burada form widgetına kontrol edebilmek icin key veriyo . bu widgettan bir sürü olabilir hangi widgetı kontrol edecegini belirlemek icin burayı yazdıkm
          child: ListView(
            children: [
              TextFormField(
                  //kullanıcadan veri alma widgetını actık
                  decoration:
                      const InputDecoration(labelText: 'Adınız Soyadınız'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen adınızı giriniz!!!';
                    }
                    return null;
                  },
                  onSaved: (value) => name = value!),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-posta'),
                keyboardType: TextInputType.emailAddress, //mail icin uygun klavye
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Geçerli bir e-posta giriniz!';
                  }
                  return null;
                },
                onSaved: (value) => email = value!,
              ),
              TextFormField(
  decoration: const InputDecoration(labelText: 'Telefon'),
  keyboardType: TextInputType.phone, //telefon klavyesi acılır
  inputFormatters: [FilteringTextInputFormatter.digitsOnly], // sadece sayı
  validator: (value) {
    if (value == null || value.length < 10) {
      return 'Telefon numarası en az 10 haneli olmalı!';
    }
    return null;
  },
  onSaved: (value) => phone = value!,
),

              const SizedBox(height: 20), // butonla arasında bosluk
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    //veriler alınır alınmaz yeni sayfaya geçiş yapılır
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailPage(
                          name: name,
                          email: email,
                          phone: phone,
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Kaydol'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

