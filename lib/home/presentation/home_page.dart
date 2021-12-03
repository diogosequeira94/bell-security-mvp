import 'package:bell_security_app/home/presentation/widgets/accessories_carrousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5EE),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: Theme.of(context).iconTheme,
        automaticallyImplyLeading: false,
        title: Text('Bell', style: TextStyle(color: Colors.black87)),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black54,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/notifications');
              }),
          IconButton(
            icon: Icon(Icons.add, color: Colors.black54),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Text('Adicionar novo dispositivo'),
                    content: Container(
                      height: 100.0,
                      width: double.maxFinite,
                      child: ListView(
                        children: <Widget>[
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Pulseira Bell 2321'),
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.blueAccent,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14.0),
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Anel Bell 123'),
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.blueAccent,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14.0),
                          InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Colar Bell XPTO'),
                                const Text(
                                  'Remover',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.redAccent),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
      body: AccessoriesCarrousel(),
    );
  }
}
