import 'package:flutter/material.dart';

class Selecionador extends StatefulWidget {
  final List<dynamic>? nomeFases;
  final Function? escolhaFase;
  final List<List<String>>? imagensFases;
  final int? idx;
  const Selecionador({
    Key? key,
    this.nomeFases,
    this.escolhaFase,
    this.imagensFases,
    this.idx,
  }) : super(key: key);

  @override
  State<Selecionador> createState() => _SelecionadorState();
}

class _SelecionadorState extends State<Selecionador> {
  final Color _selectedColor = const Color.fromRGBO(42, 254, 120, 1);
  final Color _selectedColorsShadow = const Color.fromRGBO(143, 255, 184, 1);
  final Color _unselectedColor = Colors.black12;
  late List<bool> _setButton;
  @override
  void initState() {
    super.initState();
    List<dynamic> listaNomes = widget.nomeFases!;
    listaNomes.removeWhere((element) => element == 'Especificação Ninfa' || element == 'Especificação Adulto');
    setState(
      () {
        _setButton = List.filled(listaNomes.length, false);
        _setButton.last = true;
      },
    );
  }

  Wrap _builderOfButtons(List<dynamic> fases) {
    List<bool> faseEscolhida = List.generate(fases.length, (index) => false);
    List<Widget> buildList = [];
    for (var element in fases) {
      buildList.add(
        SizedBox(
          height: _setButton[fases.indexOf(element)] ? 46 : 40,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: OutlinedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(6),
                side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Colors.white70)),
                shadowColor: MaterialStateProperty.all<Color>(
                    _setButton[fases.indexOf(element)] ? _selectedColorsShadow : _unselectedColor),
                minimumSize: MaterialStateProperty.all<Size?>(
                  const Size.fromWidth(80),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                foregroundColor:
                    MaterialStatePropertyAll(_setButton[fases.indexOf(element)] ? Colors.black87 : Colors.black54),
                backgroundColor:
                    MaterialStatePropertyAll(_setButton[fases.indexOf(element)] ? _selectedColor : _unselectedColor),
              ),
              onPressed: () {
                faseEscolhida[fases.indexOf(element)] = true;
                setState(
                  () {
                    _setButton = faseEscolhida;
                  },
                );
                widget.escolhaFase!(fases[_setButton.indexOf(true)]);
              },
              child: Text(
                element,
                style: TextStyle(
                    color: _setButton[fases.indexOf(element)] ? Colors.black : Colors.white70,
                    fontSize: 18,
                    fontWeight: _setButton[fases.indexOf(element)] ? FontWeight.bold : FontWeight.normal),
              ),
            ),
          ),
        ),
      );
    }

    return Wrap(
      direction: Axis.horizontal, // Define a direção (horizontal ou vertical)
      spacing: 4.0, // Define o espaçamento entre os widgets
      runSpacing: 4.0, // Define o espaçamento entre as linhas ou colunas
      children: buildList, // Lista de Widgets conforme o tipo e fase
    );
  }

  Widget _verificaFases(List<dynamic>? fases) {
    switch (fases?.length) {
      case (1):
        return fases!.contains('Imagens')
            ? const SizedBox.shrink()
            : OutlinedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(6),
                  side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Colors.white70)),
                  shadowColor: MaterialStateProperty.all<Color>(_selectedColorsShadow),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  foregroundColor: const MaterialStatePropertyAll(Colors.black54),
                  backgroundColor: MaterialStatePropertyAll(_selectedColor),
                ),
                onPressed: null,
                child: Text(
                  "${fases[0]}",
                  style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              );
    }
    return _builderOfButtons(fases!);
  }

  @override
  Widget build(BuildContext context) {
    return _verificaFases(widget.nomeFases);
  }
}
