import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget{

  final Post post;

  PostShow({
    @required this.post, 
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('${post.title}'),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(post.imageUrl),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}', style: Theme.of(context).textTheme.headline5),
                Text('${post.author}', style: Theme.of(context).textTheme.bodyText1),
                Text('${post.description}', style: Theme.of(context).textTheme.bodyText2),
              ],
            ),
          )
        ],
      ),
    );
  }
}