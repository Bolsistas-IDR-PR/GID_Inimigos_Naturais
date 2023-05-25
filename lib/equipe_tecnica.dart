import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inimigos_naturais_soja/components/icon_action_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main.dart';
import '../repository/authors_list.dart';

class EquipeTecnica extends StatefulWidget {
  const EquipeTecnica({Key? key}) : super(key: key);

  @override
  State<EquipeTecnica> createState() => _EquipeTecnicaState();
}

class _EquipeTecnicaState extends State<EquipeTecnica> {
  Future<void> _launchUrl(idx) async {
    HttpOverrides.global = MyHttpOverrides();
    final Uri urlSite = Uri.parse('${Authors.linkLattes[idx]}');
    if (await canLaunchUrl(urlSite)) {
      await launchUrl(urlSite);
    } else {
      throw Exception('Could not launch $urlSite');
    }
  }

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
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ],
    );
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
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Equipe Técnica',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Column(
                children: _list(context),
              ),
              const Divider(),
              const SizedBox(
                height: 8,
              ),
              Column(
                children: const [
                  Text(
                    "Agradecimentos",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      text: "Ana Beatriz Kawashima: ",
                      children: [
                        TextSpan(
                            text: "por ceder a imagem da larva de mosca taquinídea emergindo de percevejo.",
                            style: TextStyle(fontWeight: FontWeight.normal))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      text: "Dirceu Gassen ",
                      children: [
                        TextSpan(
                            text: "(in memoriam): ",
                            style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                        TextSpan(
                            text: "por ceder a imagem da aranha-caranguejo predando lagarta.",
                            style: TextStyle(fontWeight: FontWeight.normal))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _list(BuildContext context) => Authors.names
      .map(
        (e) => Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  ListTile(
                    isThreeLine: true,
                    title: Text(
                      Authors.names[Authors.names.indexOf(e)],
                      style: const TextStyle(fontSize: 16, letterSpacing: 1, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Authors.educationalBackground[Authors.names.indexOf(e)],
                          textAlign: TextAlign.justify,
                          style: const TextStyle(fontSize: 16, letterSpacing: 1),
                        ),
                        Text(
                          Authors.job[Authors.names.indexOf(e)],
                          textAlign: TextAlign.justify,
                          style: const TextStyle(fontSize: 16, letterSpacing: 1),
                        ),
                        Column(
                          children: [
                            const Text(
                              'Para mais informações acessar:',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, letterSpacing: 1),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  side: const BorderSide(
                                    style: BorderStyle.none,
                                  ),
                                ),
                                onPressed: () {
                                  _launchUrl(Authors.names.indexOf(e));
                                },
                                child: Text(
                                  Authors.linkLattes[Authors.names.indexOf(e)].toString(),
                                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
      .toList();
}
