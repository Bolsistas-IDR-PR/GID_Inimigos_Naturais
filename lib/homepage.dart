import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inimigos_naturais_soja/repository/inimigos.dart';
import 'package:inimigos_naturais_soja/sobre.dart';
import 'package:inimigos_naturais_soja/tipos_por_ordem.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/blink_button.dart';
import 'components/drawer.dart';
import 'equipe_tecnica.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentScreen = 0;
  void _setScreen(
    int screenNumber,
  ) {
    switch (screenNumber) {
      case 1:
        //VAI PARA A TELA SOBRE
        setState(() {
          _currentScreen = screenNumber;
        });
        Navigator.pop(context);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Sobre(),
          ),
        );
        break;
      case 2:
        //VAI PARA A TELA DA EQUIPE TÉCNICA
        setState(() {
          _currentScreen = screenNumber;
        });
        Navigator.pop(context);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const EquipeTecnica(),
          ),
        );
        break;
    }
  }

  void selectItem(String item) {
    final imagens = InimigosNaturais.ordem[item];
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => TiposPorOrdem(
          listaTipos: imagens,
          titulo: item,
        ),
      ),
    );
    //VAI PARA A TELA DE TIPOS POR ORDEM...widget.onPressed(1, titulo: item, listaTipos: value),
  }

  Future inicializacao() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  late bool isList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inicializacao();
    _loadMyBoolean();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  List<Widget> _buildList1() {
    double sizeWidth = MediaQuery.of(context).size.width;
    List<Widget> lista = [];
    int tamanhoLista = InimigosNaturais.imagensTelaInicial.values.length;
    for (int i = 0; i < tamanhoLista; i++) {
      final itemImage = InimigosNaturais.imagensTelaInicial.values.elementAt(i)![0];
      final infoItem = InimigosNaturais.imagensTelaInicial.values.elementAt(i)![1];
      final item = InimigosNaturais.imagensTelaInicial.keys.elementAt(i);
      lista.add(
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                blurStyle: BlurStyle.normal,
                spreadRadius: 4,
                color: Colors.black26,
                offset: Offset(0, 8),
              )
            ],
            color: Color.fromRGBO(45, 49, 52, 1),
            // color: Color.fromRGBO(36, 172, 94, 1),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () => selectItem(item),
                child: SizedBox(
                  child: Image.asset(
                    itemImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                constraints: const BoxConstraints(),
                child: Column(
                  children: [
                    Text(
                      item,
                      style: TextStyle(
                          fontSize: sizeWidth > 500 ? 30 : 20, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      infoItem,
                      style: TextStyle(
                          fontSize: sizeWidth > 500 ? 26 : 16, color: Colors.white70, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    return lista;
  }

  List<Widget> _buildList2() {
    double sizeWidth = MediaQuery.of(context).size.width;
    List<Widget> lista = [];
    int tamanhoLista = InimigosNaturais.imagensTelaInicial.values.length;
    for (int i = 0; i < tamanhoLista; i++) {
      final itemImage = InimigosNaturais.imagensTelaInicial.values.elementAt(i)![0];
      final infoItem = InimigosNaturais.imagensTelaInicial.values.elementAt(i)![1];
      final item = InimigosNaturais.imagensTelaInicial.keys.elementAt(i);
      lista.add(
        InkWell(
          onTap: () => selectItem(item),
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 4),
            color: const Color.fromRGBO(45, 49, 52, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(
                  color: Colors.green,
                  indent: 16,
                  endIndent: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Image.asset(
                          itemImage,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              item,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: sizeWidth > 500 ? 30 : 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Divider(
                              height: 2,
                            ),
                            Text(
                              infoItem,
                              style: TextStyle(
                                  fontSize: sizeWidth > 500 ? 26 : 16,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: Colors.green,
                  indent: 16,
                  endIndent: 16,
                ),
              ],
            ),
          ),
        ),
      );
    }
    return lista;
  }

  bool _myBoolean = false;
  // Carrega o valor booleano da SharedPreferences
  _loadMyBoolean() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _myBoolean = prefs.getBool("myBoolean") ?? false;
    });
  }

  // Salva o valor booleano na SharedPreferences
  _saveMyBoolean(bool value) async {
    setState(() {
      _myBoolean = value;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("myBoolean", value);
  }

  @override
  Widget build(BuildContext context) {
    double _sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color.fromRGBO(196, 205, 207, 1),
        backgroundColor: Colors.black,
        key: _scaffoldKey,
        drawer: Drawer(
          child: DrawerBuild(_setScreen, idx: _currentScreen),
        ),
        appBar: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.all(0),
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          actions: [
            Spinner(
              booleanShared: !_myBoolean,
              saveBoolean: _saveMyBoolean,
            )
          ],
          centerTitle: true,
          title: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "Guia de Identificação Digital",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.5,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/assets_appBar/appBarImage.png",
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                "assets/assets_appBar/Logo 1 sem fundo.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Inimigos Naturais de Pragas Agrícolas',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: _sizeWidth > 500 ? 30 : 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: _myBoolean ? _buildList2() : _buildList1(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
