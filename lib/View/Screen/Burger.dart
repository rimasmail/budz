
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'Detail.dart';
import 'Login.dart';
class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {

  List Burgers=[
    {
      "nom":"Chiken Original",
      "prix" :"500 DA",
      "image":"lib/images/Burgers/chikenoriginal.jpg",
      "ingredient":"Sauce Budz,Poulet crispy,Salade,Tomate,Oignons rouges,Cornichons,Fromage slice"
    },
    {
      "nom":"Chiken Spicy",
      "prix" :"550 DA",
      "image":"lib/images/Burgers/chikenspicy.jpg",
      "ingredient":"Sauce spicy,Poulet crispy spicy,Salade,Tomate,Rondelles de piments,oignons caramélisès,Fromage slice"
    },
    {
      "nom":"Chiken Deluxe",
      "prix" :"600 DA",
      "image":"lib/images/Burgers/chikendeluxe.jpg",
      "ingredient":"Sauce a l'ail,Poulet crispy,Salade,Tomate,Oignons caramélisès,Fromage Gouda,Fromage Slice"
    },
    {
      "nom":"Chiken Supreme",
      "prix" :"600 DA",
      "image":"lib/images/Burgers/chikensupreme.jpg",
      "ingredient":"Sauce fumée,Poulet crispy,Salade,Tomate,Oignons caramélisès,Fromage Gouda,Fromage slice"
    },
    {
      "nom":"Mixte",
      "prix" :"850 DA",
      "image":"lib/images/Burgers/mixte.jpg",
      "ingredient":"Sauce Budz,Poulet crispy,Viande hachée,Salade,Tomate,Fromage gruyére,Fromage slice"
    },
    {
      "nom":"Beef Original",
      "prix" :"500 DA",
      "image":"lib/images/Burgers/beeforiginal.jpg",
      "ingredient":"Sauce Budz,Viande hachée,Salade,Tomate,Oignons rouge,Cornichon,Fromage slice"
    },
    {
      "nom":"Beef Spicy",
      "prix" :"550 DA",
      "image":"lib/images/Burgers/Beeef.jpg",
      "ingredient":"Sauce spicy,Viande hachée,Salade,Tomate,,oignons rouge,Fromage slice"
    },
    {
      "nom":"Camembert Miel",
      "prix" :"650 DA",
      "image":"lib/images/Burgers/camembertmiel.jpg",
      "ingredient":"Sauce honey,Viande hachée,Salade,Tomate,Oignons rouge,Cornichon,bacon"
    },
    {
      "nom":"Beef Bacon",
      "prix" :"700 DA",
      "image":"lib/images/Burgers/beefbacon.jpg",
      "ingredient":"Sauce fumée,Viande hachée,Salade,Tomate,Oignons rouge,Cornichon,Bacon"
    },
    {
      "nom":"Double Viande",
      "prix" :"700 DA",
      "image":"lib/images/Burgers/doubleviande.jpg",
      "ingredient":"Sauce Budz,Double viande hachée,Salade,Tomate,Oignons caramélisès,Cornichons,bacon,Fromage Gouda,Fromage slice"
    },
    {
      "nom":"Beef BBQ",
      "prix" :"650 DA",
      "image":"lib/images/Burgers/beefbbq.jpg",
      "ingredient":"Sauce Budz BBQ spéciale,Viande hachée,Salade,Tomate,Oignons Caramélisès,Fromage gouda,Fromage slice"
    },
    {
      "nom":"Fish",
      "prix" :"550 DA",
      "image":"lib/images/Burgers/fish.jpg",
      "ingredient":"Sauce Budz,Poisson pané,Salade,Tomate,Oignons rouge,Cornichons,Fromage slice"
    },
  ];@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
      title: Text("Burgers",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins",color: Colors.orange),),
      centerTitle: true,

       elevation:12 ,
        shadowColor: Colors.orange,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Text("Découvrez nos burgers savoureux !",style: TextStyle(fontFamily: "Poppins",fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
          SizedBox(height: 20),
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
                itemCount: Burgers.length,
            itemBuilder:(context, i){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>detail(data:Burgers[i])));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 140,
                            child: Image.asset(Burgers[i]["image"]),
                          ),
                          Text(Burgers[i]["nom"],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                          Text(Burgers[i]["prix"]),
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
