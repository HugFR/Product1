import 'package:flutter/material.dart';
void main() {
runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
class HomePage extends StatelessWidget {
  final _titulo = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final _subtitulo = TextStyle(fontSize: 12.0, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Noticias Geek Multiverse'),
        backgroundColor: Colors.red,
      ),
      body: ListView(children: <Widget>[
        _row(title: 'Sitio oficial de Geek Multiverse', subtitle: 'No te pierdas las transmisiones en vivo todos los viernes de 6 a 7 PM por Ella.FM',
                 colorIcon: Colors.black),
        Divider(thickness: 8),
        Image.network( 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7c08e205-a439-4861-a332-411ade828dd6/de5x6pn-263f3547-3ba8-4120-89bc-e988c8b0e85e.jpg/v1/fill/w_1052,h_400,q_75,strp/godzilla_vs_kong__new_banner___by_monsterplanet20_de5x6pn-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD00MDAiLCJwYXRoIjoiXC9mXC83YzA4ZTIwNS1hNDM5LTQ4NjEtYTMzMi00MTFhZGU4MjhkZDZcL2RlNXg2cG4tMjYzZjM1NDctM2JhOC00MTIwLTg5YmMtZTk4OGM4YjBlODVlLmpwZyIsIndpZHRoIjoiPD0xMDUyIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.-y-8L-__ypcT1YRGKHndHI9RA-1LgRNAUd8w0Q9smHI',width:230, height:100),
       _notes(titulo: 'Godzilla vs Kong', subtitulo: 'El rey de los monstruos contra el rey de los simios, la pelea del año que divide a los fanaticos \n', colorIcon: Colors.black),
        Divider(thickness: 8),
        Image.network('https://lascronicasdeaxa.files.wordpress.com/2019/07/spider-man-ffh_2019_banner.jpg?w=1024',width:250, height:130),
        _notes(titulo: '¿"Spider-Man 3" o "Spider-Verse"?', subtitulo: 'Las teorías al rededor de la 3ra entrega del trepamuros en el MCU apuntan a que verémos a multiples versiones del arácnido conviviendo en la pantalla grande.\n', colorIcon: Colors.black),
        Divider(thickness: 8),
        Image.network('https://i.blogs.es/7bbf71/kombat-mortal/1366_2000.jpeg',width:250, height:130),
        _notes(titulo: 'Trailer de Mortal Kombat', subtitulo: 'Se estrenará a través de HBO la nueva película live action del videojuego Mortal Kombat, y el trailer nos muestra que habrá fidelidad al material de origen.\n', colorIcon: Colors.black),
        Divider(thickness: 8),
        Image.network('https://blogdesuperheroes.es/wp-content/plugins/BdSGallery/BdSGaleria/100845.jpg',width:250, height:130),
        _notes(titulo: 'Las incognitas de WandaVision', subtitulo: 'La serie de Disney+ ha dado mucho de que hablar, teorías apuntan a que esta serie abrirá el multiverso del Universo Cinemátográfico de Marvel.\n', colorIcon: Colors.black),
        Divider(thickness: 8),
        Image.network('https://variety.com/wp-content/uploads/2020/08/justice-3.jpg?resize=681,383',width:250, height:130),
        _notes(titulo: 'Se acerca el "Snyder Cut"', subtitulo: 'Zach Snyder Justice League llega en marzo, y se estrenó el trailer final de este nuevo corte de la película que no vimos en 2017 \n', colorIcon: Colors.black),
        Divider(thickness: 8),
        TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Compartenos tu Opinión',
            suffixIcon: Icon(Icons.comment_bank_outlined , color: Colors.black),
          ),
        )
      ]));
  }
  Widget _row({String title, String subtitle, Color colorIcon}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: _titulo),
              SizedBox(height: 5.0),
              Text(subtitle, style: _subtitulo)
            ])),
        Icon(Icons.radio, color: colorIcon, size: 25),
      ]));
  }
  Widget _notes({String titulo, String subtitulo, Color colorIcon}) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15) ),
      child: Row(children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(titulo, style: _titulo),
              SizedBox(height: 5.0),
              Text(subtitulo, style: _subtitulo)
            ])),
        Icon(Icons.arrow_forward, color: colorIcon, size: 25),
      ]));
  }
}
