import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttter/View/Screen/Login.dart';


class creer extends StatefulWidget {
  const creer({super.key});

  @override
  State<creer> createState() => _creerState();
}

class _creerState extends State<creer> {
  bool isObscure = false;
  GlobalKey<FormState> formstate = GlobalKey();
  GlobalKey<FormState> formstate1 = GlobalKey();
  GlobalKey<FormState> formstate2 = GlobalKey();

  String? password;
  String? confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[100],),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Créer un compte ",
                    style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 30, color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: formstate,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("L'adresse email", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer votre adresse email';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: formstate1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mot de passe", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,
                      minLines: 1,
                      obscureText: isObscure,
                      onChanged: (value) {
                        password = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer un mot de passe';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Entrez le mot de passe",
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.grey[230],
                        filled: true,
                        suffixIcon: InkWell(
                          onTap: () {
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
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: formstate2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Réecrire le mot de passe", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,
                      minLines: 1,
                      obscureText: isObscure,
                      onChanged: (value) {
                        confirmPassword = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez réécrire votre mot de passe';
                        }
                        if (value != password) {
                          return 'Les mots de passe ne correspondent pas';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Réecrivez le mot de passe",
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.grey[230],
                        filled: true,
                        suffixIcon: InkWell(
                          onTap: () {
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

                  child:Text("Créer") ,
                  onPressed: () {
                    // Valider les formulaires
                    if (formstate1.currentState!.validate() &&
                        formstate2.currentState!.validate()&&formstate.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Login()));
                    }
                  },
                ),
              ),

            ],
          ),]
        ),
      ),
    );
  }
}


