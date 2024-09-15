import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});
  final TituloTextStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 26
  );

  final SubTituloTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.all(25),
      height: 170,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 47, 48, 49)
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column( 
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dragon Ball", style: TituloTextStyle,),
              Text("Serie", style: SubTituloTextStyle,)
            ],
            
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15),
                 ),
                 child: IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.search, color: Colors.white, size: 20,)
                  ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15),
                 ),
                 child: IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.notifications, color: Colors.white, size: 20,)
                  ),
              )
            ],
          )
        ],
        ),
    );
  }
}