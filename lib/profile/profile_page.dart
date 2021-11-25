import 'package:bell_security_app/settings/widgets/section_header_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: Theme.of(context).iconTheme,
        automaticallyImplyLeading: false,
        title: Text('O meu Perfil', style: TextStyle(color: Colors.black87)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(title: 'Informaçoes pessoais',),
              SizedBox(height: 30),
              Text('Contacto de Emergencia #1'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                ),
              ),
              SizedBox(height: 10),
              Text('Contacto de Emergencia #2'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(),
              ),
              SizedBox(height: 10),
              Text('Contacto de Emergencia #3'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(),
              ),
              SizedBox(height: 30),
              SectionHeader(title: 'Localizaçao',),
              SizedBox(height: 30),
              SwitchListTile(
                title: Text('Partilhar o minha localizaçao'),
                  value: true, onChanged: null)
            ],
          ),
        ),
      ),
    );
  }
}
