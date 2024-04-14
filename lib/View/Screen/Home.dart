import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Burger.dart';
import 'Login.dart';
import 'classique.dart';
import 'frenchbaguette.dart';
import 'milkshake.dart';
import 'poutine.dart';
List categories = [
  {
    "nom" :"Burgers",
    "image":"lib/images/icon/cheese-burger(3).png"
  },
  {
    "nom" :"Baguette & Wrap",
    "image":"lib/images/icon/burrito.png"
  },
  {
    "nom" :"Poutine",
    "image":"lib/images/icon/poutine.png"
  },
  {
    "nom" :"Milkshake",
    "image":"lib/images/icon/milkshake.png"
  },
  {
    "nom" :"Boisson ",
    "image":"lib/images/icon/orange-juice.png"
  },

];
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  String selectedCategory = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         SizedBox(height: 50),
        Text("Commandez avec simplicité ,savourez avec plaisir",style: TextStyle(fontFamily: "Poppins",fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
         SizedBox(height: 20),
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text("Categories",
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ],
         ),
         SizedBox(height: 20,),
         Container(height: 100,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: categories.length,
           itemBuilder: (context,i){
             return InkWell(
               onTap: (){
                 selectedCategory = categories[i]["nom"];
                 if(selectedCategory=="Burgers"){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Burger()));
                 }else if(selectedCategory=="Baguette & Wrap"){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>frenchbaguette()));
                 }else if(selectedCategory=="Poutine"){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>poutine()));
                 }else if(selectedCategory=="Milkshake"){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>milkshake()));
                 }else if(selectedCategory=="Boisson"){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>classique()));
                 }

               },
               child: Container(
                 margin: EdgeInsets.only(right: 20,left: 10),
                 child: Column(
                   children: [
                     Container(
                       margin: EdgeInsets.only(bottom: 10),
                       height: 70,
                       width: 70,
                       decoration: BoxDecoration(
                         color:Colors.grey[300],
                         borderRadius: BorderRadius.circular(70),
                       ),
                       child: Image.asset(categories[i]["image"]),
                     ),
                     Expanded(child: Text(categories[i]["nom"],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),))
                   ],
                 ),

               ),
             );

           },
         ),


         )

       ],
     ),
    );
  }
}
/*String onCategoryClicked(int index) {
  String categoryName = categories[index]["nom"];
  print("L'utilisateur a cliqué sur la catégorie : $categoryName");
  return categoryName;
}
*/
