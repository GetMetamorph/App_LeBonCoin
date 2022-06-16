import 'package:flutter/material.dart';
import 'package:untitled/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String? email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                height: h*0.28,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "img/signup.png"
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: h*0.16,),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 50,
                      backgroundImage: AssetImage(""
                          "img/profile1.png"),
                    )
                  ],
                ),
              ),
              SizedBox(height: 70),
              Container(
                width: w,
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Bienvenue",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        )
                    ),
                    Text(
                        email!,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 200,),
              GestureDetector(
                onTap: (){
                  AuthController.instance.logout();
                },
                child: Container(
                  width: w*0.8,
                  height: h*0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage(
                              "img/loginbtn.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Center(
                    child: Text(
                      "Se déconnecter",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
