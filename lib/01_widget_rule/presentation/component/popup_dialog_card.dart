import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter_together/01_widget_rule/data/model/popUpDialog.dart';

class PopupDialogCard extends StatelessWidget {
  final Popupdialog popupdialog;

  const PopupDialogCard({Key? key, required this.popupdialog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recipe Link',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    // 닫기 버튼 누를 때 동작을 정의합니다.
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Copy recipe link and share your recipe link with friends and family.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9), 
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(4)),
                    ),
                    child: Text(
                      popupdialog.url,
                      style: const TextStyle(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: popupdialog.url));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Link copied to clipboard')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(4)),
                    ),
                  ),
                  child: const Text('Copy Link'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 예제 URL을 가진 Popupdialog 인스턴스를 생성합니다.
    final popupdialog = Popupdialog(url: 'app.Recipe.co/jollof_rice');

    return MaterialApp(
      title: 'Popup Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Popup Dialog Demo'),
        ),
        body: Center(
          child: PopupDialogCard(popupdialog: popupdialog),
        ),
      ),
    );
  }
}
