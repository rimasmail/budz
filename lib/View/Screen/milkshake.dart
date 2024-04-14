import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'detail2.dart';

class milkshake extends StatefulWidget {
  const milkshake({super.key});

  @override
  State<milkshake> createState() => _milkshakeState();
}

class _milkshakeState extends State<milkshake> {

  List milkshake=[
    {
      "nom":"Milkshake Vanille",
      "prix" :"500 DA",
      "image":"lib/images/milkshake/milkshakevanille.jpg",
    },
    {
      "nom":"Milkshake Lotus",
      "prix" :"500 DA",
      "image":"lib/images/milkshake/milkshakelotus.jpg",
    },
    {
      "nom":"Milkshake Oreo",
      "prix" :"500 DA",
      "image":"lib/images/milkshake/milkshakeoreo.jpg",
    },
    {
      "nom":"Milkshake Banane",
      "prix" :"500 DA",
      "image":"lib/images/milkshake/milkshakebanane.jpg",
    },
    {
      "nom":"Milkshake Fraise",
      "prix" :"500 DA",
      "image":"lib/images/milkshake/milkshakefraise.jpg",
    },
    {
      "nom":"Milkshake Cookies peanut butter",
      "prix" :"550 DA",
      "image":"lib/images/milkshake/milkshakecookiespeanutbutter.jpg",
    },
    {
      "nom":"Milkshake Nutella",
      "prix" :"550 DA",
      "image":"lib/images/milkshake/milkshakenutella.jpg",
    },
    {
      "nom":"Milkshake Moka Glace Vanille",
      "prix" :"600 DA",
      "image":"lib/images/milkshake/milkshakemokaglacevanille.webp",
    },
    {
      "nom":"Milkshake Fruit des bois",
      "prix" :"500 DA",
      "image":"lib/images/milkshake/milkshakefruitdesbois.jpg",
    },
    {
      "nom":"Milkshake Coconut",
      "prix" :"500 DA",
      "image":"lib/images/milkshake/milkshakecoconut.jpg",
    },
    {
      "nom":"Milkshake Crunchy",
      "prix" :"500 DA",
      "image":"lib/images/milkshake/milkshakecrunchy.jpg",
    },
    {
      "nom":"Milkshake Bueno",
      "prix" :"700 DA",
      "image":"lib/images/milkshake/milkshakebueno.jpg",
    },
    {
      "nom":"Milkshake Kitkat",
      "prix" :"700 DA",
      "image":"lib/images/milkshake/milkshakekitkat.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text("french baguette",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins",color: Theme.of(context).primaryColor),),
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
                itemCount: milkshake.length,
                itemBuilder:(context, i){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>dataa(data:milkshake[i])));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 100,
                            child: Image.asset(milkshake[i]["image"]),
                          ),
                          Text(milkshake[i]["nom"],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                          Text(milkshake[i]["prix"]),
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
