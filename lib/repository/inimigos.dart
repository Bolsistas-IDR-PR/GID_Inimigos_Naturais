class InimigosNaturais {
  static String especieNaoIdentificada = 'Espécie não identificada';
  static String especieIdentificadaNasImagens = 'Espécies identificadas nas imagens';
  static Map<dynamic, List<Map<dynamic, List<String>>>> ordem = {
    'Aranhas': [
      {
        'Aranha-caranguejo': ['Araneae', 'Thomisidae', especieNaoIdentificada, 'Aranha-caranguejo'],
        'Imagens': ['assets/inimigos_naturais/Aranhas/Aranha-caranguejo/1 aranha-caranguejo.jpg'],
      },
      {
        'Aranha-saltadora': ['Araneae', 'Salticidae', especieNaoIdentificada, 'Aranha-saltadora'],
        'Imagens': [
          'assets/inimigos_naturais/Aranhas/Aranha-saltadora/1 aranha saltadora.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-saltadora/2 aranha saltadora.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-saltadora/3 aranha saltadora.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-saltadora/4 aranha-saltadora.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-saltadora/5 aranha saltadora.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-saltadora/6 aranha saltadora.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-saltadora/7 aranha saltadora.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-saltadora/8 aranha saltadora.jpg',
        ]
      },
      {
        'Aranha-de-prata': ['Araneae', 'Araneidae', 'Argiope argentata', 'Aranha-de-prata'],
        'Imagens': [
          'assets/inimigos_naturais/Aranhas/Aranha-prata/1 aranha-de-prata.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-prata/2 aranha-de-prata.jpg',
          'assets/inimigos_naturais/Aranhas/Aranha-prata/3 aranha-de-prata.jpg',
        ]
      },
      //ABORTADO
      // {
      //   'Aranha-lobo': [],
      //   'Imagens': [''],
      // }
    ],
    //ABORTADO
    // 'Ácaros': [
    //   {
    //     'Phytoseiulus macropilis': [],
    //     'Imagens': ['']
    //   },
    //   {
    //     'Neoseiulus californicus': [],
    //     'Imagens': ['']
    //   }
    // ],
    'Tesourinhas': [
      {
        'Doru sp.': ['Dermaptera', 'Forficulidae', 'Doru sp.', 'Tesourinha'],
        'Ninfa': [
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 ninfa/1 Doru ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 ninfa/2 Doru ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 ninfa/3 Doru ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 ninfa/4 Doru ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 ninfa/5 Doru ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 ninfa/6 Doru ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 ninfa/7 Doru ninfa.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 adulto/1 Doru adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 adulto/2 Doru adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 adulto/3 Doru adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 adulto/4 Doru adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 adulto/5 Doru adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 adulto/6 Doru adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Doru-sp/3.1 adulto/7 Doru adulto.jpg',
        ],
      },
      {
        'Euborellia sp.': ['Dermaptera', 'Anisolabididae', 'Euborellia sp.', 'Tesourinha'],
        'Ninfa': [
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Ninfa/1 Euborellia ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Ninfa/2 Euborellia ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Ninfa/3 Euborellia ninfa.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Adulto/1 Euborellia adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Adulto/2 Euborellia adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Adulto/3 Euborellia adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Adulto/4 Euborellia adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Adulto/5 Euborellia adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Euborellia-sp/3.2 Adulto/6 Euborellia adulto.jpg',
        ],
      },
      {
        'Labidura sp.': ['Dermaptera', 'Labiduridae', 'Labidura sp.', 'Tesourinha'],
        'Ninfa': [
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Ninfa/1 Labidura ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Ninfa/2 Labidura ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Ninfa/3 Labidura ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Ninfa/4 Labidura ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Ninfa/5 Labidura ninfa.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Ninfa/6 Labidura ninfa.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Adulto/1 Labidura adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Adulto/2 Labidura adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Adulto/3 Labidura adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Adulto/4 Labidura adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Adulto/5 Labidura adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Adulto/6 Labidura adulto.jpg',
          'assets/inimigos_naturais/Tesourinhas/Labidura-sp/3.3 Adulto/7 Labidura adulto.jpg',
        ],
      }
    ],
    'Neurópteros': [
      {
        'Crisopídeos': [
          'Neuroptera',
          'Chrysopidae',
          especieNaoIdentificada,
          'Crisopídeo (algumas larvas são denominadas bichos-lixeiros)'
        ],
        'Ovo': [
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Ovo/Slide1.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Ovo/Slide2.jpg',
        ],
        'Larva': [
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Larva/Slide1.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Larva/Slide2.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Larva/Slide3.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Larva/Slide4.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Larva/Slide5.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Larva/Slide6.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Larva/Slide7.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Larva/Slide8.jpg',
        ],
        'Pupa': [
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Pupa/Slide1.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Pupa/Slide2.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Pupa/Slide3.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Neurópteros/Crisopídeos/Adulto/Slide7.jpg',
        ]
      },
      {
        'Hemerobídeos': ['Neuroptera', 'Hemerobiidae', especieNaoIdentificada, 'Hemerobídeo'],
        'Larva': [
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Larva/Slide1.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Larva/Slide2.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Larva/Slide3.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Larva/Slide4.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Larva/Slide5.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Larva/Slide6.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Larva/Slide7.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Neurópteros/Hemerobídeos/Adulto/Slide6.jpg',
        ],
      },
      {
        'Mantispídeos': ['Neuroptera', 'Mantispidae', especieNaoIdentificada, 'Mantispídeo'],
        'Adulto': [
          'assets/inimigos_naturais/Neurópteros/Mantispídeos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Neurópteros/Mantispídeos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Neurópteros/Mantispídeos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Neurópteros/Mantispídeos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Neurópteros/Mantispídeos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Neurópteros/Mantispídeos/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Neurópteros/Mantispídeos/Adulto/Slide7.jpg',
        ],
      }
    ],
    'Percevejos': [
      {
        'Percevejo-pirata': ['Hemiptera/Subordem: Heteroptera', 'Anthocoridae', 'Orius sp.', 'Percevejo-pirata'],
        'Ninfa': [
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Ninfa/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Ninfa/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Ninfa/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Ninfa/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Ninfa/Slide5.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-pirata/Adulto/Slide6.jpg',
        ],
      },
      {
        'Percevejo-olhudo': ['Hemiptera/Subordem: Heteroptera', 'Geocoridae', 'Geocoris sp.', 'Percevejo-olhudo'],
        'Ninfa': [
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Ninfa/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Ninfa/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Ninfa/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Ninfa/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Ninfa/Slide5.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Ninfa/Slide6.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-olhudo/Adulto/Slide6.jpg',
        ],
      },
      {
        'Percevejos-assassinos': [
          'Hemiptera/Subordem: Heteroptera',
          'Reduviidae',
          especieNaoIdentificada,
          'Percevejo-assassino'
        ],
        'Ovo': [
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ovo/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ovo/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ovo/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ovo/Slide4.jpg',
        ],
        'Ninfa': [
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ninfa/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ninfa/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ninfa/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ninfa/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Ninfa/Slide5.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-assassinos/Adulto/Slide7.jpg',
        ],
      },
      {
        'Percevejos Podisus': [
          'Hemiptera/Subordem: Heteroptera',
          'Pentatomidae/Subfamília: Asopinae',
          'Podisus sp.',
          'Percevejo Podisus'
        ],
        'Ovo': [
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Ovo/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Ovo/Slide2.jpg',
        ],
        'Ninfa': [
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Ninfa/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Ninfa/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Ninfa/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Ninfa/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Ninfa/Slide5.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Adulto/Slide7.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Podisus/Adulto/Slide8.jpg',
        ],
      },
      {
        'Percevejos Tynacantha': [
          'Hemiptera/Subordem: Heteroptera',
          'Pentatomidae/Subfamília: Asopinae ',
          'Tynacantha marginata',
          'Percevejo-predador'
        ],
        'Ninfa': [
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Ninfa/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Ninfa/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Ninfa/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Ninfa/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Ninfa/Slide5.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Ninfa/Slide6.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejos-asopíneos/Tynacantha/Adulto/Slide7.jpg',
        ],
      },
      {
        'Percevejo-donzela': ['Hemiptera/Subordem: Heteroptera', 'Nabidae', 'Nabis sp.', 'Percevejo-donzela'],
        'Ninfa': [
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Ninfa/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Ninfa/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Ninfa/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Ninfa/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Ninfa/Slide5.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Percevejos/Percevejo-donzela/Adulto/Slide5.jpg',
        ],
      }
    ],
    'Besouros': [
      {
        'Joaninhas': ['Coleoptera', 'Coccinellidae', especieIdentificadaNasImagens, 'Joaninha'],
        'Ovo': [
          'assets/inimigos_naturais/Besouros/Joaninhas/Ovo/Slide1.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Ovo/Slide2.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Ovo/Slide3.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Ovo/Slide4.jpg',
        ],
        'Larva': [
          'assets/inimigos_naturais/Besouros/Joaninhas/Larva/Slide1.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Larva/Slide2.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Larva/Slide3.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Larva/Slide4.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Larva/Slide5.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Larva/Slide6.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Larva/Slide7.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Larva/Slide8.jpg',
        ],
        'Pupa': [
          'assets/inimigos_naturais/Besouros/Joaninhas/Pupa/Slide1.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Pupa/Slide2.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Pupa/Slide3.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Pupa/Slide4.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Pupa/Slide5.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide7.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide8.jpg',
          'assets/inimigos_naturais/Besouros/Joaninhas/Adulto/Slide9.jpg',
        ],
      },
      {
        'Carabídeos': ['Coleoptera', 'Carabidae', especieIdentificadaNasImagens, 'Carabídeo'],
        'Adulto': [
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide7.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide8.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide9.jpg',
          'assets/inimigos_naturais/Besouros/Carabídeos/Adulto/Slide10.jpg',
        ]
      },
      {
        'Besouros-tigres': [
          'Coleoptera',
          'Carabidae/Subfamília: Cicindelinae',
          especieIdentificadaNasImagens,
          'Besouro-tigre'
        ],
        'Adulto': [
          'assets/inimigos_naturais/Besouros/Besouros-tigre/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Besouros/Besouros-tigre/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Besouros/Besouros-tigre/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Besouros/Besouros-tigre/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Besouros/Besouros-tigre/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Besouros/Besouros-tigre/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Besouros/Besouros-tigre/Adulto/Slide7.jpg',
        ]
      },
      {
        'Estafilinídeos': [
          'Coleoptera',
          'Staphylinidae',
          especieIdentificadaNasImagens,
          'Estafilinídeo',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Besouros/Estafilinídeos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Besouros/Estafilinídeos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Besouros/Estafilinídeos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Besouros/Estafilinídeos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Besouros/Estafilinídeos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Besouros/Estafilinídeos/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Besouros/Estafilinídeos/Adulto/Slide7.jpg',
        ]
      }
    ],
    'Moscas': [
      {
        'Sirfídeos': ['Diptera', 'Syrphidae', especieIdentificadaNasImagens, 'Sirfídeo'],
        'Larva': [
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide3.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide4.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide5.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide6.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide7.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide8.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Larva/Slide9.jpg',
        ],
        'Pupa': [
          'assets/inimigos_naturais/Moscas/Sirfídeos/Pupa/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Pupa/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Pupa/Slide3.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Pupa/Slide4.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Pupa/Slide5.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Pupa/Slide6.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide7.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide8.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide9.jpg',
          'assets/inimigos_naturais/Moscas/Sirfídeos/Adulto/Slide10.jpg',
        ],
      },
      {
        'Asilídeos': ['Diptera', 'Asilidae', especieNaoIdentificada, 'Asilídeo ou mosca-caçadora'],
        'Adulto': [
          'assets/inimigos_naturais/Moscas/Asilídeos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Asilídeos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Asilídeos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Moscas/Asilídeos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Moscas/Asilídeos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Moscas/Asilídeos/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Moscas/Asilídeos/Adulto/Slide7.jpg',
          'assets/inimigos_naturais/Moscas/Asilídeos/Adulto/Slide8.jpg',
        ]
      },
      {
        'Moscas-de-pernas-longas': ['Diptera', 'Dolichopodidae', 'Condylostylus sp.', 'mosca-de-pernas-longas'],
        'Adulto': [
          'assets/inimigos_naturais/Moscas/Condylostylus sp/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Condylostylus sp/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Condylostylus sp/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Moscas/Condylostylus sp/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Moscas/Condylostylus sp/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Moscas/Condylostylus sp/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Moscas/Condylostylus sp/Adulto/Slide7.jpg',
          'assets/inimigos_naturais/Moscas/Condylostylus sp/Adulto/Slide8.jpg',
        ]
      },
      {
        'Taquinídeos': ['Diptera', 'Tachinidae', especieIdentificadaNasImagens, 'Taquinídeo'],
        'Ovo': [
          'assets/inimigos_naturais/Moscas/Taquinideos/Ovo/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Ovo/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Ovo/Slide3.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Ovo/Slide4.jpg',
        ],
        'Larva': [
          'assets/inimigos_naturais/Moscas/Taquinideos/Larva/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Larva/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Larva/Slide3.jpg',
        ],
        'Pupário': [
          'assets/inimigos_naturais/Moscas/Taquinideos/Pupario/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Pupario/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Pupario/Slide3.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Pupario/Slide4.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Pupario/Slide5.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Pupario/Slide6.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide7.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide8.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide9.jpg',
          'assets/inimigos_naturais/Moscas/Taquinideos/Adulto/Slide10.jpg',
        ]
      },
    ],
    'Vespas, Vespinhas e Formigas': [
      {
        'Vespas ou Marimbondos': [
          'Hymenoptera',
          'Vespidae',
          especieIdentificadaNasImagens,
          'Vespa ou Marimbondo',
        ],
        'Imagens': [
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide1.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide2.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide3.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide4.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide5.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide6.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide7.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide8.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide9.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespa/Slide10.jpg',
        ]
      },
      {
        'Formiga-predadora': [
          'Hymenoptera',
          'Formicidae/ Subfamília: Ponerinae',
          'Pachycondyla sp.',
          'Formiga-predadora',
        ],
        'Imagens': [
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Formiga/Slide1.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Formiga/Slide2.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Formiga/Slide3.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Formiga/Slide4.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Formiga/Slide5.jpg',
        ]
      },
      {
        'Vespinha-parasitoide Euplectrus': [
          'Hymenoptera',
          'Eulophidae',
          'Euplectrus sp.',
          'Vespinha-parasitoide',
        ],
        'Larva': [
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Larva/Slide1.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Larva/Slide2.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Larva/Slide3.jpg',
        ],
        'Pupa': [
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Pupa/Slide1.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Pupa/Slide2.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Pupa/Slide3.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Pupa/Slide4.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Euplectrus/Adulto/Slide5.jpg',
        ],
      },
      {
        'Vespinha-parasitoide Aphidiinae': [
          'Hymenoptera',
          'Braconidae/ Subfamília: Aphidiinae',
          especieNaoIdentificada,
          'Vespinha-parasitoide',
        ],
        'Hospedeiro parasitado': [
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Aphidiinae/Hospedeiro parasitado/Slide1.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Aphidiinae/Hospedeiro parasitado/Slide2.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Aphidiinae/Hospedeiro parasitado/Slide3.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Aphidiinae/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Aphidiinae/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Aphidiinae/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Aphidiinae/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Vespinha parasitoide Aphidiinae/Adulto/Slide5.jpg',
        ],
      },
      {
        'Vespinhas-parasitoides em construção...': [
          'Em construção...','Em construção...','Em construção...','Em construção...'
        ],
        'Imagens': [
          'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/Outras vespinhas parasitoides.jpg',
        ],
      },
      // {
      //   'Vespinhas parasitoides de pulgão': [
      //     '',
      //   ],
      //   'Imagens': [
      //     '',
      //   ]
      // },
      // {
      //   'Vespinhas parasitoides de moscas-brancas': [],
      //   'Imagens': ['']
      // },
      // {
      //   'Vespinhas parasitoides de ovos de mariposas e borboletas': [],
      //   'Imagens': ['']
      // },
      // {
      //   'Vespinhas parasitoides de ovos de percevejos': [],
      //   'Imagens': ['']
      // },
      // {
      //   'Vespinhas parasitoides de percevejos-adultos': [],
      //   'Imagens': ['']
      // },
      // {
      //   'Vespinhas parasitoides de lagartas': [],
      //   'Imagens': ['']
      // }
    ],
    'Louva-a-Deus': [
      {
        'Louva-a-Deus': [
          'Mantodea',
          'Ninfa: Mantidae | Adulto: Acanthopidae (imagens 2 e 6); Mantidae (imagens 3, 4, 5 e 8); Photinaidae (imagem 7)',
          especieNaoIdentificada,
          'Louva-a-Deus',
        ],
        'Ninfa': [
          'assets/inimigos_naturais/Louva-a-Deus/Ninfa/Slide1.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Ninfa/Slide2.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Ninfa/Slide3.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Ninfa/Slide4.jpg',
        ],
        'Adulto': [
          'assets/inimigos_naturais/Louva-a-Deus/Adulto/Slide1.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Adulto/Slide2.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Adulto/Slide3.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Adulto/Slide4.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Adulto/Slide5.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Adulto/Slide6.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Adulto/Slide7.jpg',
          'assets/inimigos_naturais/Louva-a-Deus/Adulto/Slide8.jpg',
        ]
      }
    ],
  };
  static Map<dynamic, List<String>?> imagensTelaInicial = {
    'Aranhas': [
      'assets/inimigos_naturais/Aranhas/1 Aranhas.jpg',
      'Possuem 4 pares de pernas e corpo dividido em 2 porções (cefalotórax e abdômen).'
    ],
    // 'Ácaros': [''],
    'Tesourinhas': [
      'assets/inimigos_naturais/Tesourinhas/3 Tesourinhas.jpg',
      'Insetos de corpo estreito e alongado, 1 par de pinças em forma de foice no final do abdômen e antenas longas.'
    ],
    'Louva-a-Deus': [
      'assets/inimigos_naturais/Louva-a-Deus/louva-a-deus.jpg',
      'Pernas anteriores adaptadas para capturar presas (raptoriais). Quando em repouso, as asas ficam sobrepostas sobre o abdômen.'
    ],
    'Neurópteros': [
      'assets/inimigos_naturais/Neurópteros/4 Neurópteros.jpg',
      'Insetos adultos de corpo estreito e alongado, 2 pares de asas delicadas e com muitas nervuras.'
    ],
    'Percevejos': [
      'assets/inimigos_naturais/Percevejos/5 Percevejos.jpg',
      'Insetos com aparelho bucal alongado adaptado para sugar, antenas longas e finas em espécies terrestres.'
    ],
    'Besouros': [
      'assets/inimigos_naturais/Besouros/6 Besouros.jpg',
      'Insetos de asas rígidas, normalmente de corpo mais ou menos oval, aguns podem ser estreitos e alongados.'
    ],
    'Moscas': [
      "assets/inimigos_naturais/Moscas/Mosca (1).jpg",
      'Insetos adultos com apenas duas asas desenvolvidas, normalmente antenas curtas e pouco evidente.'
    ],
    'Vespas, Vespinhas e Formigas': [
      'assets/inimigos_naturais/Vespas_Vespinhas_Formigas/vespa_formigas.jpg',
      'Adultos alados com 2 pares de asas, sendo a 1ª maior que a 2ª. Normalmente antenas mais longas que comprimento da cabeça',
    ],

  };
}
