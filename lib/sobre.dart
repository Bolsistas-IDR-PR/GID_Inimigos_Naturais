import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/icon_action_app_bar.dart';

class Sobre extends StatefulWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [IconActionAppBar()],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'Sobre',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  'InfoApp',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
                leading: Icon(Icons.info_outline),
                trailing: Text(
                  'Versão: 1.0',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
              ),
              const Divider(),
              const Text(
                'O aplicativo é um produto desenvolvido pela área de entomologia do IDR-Paraná.\n\n'
                'Dúvidas e informações entre em contato através de idrparana@idr.pr.gov.br ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: () {
                  openIDR();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 81,
                        width: 150,
                        child: Image.asset(
                          'assets/assets_drawer/Logo_IDR.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Text(
                        'https://www.idrparana.pr.gov.br',
                        style: TextStyle(fontSize: 16, letterSpacing: 1, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  openYoutube();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 81,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/assets_sobre/icon_youtube.png',
                              width: 130,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'IDR-Paraná no Youtube',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, letterSpacing: 1, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Projeto financiado com recursos da Superintendência Geral de Ciência Tecnologia e Ensino Superior - SETI - FUNDO PARANÁ - Programa Universidade Sem Fronteiras - USF.\n\n'
                      'Este aplicativo fornece breve descrição diagnóstica e imagens, para o reconhecimento dos principais insetos predadores e parasitoides de pragas agrícolas.\n\n'
                      'Sua linguagem simples busca facilitar o entendimento para um público de menor afinidade à taxonomia entomológica, sendo ferramenta útil à capacitação de agricultores, estudantes e profissionais, que buscam conhecer os principais inimigos naturais de pragas que ocorrem no ambiente agrícola.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      child: Image.asset(
                        "assets/sobre/SETI.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> openIDR() async {
    final Uri urlSite = Uri.parse('https://www.youtube.com/c/IDRParan%C3%A1/featured');
    if (await canLaunchUrl(urlSite)) {
      await launchUrl(urlSite);
    } else {
      throw Exception('Could not launch $urlSite');
    }
  }

  Future<void> openYoutube() async {
    final Uri urlYoutube = Uri.parse('https://www.idrparana.pr.gov.br');
    if (await canLaunchUrl(urlYoutube)) {
      await launchUrl(urlYoutube);
    } else {
      throw 'Não foi possível abrir a URL $urlYoutube';
    }
  }
}
