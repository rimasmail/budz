import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Detail.dart';

class frenchbaguette extends StatefulWidget {
  const frenchbaguette({super.key});

  @override
  State<frenchbaguette> createState() => _frenchbaguetteState();
}

class _frenchbaguetteState extends State<frenchbaguette> {

  List frenchbaguette=[
    {
      "nom":"French Veggie Baguette",
      "prix" :"500 DA",
      "image":"lib/images/frenchbaguette/frenchveggiebaguette.jpg",
      "ingredient":"Salade,Tomate,Camembert,Sauce pesto verde"
    },
    {
      "nom":"Beef Baguette",
      "prix" :"800 DA",
      "image":"lib/images/frenchbaguette/beefbaguette.jpg",
      "ingredient":"Sauce au poivre,Steak,Champignons caramélisès,Oignons,Tomate,Laitue"
    },
    {
      "nom":"Chiken Baguette",
      "prix" :"700 DA",
      "image":"lib/images/frenchbaguette/chikenbaguette.jpg",
      "ingredient":"Sauce a l'ail,Poulet tenders,Salade,Oignons,Tomate,Fromage Slice"
    },
    {
      "nom":"Wrap Chiken Cheese",
      "prix" :"550 DA",
      "image":"lib/images/frenchbaguette/wrapchikencheese.jpg",
      "ingredient":"Sauce a l'ail,Poulet tenders,Salade,Oignons rouge,Tomate,Fromage slice"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text("french baguette",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins",color: Colors.orange),),
        centerTitle: true,

        elevation:12 ,
        shadowColor: Colors.orange,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Text("Découvrez nos french baguettes savoureux !",style: TextStyle(fontFamily: "Poppins",fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
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
                itemCount: frenchbaguette.length,
                itemBuilder:(context, i){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>detail(data:frenchbaguette[i])));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 100,
                            child: Image.asset(frenchbaguette[i]["image"]),
                          ),
                          Text(frenchbaguette[i]["nom"],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                          Text(frenchbaguette[i]["prix"]),
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
