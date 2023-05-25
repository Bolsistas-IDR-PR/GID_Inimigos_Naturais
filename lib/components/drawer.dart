import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerBuild extends StatelessWidget {
  final Function setScreen;
  final int idx;
  const DrawerBuild(this.setScreen, {super.key, required this.idx});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              DrawerHeader(
                child: Image.asset(
                  'assets/assets_drawer/Logo_IDR.png',
                  fit: BoxFit.contain,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('Sobre'),
                onTap: () {
                  setScreen(1);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_outline_outlined),
                title: const Text('Equipe Técnica'),
                onTap: () {
                  setScreen(2);
                },
              ),
            ],
          ),
          const Divider(),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Icon(Icons.privacy_tip_outlined),
                  TextButton(
                    onPressed: () {
                      launchUrl(
                          Uri.parse('https://www.idrparana.pr.gov.br/Pagina/Politica-de-Privacidade-App-GID-Inimigos-Naturais-de-Pragas-Agricolas'));
                    },
                    child: const Text('Privacy Policy'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
