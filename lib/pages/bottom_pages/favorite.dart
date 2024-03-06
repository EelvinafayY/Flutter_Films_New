import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(clipBehavior: Clip.antiAlias,
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
        Card(clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  trailing: const Icon(Icons.star,),
                  title: const Text('Поезд в Пусан'),
                  subtitle: Text(
                    '2016 г. ‧ Боевик/Ужасы ‧ 1 ч 58 мин',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,),
                  child: Text(
                    'У маленькой Су-ан день рождения. Девочка живет с отцом в Сеуле и очень хочет отправиться к маме в Пусан. По дороге случается непредвиденное, и на страну обрушивается загадочный вирус. Пассажирам поезда в Пусан — единственного города, отразившего атаки вируса- придется бороться за выживание. 442 километра в пути. Добро пожаловать на борт и помните — в этой гонке недостаточно выжить, чтобы остаться человеком.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('images/pusan.png',
                height: 240,
                width: 320,),
              ],
            ),
          ),
        Card(clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  trailing: const Icon(Icons.star,),
                  title: const Text('Гангстер, Коп и Дьявол'),
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
                    '2005 год. Криминальный босс провинциального города Чхонан Чан Дон-су подвергается нападению серийного убийцы и оказывается единственной выжившей жертвой. Репутация подмочена, единственный способ восстановить авторитет в глазах братвы — найти нападавшего и отомстить. Местный детектив Чон Тхэ-сок всей своей полицейской душой ненавидит организованную преступность, но ему приходится объединить силы с бандитом Дон-су, чтобы изловить ещё более ненавистного маньяка.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('images/gangster.png',
                height: 240,
                width: 320,),
              ],
            ),
          ),
      ]
    );
  }
}