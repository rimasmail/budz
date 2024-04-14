import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class dataa extends StatefulWidget {
  final data ;
  const dataa({super.key,this.data});

  @override
  State<dataa> createState() => _dataaState();
}

class _dataaState extends State<dataa> {
  int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation:12 ,
        shadowColor: Colors.orange,
        //iconTheme: IconThemeData(color: Colors.grey),
        title: Text(widget.data["nom"],
          style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 27),),
        centerTitle: true,

      ),
      body:ListView(
        children: [
          Container(
              height: 280,

              child: Image.asset(widget.data["image"])
          ),
          SizedBox(height: 20,),
          Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                //color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40),
              ),
              alignment: Alignment.center,
              child: Text(widget.data["prix"],
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black) ,
              )),
          SizedBox(height: 40,),
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      i++;
                    });
                  },
                  child: Icon(Icons.add),),
                SizedBox(height: 17),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      if(i==0){
                        i==0;
                      }else{ i--;}
                    });
                  },
                  child: Icon(Icons.remove),),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            child: Text("Vous avez commandé ${i.toString()} ${widget.data["nom"]}",style: TextStyle(color: Colors.black,fontSize: 15,backgroundColor: Colors.grey[300]),),

          )
        ],
      ) ,
    );
  }
}


