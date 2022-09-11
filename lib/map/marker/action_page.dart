import 'package:flutter/material.dart';
import 'package:frontend/community/view/pages/post/write_page.dart';
import 'package:get/get.dart';

class ActionPage extends StatelessWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail Info'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text('돌아가기'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => WritePage());
              },
              child: Text('후기 남기기'),
            ),
          ],
        )
      ),
    );
  }
}
