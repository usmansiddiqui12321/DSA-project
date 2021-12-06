import 'package:flutter/material.dart';
class CategoryDetail {
  final name;
  final img;
  final pieces;
  CategoryDetail({
    required this.name,
    required this.img,
    required this.pieces,
  });
}

List<CategoryDetail> catlist = [
  CategoryDetail(
      name: "Shoes", img: "images/shoes.png", pieces: "10 Pieces left"),
  CategoryDetail(
      name: "Suit", img: "images/suit.png", pieces: "15 Pieces left"),
  CategoryDetail(
      name: "Shirt", img: "images/shirt.png", pieces: "8 Pieces left"),
  CategoryDetail(
      name: "Watches", img: "images/watch.png", pieces: "5 Pieces left"),
  CategoryDetail(
      name: "Pant", img: "images/trouser.png", pieces: "3 Pieces left"),
  CategoryDetail(name: "Tie", img: "images/tie.png", pieces: "6 Pieces left"),
];

class Products {
  final name;
  final img;
  final discount;
  final int price;
  bool isselected;
  Products({
    required this.name,
    required this.img,
    required this.discount,
    required this.price,
    required this.isselected,
  });
}
    class product {
  final String img;
  final String name;
  product({
  required this.img,
  required this.name,
});
}
List<Products> productlist = [
  Products(
    name: "Nike Shoes",
    img: "images/s1.jpg",
    discount: 30,
    price: 119,
    isselected: false,
  ),
  Products(
    name: "Adidas Shoes",
    img: "images/s2.jpg",
    discount: 10,
    price: 99,
    isselected: false,
  ),
  Products(
    name: "Men Suit",
    img: "images/su1.png",
    discount: 20,
    price: 399,
    isselected: false,
  ),
  Products(
    name: "Blue Jeans",
    img: "images/trouser1.png",
    discount: 15,
    price: 259,
    isselected: false,
  ),
  Products(
    name: "Men's Watch",
    img: "images/w1.jpg",
    discount: 35,
    price: 189,
    isselected: false,
  ),
  Products(
    name: "Rado Watch",
    img: "images/w2.jpg",
    discount: 16,
    price: 299,
    isselected: false,
  ),
  Products(
    name: "T-Shirt",
    img: "images/tshir.jpg",
    discount: 22,
    price: 59,
    isselected: false,
  ),
  Products(
    name: "Men's Shuit",
    img: "images/su.png",
    discount: 11,
    price: 159,
    isselected: false,
  ),
];
List<Products> cartlist = [];
List<Products> favoritelist = [];
List<String> temp = []; // used in searchh

List<String> productlst = [
  "T-Shirt",
  "Men's Shuit",
  "Rado Watch",
  "Men's Watch",
  "Blue Jeans",
  "Men Suit",
  "Adidas Shoes",
  "Nike Shoes",

];
List<num> PriceList = [450,213,600,122,555,444,777,99];//used in home_screen

// //Ascending
// widget Quick_Sort(){
// If(PriceList.length <= 1){
// return null
// else{
// pivot = PriceList.pop();
// greater = [];
// lower = [];
// for (i in PriceList){
//  if(i> pivot){
//  greater.append[i];
// }
// else {
// lower.append[i];
// return(Quick_Sort(lower) , pivot , Quick_Sort(greater))
//         }
//       }
//     }
//   }
// }
// //Descending
// widget isDescending(){
// If(PriceList.length <= 1){
// return null
// else{
// pivot = PriceList.pop();
// greater = [];
// lower = [];
// for (i in PriceList){
//  if(i> pivot){
//  lower.append[i];
// }
// else {
// upper.append[i];
// return(Quick_Sort(lower) , pivot , Quick_Sort(greater))
//         }
//       }
//     }
//   }
// }