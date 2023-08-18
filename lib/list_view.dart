import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/**
 * ListView.builder,
 * ListView.separated,
 * ListView.custom
 */


class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        // ...
      ],
    );
  }
}

class MyListViewListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 1'),
          subtitle: Text('Subtitle for Item 1'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Xử lý khi mục được nhấp vào
          },
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 2'),
          subtitle: Text('Subtitle for Item 2'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            // Xử lý khi mục được nhấp vào
          },
        ),
        // ...
      ],
    );
  }
}

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            subtitle: Text('Subtitle for ${items[index]}'),
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Xử lý khi mục được nhấp vào
              print('Tapped on ${items[index]}');
            },
          );
        },
      ),
    );
  }
}

class MyListViewCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.custom'),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return ListTile(
              title: Text(items[index]),
              subtitle: Text('Subtitle for ${items[index]}'),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Xử lý khi mục được nhấp vào
                print('Tapped on ${items[index]}');
              },
            );
          },
          childCount: items.length,
        ),
      ),
    );
  }
}


class MyListViewSeparated extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Separated '),
      ),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            subtitle: Text('Subtitle for ${items[index]}'),
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Xử lý khi mục được nhấp vào
              print('Tapped on ${items[index]}');
            },
          );
        },
      ),
    );
  }
}

final List<String> items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];
