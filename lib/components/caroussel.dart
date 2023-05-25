import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'photo_view.dart';
import 'botoes_selecionadores.dart';

class CarousselInimigos extends StatefulWidget {
  final int index;
  final Map<dynamic, List<String>>? listaImagem;
  const CarousselInimigos({
    Key? key,
    required this.index,
    this.listaImagem,
  }) : super(key: key);

  @override
  State<CarousselInimigos> createState() => _CarousselInimigosState();
}

class _CarousselInimigosState extends State<CarousselInimigos> {
  final CarouselController _carouselController = CarouselController();
  String? _currentFase;

  @override
  void initState() {
    super.initState();
    _carouselController.onReady.then((value) => _carouselController.jumpToPage(0));
    _currentFase = widget.listaImagem?.keys.skip(1).last;
  }

  void _setFase(String fase) {
    setState(() {
      _currentFase = fase;
      _carouselController.jumpToPage(0);
    });
  }

  List<Widget>? imagensCarrosseis() {
    List<String>? listaImagens = widget.listaImagem![_currentFase];
    return listaImagens
        ?.map(
          (item) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PhotoInseto(foto: item),
                ),
              );
            },
            child: Image.asset(item, fit: BoxFit.cover, width: 1000),
          ),
        )
        .toList();
  }

  int _page = 0;
  @override
  Widget build(BuildContext context) {
    int listLength = widget.listaImagem![_currentFase]!.length;

    return Column(
      children: [
        Selecionador(
          nomeFases: widget.listaImagem!.keys.skip(1).toList(),
          imagensFases: widget.listaImagem!.values.skip(1).toList(),
          idx: widget.index,
          escolhaFase: _setFase,
        ),
        const SizedBox(
          height: 8,
        ),
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            onPageChanged: (page, reason) {
              setState(() {
                _page = page;
              });
            },
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: false,
            aspectRatio: 1,
            enlargeCenterPage: true,
            animateToClosest: false,
          ),
          items: imagensCarrosseis(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                _carouselController.previousPage();
              },
              icon: Icon(
                Icons.arrow_back,
                color: _page != 0 ? Colors.white : Colors.black26,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Text(
                '${_page + 1}/$listLength',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                _carouselController.nextPage();
              },
              icon: Icon(
                Icons.arrow_forward,
                color: _page + 1 < listLength ? Colors.white : Colors.black26,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
