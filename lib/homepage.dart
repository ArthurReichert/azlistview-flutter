import 'package:flutter/material.dart';

import 'package:alphabet_scroll_view/alphabet_scroll_view.dart';
import 'package:azlistview/azlistview.dart';

import 'alphabetscrollpage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: AlphabetScrollPage(
        onClickedItem: (item) {},
          items: const [
            'angel',
            'bubbles',
            'shimmer',
            'angelic',
            'bubbly',
            'glimmer',
            'baby',
            'pink',
            'little',
            'butterfly',
            'sparkly',
            'doll',
            'sweet',
            'sparkles',
            'dolly',
            'sweetie',
            'sprinkles',
            'lolly',
            'princess',
            'fairy',
            'honey',
            'snowflake',
            'pretty',
            'sugar',
            'cherub',
            'lovely',
            'blossom',
            'Ecophobia',
            'Hippophobia',
            'Scolionophobia',
            'Ergophobia',
            'Musophobia',
            'Zemmiphobia',
            'Geliophobia',
            'Tachophobia',
            'Hadephobia',
            'Radiophobia',
            'Turbo Slayer',
            'Cryptic Hatter',
            'Crash TV',
            'Blue Defender',
            'Toxic Headshot',
            'Iron Merc',
            'Steel Titan',
            'Stealthed Defender',
            'Blaze Assault',
            'Venom Fate',
            'Dark Carnage',
            'Fatal Destiny',
            'Ultimate Beast',
            'Masked Titan',
            'Frozen Gunner',
            'Bandalls',
            'Wattlexp',
            'Sweetiele',
            'HyperYauFarer',
            'Editussion',
            'Experthead',
            'Flamesbria',
            'HeroAnhart',
            'Liveltekah',
            'Linguss',
            'Interestec',
            'FuzzySpuffy',
            'Monsterup',
            'MilkA1Baby',
            'LovesBoost',
            'Edgymnerch',
            'Ortspoon',
            'Oranolio',
            'OneMama',
            'Dravenfact',
            'Reallychel',
            'Reakefit',
            'Popularkiya',
            'Breacche',
            'Blikimore',
            'StoneWellForever',
            'Simmson',
            'BrightHulk',
            'Bootecia',
            'Spuffyffet',
            'Rozalthiric',
            'Bookman'
          ],
      )
    );
  }
}
