import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'creercompte.dart';
import 'principal.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObscure =false;
  String? adresse;
  String? mdp;
  GlobalKey<FormState> formstate= GlobalKey();
  GlobalKey<FormState> formstate1= GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Budz ",
                  style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w700,fontSize: 50,color:Theme.of(context).primaryColor ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Form(
              //autovalidateMode: AutovalidateMode.always,
              key: formstate,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("L'adresse email",style: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType:TextInputType.emailAddress,
                    maxLines: 2,
                    minLines: 1,
                    decoration: InputDecoration(
                      hintText: "Entrez l'adresse email",
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      fillColor: Colors.grey[230],
                      filled: true,
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onChanged: (value) {
                      adresse = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Veuillez entrer un mot de passe';
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 10),

            Form(
              key: formstate1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mot de passe",style: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType:TextInputType.emailAddress,
                    maxLines: 1,
                    minLines: 1,

                    obscureText: isObscure,
                    decoration: InputDecoration(
                      hintText: "Entrez le mot de passe",
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      fillColor: Colors.grey[230],
                      filled: true,
                      suffixIcon:InkWell(
                        onTap: (){
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                        ),
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onChanged: (value) {
                      mdp = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Veuillez entrer un mot de passe';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(
              width: 140,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: MaterialButton(
                elevation: 30,
                child:Text("Connexion") ,
                onPressed: (){
                  //adresse atan di adresse
                  //mot de passe atan di mdp
                  //    dagui akd la base de donnéé ma yella le compte negh nn mayella oui
                  if(formstate.currentState!.validate()&&formstate1.currentState!.validate()){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Principal()));

                  }


                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Vous n'avez pas encore de compte?  ",style: TextStyle(decoration: TextDecoration.underline,color: Colors.black,fontSize: 14)),
                InkWell(
                  child: Expanded
                    (child: Text("Créer un compte ",
                    style: TextStyle(color: Colors.green,fontSize: 13),
                  ),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>creer()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



