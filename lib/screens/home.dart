import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 80, 195, 221),
        body: PageView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: const [PageOne(), PageTwo()]));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 80, 195, 221),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 162, 255),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 5))
              ]),
          child: const TextButton(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Bienvenido',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            onPressed: null,
          ),
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [_BackGround(), _WeatherInfo()],
    );
  }
}

class _BackGround extends StatelessWidget {
  const _BackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 80, 195, 221),
      child: Image(
        image: const AssetImage('assets/background.png'),
        height: height,
        width: width,
        fit: BoxFit.fill,
      ),
    );
  }
}

class _WeatherInfo extends StatelessWidget {
  const _WeatherInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const stilo = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text('11°', style: stilo),
                Text('Miércoles', style: stilo),
              ],
            ),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
              size: 100,
            )
          ],
        ),
      ),
    );
  }
}
