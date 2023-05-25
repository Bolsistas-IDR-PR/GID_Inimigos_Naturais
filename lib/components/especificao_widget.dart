// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:inimigos_naturais_soja/components/caroussel.dart';
import 'package:inimigos_naturais_soja/repository/inimigos.dart';

class EspecificacaoWidget extends StatefulWidget {
  final List<Map<dynamic, List<String>>>? especificacao;
  final int index;

  const EspecificacaoWidget({Key? key, this.especificacao, required this.index}) : super(key: key);

  @override
  _EspecificacaoWidgetState createState() => _EspecificacaoWidgetState();
}

class _EspecificacaoWidgetState extends State<EspecificacaoWidget> {
  List<String>? _especificacao = [];

  @override
  void initState() {
    super.initState();
    _especificacao = widget.especificacao![widget.index].values.elementAt(0);
    // print(widget.especificacao![widget.index],);
  }

  @override
  Widget build(BuildContext context) {
    String? ordem = _especificacao!.isNotEmpty ? _especificacao![0] : ' **FALTA INFORMAÇÃO**';
    String? familia = _especificacao!.length > 1 ? _especificacao![1] : ' **FALTA INFORMAÇÃO**';
    String? nomeCientifico = _especificacao!.length > 2 ? _especificacao![2] : ' **FALTA INFORMAÇÃO**';
    String? nomeComum = _especificacao!.length > 3 ? _especificacao![3] : ' **FALTA INFORMAÇÃO**';
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                blurStyle: BlurStyle.normal,
                spreadRadius: 4,
                color: Colors.black26,
                offset: Offset(0, 8))
          ],
          color: Color.fromRGBO(45, 49, 52, 1),
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            width: double.maxFinite,
            constraints: const BoxConstraints(
              minHeight: 48,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: nomeCientifico == widget.especificacao!.elementAt(widget.index).keys.elementAt(0)
                            ? TextSpan(
                                text: nomeCientifico,
                                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                              )
                            : TextSpan(
                                text: widget.especificacao!.elementAt(widget.index).keys.elementAt(0),
                                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CarousselInimigos(
            index: widget.index,
            listaImagem: widget.especificacao![widget.index],
          ),
          ExpansionTile(
            maintainState: true,
            collapsedBackgroundColor: const Color.fromRGBO(74, 222, 128, 1),
            backgroundColor: const Color.fromRGBO(196, 205, 207, 1),
            textColor: Colors.black,
            iconColor: Colors.black,
            leading: const Icon(Icons.bug_report_outlined),
            childrenPadding: const EdgeInsets.all(8),
            expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
            title: const Text('Mais Informações'),
            children: [
              RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                    text: 'Ordem: ',
                    children: <InlineSpan>[
                      TextSpan(
                        text: ordem,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                    text: 'Família: ',
                    children: <InlineSpan>[
                      TextSpan(
                        text: familia,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                    text: 'Nome científico: ',
                    children: <InlineSpan>[
                      nomeCientifico == InimigosNaturais.especieNaoIdentificada ||
                              ordem == InimigosNaturais.especieIdentificadaNasImagens ||
                              nomeCientifico == InimigosNaturais.especieIdentificadaNasImagens
                          ? TextSpan(
                              text: nomeCientifico,
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                            )
                          : TextSpan(
                              text: nomeCientifico,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
                            )
                    ]),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                  text: 'Nome comum: ',
                  children: <InlineSpan>[
                    TextSpan(
                      text: nomeComum,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
