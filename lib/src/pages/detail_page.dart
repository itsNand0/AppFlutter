import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mi_aplicacion/src/Widgets/info_title_widget.dart';
import 'package:mi_aplicacion/src/pages/blurcontainer.dart';
import 'package:mi_aplicacion/src/pages/home_page.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.color, required this.image, required this.nombre });

  final String nombre;
  final int color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(color), Colors.black], begin: Alignment.topCenter, end: Alignment.bottomCenter)
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    height: 300,
                    child: Hero(tag:color,child: Image.asset(image)),),
                ),
                Positioned(
                  bottom: 3,
                  child: BlurContainer(child: Container(
                  width: 160,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)
                   ),
                    child: Text(nombre,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
                ),))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0), child: Text("$nombre #Personaje", style:  const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold))),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0), child: Text("DRAGON BALL", style: TextStyle(color: Colors.white70),),),
            SizedBox(height: 50,),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0), child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoTitle(title: "Pais", Subtitle: "Japon"),
                InfoTitle(title: "Pais", Subtitle: "Japon")
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const Home(),))
            },
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(color)),
              child: const Text("Volver", style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            ),
          )  
        ],
        ),
      ),
    );
  }
}