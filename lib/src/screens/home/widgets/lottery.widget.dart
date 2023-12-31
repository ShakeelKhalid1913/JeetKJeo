import 'package:flutter/material.dart';
import 'package:jeet_ke_jeo/src/screens/home/widgets/numbergrid.widget.dart';
import 'package:velocity_x/velocity_x.dart';

class Lottery extends StatefulWidget {
  const Lottery({super.key});

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  final List<Widget> _children = [
    [
      Image.asset(
        'assets/images/prizes/cg125-red-01.png',
        fit: BoxFit.cover,
      ).p4().box.white.withRounded(value: 15).make(),
      "Honda 125cc".text.xl2.make().p4(),
    ].stack(),
    [
      Image.asset(
        'assets/images/prizes/Honda-cd-70-2.png',
        fit: BoxFit.cover,
      ).p4().box.white.withRounded(value: 15).make(),
      "Honda cd70".text.xl2.make().p4(),
    ].stack(),
    [
      Image.asset(
        'assets/images/prizes/umrah.png',
        fit: BoxFit.cover,
      ).p4().box.white.withRounded(value: 15).make(),
      "Umrah Ticket".text.xl2.make().p4(),
    ].stack(),
    [
      Image.asset(
        'assets/images/prizes/dubai.png',
        fit: BoxFit.cover,
      ).p4().box.white.withRounded(value: 15).make(),
      "Dubai Ticket".text.xl2.make().p4(),
    ].stack()
  ];

  @override
  Widget build(BuildContext context) {
    return [
      _children.map((e) => e).toList().swiper(
          height: context.isMobile ? 200 : 400,
          enlargeCenterPage: true,
          autoPlay: true,
          isFastScrollingEnabled: true,
          enableInfiniteScroll: true,
          viewportFraction: 0.8,
          scrollDirection:
              context.isMobile ? Axis.horizontal : Axis.horizontal),
      //PinView(key: globals.pinViewKey),
      const NumberGrid(),
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/purchase");
        },
        child: "Play".text.xl4.make(),
      ).wFull(context).h(50).p16(),
    ].column().p16();
  }
}
