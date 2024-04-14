import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'detail2.dart';
import 'package:flutter/widgets.dart';

class classique extends StatefulWidget {
  const classique({super.key});

  @override
  State<classique> createState() => _classiqueState();
}

class _classiqueState extends State<classique> {

  List classique=[
    {
      "nom":"Mojito Classique",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/mojitoclassique.jpg",
    },
    {
      "nom":"Mojito Grenadine",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/mojitogrenadine.jpg",
    },
    {
      "nom":"Mojito Ananas",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/mojitoananas.jpg",
    },
    {
      "nom":"Mojito Fraise",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/mojitofraise.jpg",
    },

    {
      "nom":"Jus d'ananas",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/jusdananas.jpg",
    },
    {
      "nom":"Jus de Peche",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/jusdepeche.jpg",
    },
    {
      "nom":"Jus d'orange pressé",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/jusdorangepresse.jpg",
    },
    {
      "nom":"Jus de Mangue",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/jusdemangue.jpg",
    },
    {
      "nom":"Jus de Citron",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/jusdecitron.jpg",
    },
    {
      "nom":"Pinky",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/pinky.jpg",
    },
    {
      "nom":"Pina Colada",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/pinacolada.jpg",
    },
    {
      "nom":"Sunrise",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/sunrise.jpg",
    },
    {
      "nom":"Bora Bora",
      "prix" :"550 DA",
      "image":"lib/images/grandclassique/borabora.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text("Grand classique",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins",color: Theme.of(context).primaryColor),),
        centerTitle: true,

        elevation:12 ,
        shadowColor: Colors.orange,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Text("Découvrez nos Grand classique savoureux !",style: TextStyle(fontFamily: "Poppins",fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 200,
                ),
                itemCount: classique.length,
                itemBuilder:(context, i){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>dataa(data:classique[i])));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 100,
                            child: Image.asset(classique[i]["image"]),
                          ),
                          Text(classique[i]["nom"],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                          Text(classique[i]["prix"]),
                        ],
                      ),
                    ),
                  );
                }
            ),


          )
        ],
      ),
    );
  }
}
