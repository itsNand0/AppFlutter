import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mi_aplicacion/src/pages/detail_page.dart';

class Listapersonajes extends StatefulWidget {
  const Listapersonajes({super.key});

  @override
  State<Listapersonajes> createState() => _ListapersonajesState();
}

class _ListapersonajesState extends State<Listapersonajes> {
  double widthscreen = 0;
  final TituloStyleText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16
  );

  @override
  Widget build(BuildContext context) {
    widthscreen= MediaQuery.of(context).size.width - 50;

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text("portadas", style: TituloStyleText,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              bloquesportadas("903188.webp", "portada", "2015"),
              SizedBox(
                width: widthscreen*0.03,
              ),
              bloquesportadas("Dragon-Ball-Z-Guerreros-juntos.webp", "portada", "2019"),
              SizedBox(
                width: widthscreen*0.03,
              ),
              bloquesportadas("dragon-ball.jpeg", "portada", "2023"),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          bloquespersonajes("Goku", 0xfffe9b0d, 
          "goku-removebg-preview.png"),
          bloquespersonajes("Vegetta", 0xff0509fc, "dragon-ball-z-vegeta-1000x600-removebg-preview.png"),
          bloquespersonajes("Krilin", 0xffe9f900, "krilin.png"),
          bloquespersonajes("Gohan", 0xfff90000, "gohan-removebg-preview.png"),
          
        ],
        
      ),
    );
  }
  Widget bloquespersonajes (String nombre, int color, String image){
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(CupertinoPageRoute(builder: ((context) => DetailPage(color: color, image: image, nombre: nombre,))))
      },
      child: Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(66, 43, 43, 43),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 70,
      
      child: 
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(color),
                        blurRadius: 8,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Hero(tag: color, child: Image.asset("assets/$image")),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(nombre,style: const TextStyle(color: Colors.white, fontSize: 15),)
              ],),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded, color: Colors.grey,))
          ],
        )
      ),
    );
  }


  Widget bloquesportadas(String image, String titulo, String subtitulo){
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset("assets/$image", width: widthscreen*0.31,
          height: 110,
          fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
            height: 15,
        ),
        RichText(text: TextSpan(
          text: titulo, style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
          children: [
            TextSpan(
              text: subtitulo,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                fontSize: 10,              
              )
            )

          ]
        ))
      ],
    );
  }

}