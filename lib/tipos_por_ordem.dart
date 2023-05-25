// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inimigos_naturais_soja/components/especificao_widget.dart';

import 'components/icon_action_app_bar.dart';

class TiposPorOrdem extends StatefulWidget {
  final List<Map<dynamic, List<String>>>? listaTipos;
  final String titulo;
  const TiposPorOrdem({Key? key, required this.listaTipos, required this.titulo}) : super(key: key);
  @override
  State<TiposPorOrdem> createState() => _TiposPorOrdemState();
}

class _TiposPorOrdemState extends State<TiposPorOrdem> {
  List<String>? verificaNinfaAdulto(Map<dynamic, List<String>?> listaImagens) {
    List<String>? _listaImagens;
    if (listaImagens.containsKey('ImagensAdulto') && listaImagens.containsKey('ImagensNinfa')) {
      _listaImagens = [];
      _listaImagens.addAll(listaImagens['ImagensAdulto'] ?? []);
      _listaImagens.addAll(listaImagens['ImagensNinfa'] ?? []);
    } else {
      _listaImagens = listaImagens['Imagens'];
    }
    return _listaImagens;
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(196, 205, 207, 1),
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: const [IconActionAppBar()],
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: widget.titulo,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.listaTipos!.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: EspecificacaoWidget(especificacao: widget.listaTipos, index: index),
          );
        },
      ),
    );
  }
}
