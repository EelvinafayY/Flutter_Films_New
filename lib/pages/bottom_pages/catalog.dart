import 'package:flutter/material.dart';

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
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  trailing: const Icon(Icons.star,),
                  title: const Text('Воздушный маршал'),
                  subtitle: Text(
                    '2014 г. ‧ Боевик/Триллер ‧ 1 ч 46 мин',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,),
                  child: Text(
                    'Межконтинентальный авиарейс. Билл Маркс, воздушный маршал, который обеспечивает безопасность пассажиров, получает сообщения с угрозами от маньяка-террориста. Преступник просчитал все ходы и подставил под обвинение самого спецагента. Теперь Маркс — цель спецслужб США. Ему остается одно: вычислить и обезвредить преступника, спасти пассажиров и свою любовь, которую он обретает на краю гибели. До взрыва остаются считанные минуты…',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('images/airMarshal.png',
                height: 240,
                width: 320,),
              ],
            ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  trailing: const Icon(Icons.star_border,),
                  title: const Text('Притворство'),
                  subtitle: Text(
                    '2019 г. ‧ Драма ‧ 1 сезон',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,),
                  child: Text(
                    'Сериал основан на реальных событиях и рассказывает нам про семью, где мать не видит границ в опеке над дочерью. Крыша у матери слетает до такой степени, что та придумывает кучу болезней для своей дочери, подвергая ее каждодневным трудностям, страданиям и лишениям, что и приводит к трагической развязке.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('images/pritvor.png',
                height: 240,
                width: 320),
              ],
            ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  trailing: const Icon(Icons.star_border,),
                  title: const Text('Звонок'),
                  subtitle: Text(
                    '2002 г. ‧ Ужасы/Детектив ‧ 1 ч 55 мин',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,),
                  child: Text(
                    'Телефонный звонок следует после просмотра некой загадочной видеокассеты, после чего каждый посмотревший ее умирает. Жертве дается лишь одна неделя, а дальше следует неминуемая смерть.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('images/ring.png',
                height: 240,
                width: 320),
              ],
            ),
        ),
      ],
    );
  }
}