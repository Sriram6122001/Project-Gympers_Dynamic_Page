import 'package:mobx/mobx.dart';
import 'package:selectpage/PageModel.dart';
import 'package:flutter/material.dart';

class PageViewModel extends PageModel{

  PageViewModel(){

  setBrand(collections:["Nike","Adidas","Puma","All"]);
  setProduct(details: [
    {
      "Brand":"Nike",
      "Category":"Man's T-shirts",
      "Image":"lib/Helpers/Resources/asset/Images/red.png.png"
    },
    {
      "Brand":"Adidas",
      "Category":"Man's T-shirts",
      "Image":"lib/Helpers/Resources/asset/Images/black.png"
    },
    {
      "Brand":"Puma",
      "Category":"Man's T-shirts",
      "Image":"lib/Helpers/Resources/asset/Images/white.png"
    },
    {
      "Brand":"Nike",
      "Category":"Man's T-shirts",
      "Image":"lib/Helpers/Resources/asset/Images/black 2.png"
    },
  ]
  );
  setTemp(temporary: details);
}

void productFilter({required int brandIndex})
{
   setProduct(details: []);
   print(details);
   for(var element in temporary)
   {
    if(collections[brandIndex]==element["Brand"])
    {
      // print(element["Brand"]);
      details.add(element);
      // print(details);
    }
   }
   if(collections[brandIndex]=="All")
   {
    setProduct(details: temporary);
   }
}
}

