import 'package:bell_security_app/bell_primary_button.dart';
import 'package:bell_security_app/settings/widgets/section_header_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5EE),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: Theme.of(context).iconTheme,
        automaticallyImplyLeading: false,
        title: Text('O meu Perfil', style: TextStyle(color: Colors.black87)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(
                title: 'Informaçoes pessoais',
              ),
              SizedBox(height: 30),
              Text('Contacto de Emergencia #1'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(),
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
              SectionHeader(
                title: 'Localizaçao',
              ),
              SizedBox(height: 10),
              SwitchListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  'Partilhar o minha localizaçao',
                  style: TextStyle(color: Colors.black),
                ),
                value: true,
                onChanged: null,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, color: Colors.black45),
                  const SizedBox(width: 8.0),
                  Flexible(
                      child: Text(
                    'A sua localizaçao actual será enviada para os contactos proximos em caso de emergencia',
                    style: TextStyle(color: Colors.black45),
                  ))
                ],
              ),
              SwitchListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  'Marcar alerta no mapa',
                  style: TextStyle(color: Colors.black),
                ),
                value: true,
                onChanged: null,
              ),
              SectionHeader(
                title: 'Outros',
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60.0),
                child: RyzePrimaryButton(
                  title: 'Salvar Alteraçoes',
                  action: () {},
                  isAffirmative: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
