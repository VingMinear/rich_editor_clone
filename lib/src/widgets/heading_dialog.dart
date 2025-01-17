import 'package:flutter/material.dart';

import 'html_text.dart';

class HeadingDialog extends StatelessWidget {
  final formats = [
    {'id': '1', 'title': '<h1>Heading 1</h1>'},
    {'id': '2', 'title': '<h2>Heading 2</h2>'},
    {'id': '3', 'title': '<h3>Heading 3</h3>'},
    {'id': '4', 'title': '<h4>Heading 4</h4>'},
    {'id': '5', 'title': '<h5>Heading 5</h5>'},
    {'id': '6', 'title': '<h6>Heading 6</h6>'},
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (Map format in formats)
              Container(
                width: double.infinity,
                child: ListTile(
                  title: HtmlText(html: format['title']),
                  onTap: () => Navigator.pop(context, format['id']),
                ),
              )
          ],
        ),
      ),
    );
  }
}
