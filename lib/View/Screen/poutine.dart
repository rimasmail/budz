import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Detail.dart';

class poutine extends StatefulWidget {
  const poutine({super.key});

  @override
  State<poutine> createState() => _poutineState();
}

class _poutineState extends State<poutine> {
  List poutine=[
    {
      "nom":"Poutine Chiken Fries",
      "prix" :"550 DA",
      "image":"lib/images/poutine/poutinechikenfries.jpg",
      "ingredient":"Frites,Poulet Tenders,Sauce fromagére canadienne"
    },
    {
      "nom":"Poutine Canadienne",
      "prix" :"550 DA",
      "image":"lib/images/poutine/poutinecanadienne.jpg",
      "ingredient":"Frites,Poulet Fumé,Sauce fromagére canadienne"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text("poutine",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins",color: Colors.orange),),
        centerTitle: true,

        elevation:12 ,
        shadowColor: Colors.orange,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Text("Découvrez nos poutine savoureux !",style: TextStyle(fontFamily: "Poppins",fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
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
                itemCount: poutine.length,
                itemBuilder:(context, i){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>detail(data:poutine[i])));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 100,
                            child: Image.asset(poutine[i]["image"]),
                          ),
                          Text(poutine[i]["nom"],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                          Text(poutine[i]["prix"]),
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
