import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

class EnviaSms extends StatelessWidget {
  const EnviaSms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Envia SMS Teste"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            ElevatedButton(
              onPressed: abrirWhatsApp,
              child: Text(
                'Enviar mensagem no whatsapp',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: enviarSms,
              child: Text(
                'Enviar SMS',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

abrirWhatsApp() async {
  var whatsappUrl =
      "whatsapp://send?phone=5512981474597&text=Alerta local X (utilizar api do maps e pegar endereço?)";

  if (await canLaunchUrlString(whatsappUrl)) {
    await launchUrlString(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

enviarSms() async {
  const url =
      "sms:12981474597?body=Alerta local X (utilizar api do maps e pegar endereço?)";
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
