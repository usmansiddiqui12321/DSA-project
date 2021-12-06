import 'package:dsaproject/Screens/Components/list.dart';
import 'package:flutter/material.dart';
class searchh extends StatefulWidget {
  const searchh({ Key? key }) : super(key: key);

  @override
  _searchhState createState() => _searchhState();
}

class _searchhState extends State<searchh> {
  TextEditingController? _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search here',
                    contentPadding: EdgeInsets.all(8)),
                onChanged: (value) {
                  setState(() {
                    Binary_Search = productlst.where((e) => e.toString().toLowerCase().contains(value.toLowerCase())).
                    toList();
                  }
                  );
                },
              ),
            )
          ),
        body: ListView.builder(
          itemCount: _textEditingController!.text.isNotEmpty ? temp.length : productlst.length,
          itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.image),
                ),
                SizedBox(width: 10,),
                Text(_textEditingController!.text.isNotEmpty ? temp[index] 
                : productlst[index]),
              ],
            ),
          );
        }),
    );
  }
}
widget Binary_Search(List<int> productlst, int _textEditingController, int min, int max) {
    return 
    int min = 0;
    int max = arr.length - 1;
    if (max >= min) {
    int mid = ((max + min) / 2).floor();
    if (_textEditingController == productlst[mid]) {
      print('${mid}');
    } else if (_textEditingController > productlst[mid]) {
      Binary_Search(productlst, _textEditingController, mid + 1, max);
    } else {
      Binary_Search(productlst, _textEditingController, min, mid - 1);
    }
  }
  return null;
}