import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    if (search == "empty") return [];
    if (search == "error") throw Error();
    return List.generate(
      search.length,
      (int index) {
        return Post(
          "Title : $search $index",
          "Description :$search $index",
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar<Post>(
            onSearch: search,
            searchBarStyle: SearchBarStyle(
              backgroundColor: Colors.blue[200],
              padding: EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(10),
            ),
            minimumChars: 2,
            loader: Center(
              child: Text("Loading..."),
            ),
            onError: (error) {
              return Center(
                child: Text("Error occurred : $error"),
              );
            },
            emptyWidget: Center(
              child: Text("No Result Found!"),
            ),
            debounceDuration: Duration(milliseconds: 300),
            cancellationText: Text("Cancel"),
            icon: Icon(Icons.search),
            crossAxisCount: 2,
            indexedScaledTileBuilder: (int index) =>
                ScaledTile.count(index % 3 == 0 ? 2 : 1, 1),
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.black26,
            ),
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            placeHolder: Center(
              child: Text(
                "Working With Smile: Python",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            iconActiveColor: Colors.white70,
            onItemFound: (Post post, int index) {
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.description),
                onTap: null,
              );
            },
          ),
        ),
      ),
    );
  }
}
