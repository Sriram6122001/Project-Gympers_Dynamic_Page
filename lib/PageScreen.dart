import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'PageViewModel.dart';

class PageScreen extends StatelessWidget {
  PageScreen({super.key});
PageViewModel _PageViewModel = PageViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D031B),
      body:SafeArea(child: 
      Center(child: 
      Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("GYMPERS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
            SizedBox(
              height:25
            ),
              Container(
                height: 100,
                width:250,
                child: Observer(
                  builder: (context) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:_PageViewModel.collections.length,
                      itemBuilder:(BuildContext context, int index) {
                     return MaterialButton(
                      onPressed: (){
                         _PageViewModel.productFilter(brandIndex:index);
                      },
                        child: 
                        CircleAvatar(backgroundColor: Colors.white,
                        radius:25,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: _PageViewModel.collections[index]=="Nike"?Image.asset("lib/Helpers/Resources/asset/Images/nike.png"):_PageViewModel.collections[index]=="Adidas"?Image.asset("lib/Helpers/Resources/asset/Images/adidas.png"):_PageViewModel.collections[index]=="Puma"?Image.asset("lib/Helpers/Resources/asset/Images/puma.png"):Image.asset("lib/Helpers/Resources/asset/Images/all.png"),
                        ),
                        ),
                     );
                      });
                  }
                ),
              ) ,
              SizedBox(
              height:25
              ),
              Row(
                children: [
                  SizedBox(width:32),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("T-Shirts",style: TextStyle(color: Colors.white,fontSize: 23,letterSpacing: 2),)),
                ],
              ),
              SizedBox(
                height: 35
              ),
            Expanded(child: 
              Center(child: Container(
                child: 
                Observer(
                  builder: (context) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 6,
                      childAspectRatio: 1.3,
                      crossAxisCount: 2
                    ),
                    itemCount: _PageViewModel.details.length,
                     itemBuilder: (BuildContext context, int index) {
                       return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width:100,
                            decoration: BoxDecoration(color: Color(0xff56505F),borderRadius: BorderRadius.circular(15)),
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: 
                              Image(image: AssetImage(_PageViewModel.details[index]['Image']),height: 100,width: 100)
                          ),
                          ),
                          SizedBox(
                            height:3
                          ),
                        Text(_PageViewModel.details[index]['Brand'],
                        style: TextStyle(color: Colors.white,fontSize: 15),),
                         SizedBox(
                            height:3
                          ),
                        Text(_PageViewModel.details[index]["Category"],
                        style: TextStyle(color: Colors.white,fontSize: 10),),
                        ],
                       );
                     });
                  }
                ),
              ),)
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    IconButton(icon:Icon(Icons.home_outlined,color: Colors.white),onPressed:() {
                    },),
                     IconButton(icon:Icon(Icons.search,color: Colors.white),onPressed:() {
                    },),
                     IconButton(icon:Icon(Icons.shopping_cart_outlined,color: Colors.white),onPressed:() {
                    },),
                     IconButton(icon:Icon(Icons.person_outlined,color: Colors.white),onPressed:() {
                    },),
                ],
              ), 
              SizedBox(
                height: 25,
              )
          ],
        ),
      ),))

    );
  }
}