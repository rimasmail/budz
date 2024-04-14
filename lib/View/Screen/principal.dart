
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttter/View/Screen/creercompte.dart';
import 'Home.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  int index = 0;
  final List<Widget> pages = [
    Home(),
    Commande(),
    Notification(),
    compte(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 60,
        //backgroundColor: Colors.pink,

        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Poppins'),
        selectedFontSize: 17,
        currentIndex: index,
        onTap: (val){
          setState(() {
            index=val;
          });
        },
        unselectedItemColor: Colors.grey[700],
        unselectedFontSize: 10,
        unselectedLabelStyle:TextStyle(fontWeight: FontWeight.w300,fontFamily: 'Poppins'),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood_sharp),label: "Commande"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined),label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Compte"),
        ],

      ),
      body: pages[index],

    );;
  }
}






class compte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parametre Page',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}







class Commande extends StatefulWidget {
  const Commande({super.key});

  @override
  State<Commande> createState() => _CommandeState();
}

class _CommandeState extends State<Commande> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class Compte extends StatefulWidget {
  const Compte({super.key});

  @override
  State<Compte> createState() => _CompteState();
}

class _CompteState extends State<Compte> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



