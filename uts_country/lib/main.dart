import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

// access modifier
class Negara {
  final String nama;
  final String ibukota;
  final String deskripsi;
  final String gambar;
  final String lokasi;
  final String flag;
  final String bottom;
  final String maps;

  Negara(this.nama, this.ibukota, this.deskripsi, this.gambar, this.lokasi,
      this.flag, this.maps, this.bottom);
}

class HomeScreen extends StatelessWidget {
  final List<Negara> negara = [
    Negara(
      'Nederland',
      'Ibu kota : Amsterdam',
      'Belanda (bahasa Belanda: Nederland [ˈneːdərˌlɑnt] yang secara harfiah berarti "tanah rendah") adalah sebuah negara peserta Kerajaan Belanda, yang terdiri dari dua belas provinsi di Eropa Barat Laut, dan tiga pulau di Karibia. Belanda Eropa berbatasan dengan Laut Utara di utara, dan barat, Belgia di selatan, dan Jerman di timur, dan berbagi perbatasan bahari dengan Belgia, Jerman, dan Britania Raya. Belanda menganut demokrasi parlementer yang disusun sebagai negara kesatuan.',
      'https://images.unsplash.com/photo-1558000143-a78f8299c40b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
      'Zaanse Schans, Zaanstad, Netherlands',
      'images/flag/3.png',
      'images/maps/3.png',
      'images/bottom/3.png',
    ),
    Negara(
      'Denmark',
      'Ibu Kota : Kopenhagen',
      'Denmark, secara resmi Kerajaan Denmark (bahasa Denmark: Kongeriget Danmark) adalah negara Nordik yang paling kecil dan paling selatan. Denmark terletak di sebelah barat daya dari Swedia dan selatan dari Norwegia. Negara ini terletak di Skandinavia, Eropa Utara sehingga termasuk Uni Eropa namun tidak berada di Semenanjung Skandinavia. ',
      'https://images.unsplash.com/photo-1559070169-a3077159ee16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
      'Møllestien, Aarhus, Denmark',
      'images/flag/6.png',
      'images/maps/6.png',
      'images/bottom/6.png',
    ),
    Negara(
      'Germany',
      'Ibu Kota : Berlin',
      'Jerman (bahasa Jerman: Deutschland, pengucapan bahasa Jerman: [ˈdɔʏtʃlant]), secara resmi disebut sebagai Republik Federal Jerman (bahasa Jerman: Bundesrepublik Deutschland) adalah negara berbentuk federasi di Eropa Barat. Negara ini memiliki posisi ekonomi dan politik yang sangat penting di Eropa maupun di dunia. Dengan luas 357.021 kilometer persegi (kira-kira dua setengah kali pulau Jawa) dan penduduk sekitar 82 juta jiwa, negara dengan 16 negara bagian (Bundesland, jamak: Bundesländer) ini menjadi anggota kunci organisasi Uni Eropa (penduduk terbanyak), penghubung transportasi barang dan jasa antarnegara sekawasan, serta menjadi negara dengan penduduk imigran ketiga terbesar di dunia.',
      'https://images.unsplash.com/photo-1554072675-66db59dba46f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=753&q=80',
      'Berlin, Germany',
      'images/flag/2.png',
      'images/maps/2.png',
      'images/bottom/2.png',
    ),
    Negara(
      'Ukraine',
      'Ibu Kota : Kiev',
      'Ukraina (bahasa Ukraina: Украïна) adalah sebuah negara di Eropa Timur yang berbatasan dengan Rusia di timur dan timur-laut; Belarus di barat-laut; Polandia dan Slowakia di barat; Hongaria, Rumania, dan Moldova di barat-daya; Laut Hitam di selatan; dan Laut Azov di tenggara. Ukraina dan Rusia sekarang ini sama-sama memperebutkan Semenanjung Krimea yang dicaplok oleh Rusia pada tahun 2014, meskipun demikian Ukraina dan banyak komunitas internasional mengakuinya sebagai bagian dari Ukraina. Beserta Krimea, Ukraina memiliki wilayah seluas 603.628 km², yang membuatnya sebagai negara terluas di Eropa dan terluas ke-46 di dunia. Sedangkan populasi sejumlah 44,5 juta jiwa menjadikan Ukraina sebagai negara berpenduduk terbanyak ke-32 di dunia.',
      'https://images.unsplash.com/photo-1483019325791-45118fadd653?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
      'Andriivs kyi descent, Kyiv, Ukraine',
      'images/flag/1.png',
      'images/maps/1.png',
      'images/bottom/1.png',
    ),Negara(
      'Turkey',
      'Ibu Kota : Ankara',
      'Republik Turki (bahasa Turki: Türkiye Cumhuriyeti) disebut Türkiye (bahasa Turki: Türkiye) adalah sebuah negara di kawasan Eurasia. Wilayahnya terbentang dari Semenanjung Anatolia di Asia Barat Daya dan daerah Balkan di Eropa Tenggara. Turki berbatasan dengan Laut Hitam di sebelah utara; Bulgaria di sebelah barat laut; Yunani dan Laut Aegea di sebelah barat; Georgia di timur laut; Armenia, Azerbaijan, dan Iran di sebelah timur; dan Irak dan Suriah di tenggara; dan Laut Mediterania di sebelah selatan. Laut Marmara yang merupakan bagian dari Turki digunakan untuk menandai batas wilayah Eropa dan Asia, sehingga Turki dikenal sebagai negara transkontinental. ',
      'https://images.unsplash.com/photo-1541432901042-2d8bd64b4a9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=719&q=80',
      'The Blue Mosque, Istanbul, Turkey',
      'images/flag/5.png',
      'images/maps/5.png',
      'images/bottom/5.png',
    ),
    Negara(
      'Finlandia',
      'Ibu Kota : Helsinki',
      'Republik Finlandia (b. Finlandia: Suomen tasavalta, b. Swedia: Republiken Finland) adalah sebuah negara Nordik yang terletak di Eropa Utara, serta anggota dari Uni Eropa. Finlandia memiliki perbatasan darat dengan Swedia di barat, Norwegia di utara, dan Rusia di timur sedangkan batas lautnya adalah Laut Baltik di barat daya, Teluk Finlandia di selatan, dan Teluk Bothnia di barat. Finlandia merupakan bagian dari kawasan geografi Fennoscandia, yang di dalamnya juga termasuk Skandinavia dan sebagian Rusia.',
      'https://images.unsplash.com/photo-1597745941949-6053abc0efce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
      'Helsinki, Finlandia',
      'images/flag/8.png',
      'images/maps/8.png',
      'images/bottom/8.png',
    ),
    Negara(
      'England',
      'Ibu Kota : London',
      'Inggris (bahasa Inggris: England) adalah sebuah negara konstituen yang merupakan bagian dari Britania Raya. Negara ini berbatasan dengan Skotlandia di sebelah utara dan Wales di sebelah barat, Laut Irlandia di barat laut, Laut Keltik di barat daya, serta Laut Utara di sebelah timur dan Selat Inggris, yang memisahkannya dari benua Eropa, di sebelah selatan. Sebagian besar wilayah Inggris terdiri dari bagian tengah dan selatan Pulau Britania Raya di Atlantik Utara. Inggris juga mencakup lebih dari 100 pulau kecil seperti Isles of Scilly dan Isle of Wight.',
      'https://images.unsplash.com/photo-1543799382-9a0208331ef7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
      'Tower Bridge, London, England',
      'images/flag/10.png',
      'images/maps/10.png',
      'images/bottom/10.png',
    ),
    Negara(
      'Spain',
      'Ibu Kota : Madrid',
      'Spanyol (bahasa Spanyol: España [esˈpaɲa]), secara resmi dikenal dengan sebutan Kerajaan Spanyol (bahasa Spanyol: Reino de España) adalah sebuah negara di Eropa barat daya yang, bersama Portugal, terdapat di Semenanjung Iberia. Batas darat Spanyol dengan Eropa adalah Pegunungan Pirenia dengan Prancis dan Andorra. Wilayahnya terdiri dari kota Ceuta dan Melilla di Afrika Utara, Kepulauan Canary di Samudra Atlantik, dan berbagai pulau di Laut Tengah.',
      'https://images.unsplash.com/photo-1523531294919-4bcd7c65e216?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
      'PARK GÜELL, Barcelona, Spain',
      'images/flag/7.png',
      'images/maps/7.png',
      'images/bottom/7.png',
    ),
    Negara(
      'France',
      'Ibu Kota : Paris',
      'Republik Prancis atau Prancis (bahasa Prancis: République française, pengucapan bahasa Prancis: [ʁepyblik fʁɑ̃sɛz]) adalah sebuah negara yang teritori metropolitannya terletak di Eropa Barat dan juga memiliki berbagai pulau dan teritori seberang laut yang terletak di benua lain. Prancis Metropolitan memanjang dari Laut Mediterania hingga Selat Inggris dan Laut Utara, dan dari Rhine ke Samudera Atlantik. Orang Prancis sering menyebut Prancis Metropolitan sebagai "L"Hexagone" ("Heksagon") karena bentuk geometris teritorinya. Prancis adalah sebuah republik kesatuan semi-presidensial. Ideologi utamanya tercantum dalam Deklarasi Hak Asasi Manusia dan Warga Negara.',
      'https://images.unsplash.com/photo-1505205296326-2178af1b47bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
      'Eiffel Tower, Paris, France',
      'images/flag/9.png',
      'images/maps/9.png',
      'images/bottom/9.png',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries in Europe'),
        backgroundColor: Colors.indigoAccent[700],
        actions: [
          new IconButton(
            icon: new Icon(Icons.add),
            onPressed: () => debugPrint("Add"),
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () => debugPrint("Search"),
          ),
        ],
      ),
      body: Center(

        // request data yang ditampilkan
        //Untuk menampilkan daftar string, dan render setiap string
        //Tampilkan negara menggunakan ListView
        child: ListView.builder(
          itemCount: negara.length,
          itemBuilder: (context, index) {
            //merespons tindakan mendasar, seperti mengetuk dan menyeret.
            return new GestureDetector(
              //Untuk menangkap ketukan pengguna
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailNegara(
                              negara: negara[index],
                            )));
              },
              child: new Card(
                child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        '${negara[index].gambar}',
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '${negara[index].nama}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '${negara[index].ibukota}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 9.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailNegara extends StatelessWidget {
  final Negara negara;

  DetailNegara({Key key, @required this.negara}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bagianJudul = Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Icon(Icons.location_on),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(negara.lokasi),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      negara.nama,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    negara.ibukota,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            negara.flag,
                            width: 70,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            negara.maps,
                            width: 70,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Widget bagianDeskripsi = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        negara.deskripsi,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(negara.nama),
        backgroundColor: Colors.indigoAccent[700],
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            negara.gambar,
            width: 600,
            fit: BoxFit.cover,
          ),
          bagianJudul,
          bagianDeskripsi,
          Image.asset(
            negara.bottom,
            width: 100,
          )
        ],
      ),
    );
  }
}
