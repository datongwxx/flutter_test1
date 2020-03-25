import 'package:flutter/material.dart';
import 'package:flutter_test1/demo/PostShow_Demo.dart';
import '../model/post.dart';
import './PostShow_Demo.dart';

class ListViewDemo extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.asset(posts[index].imageUrl,fit:BoxFit.cover),
              ),       
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
              ),
              Text(
                posts[index].author,
              ),
              SizedBox(height: 16.0),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.1),
                highlightColor: Colors.white.withOpacity(0.3),
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PostShow(post: posts[index]))
                  );
                },
              )
            )
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}