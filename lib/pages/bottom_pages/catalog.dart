import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                 ListTile( 
              trailing: IconButton(
                    icon: const Icon(
                      Icons.star_border_outlined,
                      size: 35.0, 
                      ),
                    onPressed: () {},
                    ),
              leading: const Icon(Icons.movie, size: 35.0, color: Color(0xffed6b5b),),
              title: const Text('Титаник', 
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold),
                ),
              subtitle: const Text(
                '1997 г., Жанр: мелодрама, история, триллер, драма',
              style: TextStyle(
                color: Colors.black, 
                fontSize: 15)
              ),
            ),
            const Padding(padding:
            EdgeInsets.only(right: 16.0, left: 16.0),
            child: Text(
              'В первом и последнем плавании шикарного «Титаника» встречаются двое. Пассажир нижней палубы Джек выиграл билет в карты, а богатая наследница Роза отправляется в Америку, чтобы выйти замуж по расчёту. Чувства молодых людей только успевают расцвести, и даже не классовые различия создадут испытания влюблённым, а айсберг, вставший на пути считавшегося непотопляемым лайнера.',
              style: TextStyle(color: Colors.black),
            ),
            ),
            Image.asset('images/titanic2.jpg', alignment: Alignment.center,),
              ],
            ), 
          ),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),

        Card( 
          clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                 ListTile( 
              trailing: IconButton(
                    icon: const Icon(
                      Icons.star,
                      color: Color(0xffed6b5b),
                      size: 35.0, 
                      ),
                    onPressed: () {},
                    ),
              leading: const Icon(Icons.movie, size: 35.0, color: Color(0xffed6b5b),),
              title: const Text('Хатико', 
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold),
                ),
              subtitle: const Text(
                '2009 г., Жанр: драма, семейный, биография',
              style: TextStyle(
                color: Colors.black, 
                fontSize: 15)
              ),
            ),
            const Padding(padding:
            EdgeInsets.only(right: 16.0, left: 16.0),
            child: Text(
              'Однажды, возвращаясь с работы, профессор колледжа нашел на вокзале симпатичного щенка породы акита-ину. Профессор и Хатико стали верными друзьями. Каждый день пес провожал и встречал хозяина на вокзале. ',
              style: TextStyle(color: Colors.black),
            ),
            ),
            Image.asset('images/hachiko.jpg', alignment: Alignment.center,),
              ],
            ), 
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        Card( 
          clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                 ListTile( 
              trailing: IconButton(
                    icon: const Icon(
                      Icons.star,
                      color: Color(0xffed6b5b),
                      size: 35.0, 
                      ),
                    onPressed: () {},
                    ),
              leading: const Icon(Icons.movie, size: 35.0, color: Color(0xffed6b5b),),
              title: const Text('Время', 
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold),
                ),
              subtitle: const Text(
                '2011 г., Жанр: фантастика, мелодрама, боевик',
              style: TextStyle(
                color: Colors.black, 
                fontSize: 15)
              ),
            ),
            const Padding(padding:
            EdgeInsets.only(right: 16.0, left: 16.0),
            child: Text(
              'Добро пожаловать в мир, где время стало единственной и самой твердой валютой, где люди генетически запрограммированы так, что в 25 лет перестают стареть. Правда, последующие годы стоят денег. И вот богатые становятся практически бессмертными, а бедные обречены сражаться за жизнь. Уилл, бунтарь из гетто, несправедливо обвинен в убийстве с целью грабежа времени и теперь вынужден, захватив заложницу, пуститься в бега.',
              style: TextStyle(color: Colors.black),
            ),
            ),
            Image.asset('images/intime.jpg', alignment: Alignment.center,),
              ],
            ), 
        ),
      ],
    );
  }
}