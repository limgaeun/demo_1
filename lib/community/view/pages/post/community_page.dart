import 'package:flutter/material.dart';
import 'package:frontend/community/controller/post_controller.dart';
import 'package:frontend/community/controller/user_controller.dart';
import 'package:frontend/community/view/pages/post/write_page.dart';
import 'package:get/get.dart';
import 'detail_page.dart';

class CommunityPage extends StatelessWidget {
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  var scaffodKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // put 없으면 만들고, 있으면 찾기!!
    UserController u = Get.find();
    // 객체 생성(create) onInit 함수실행(initialize)
    PostController p = Get.put(PostController());

    //p.findAll();
    return Scaffold(
      key: scaffodKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => WritePage());
        },
        child: Icon(Icons.code),
      ),
      appBar: AppBar(
        title: Text("${u.isLogin}"),
      ),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          await p.findAll();
        },
        child: Obx(
              () => ListView.separated(
            itemCount: p.posts.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  p.findById(p.posts[index].id!);
                  Get.to(() => DetailPage(p.posts[index].id));
                },
                child: ListTile(
                  leading: Text("${p.posts[index].id}"),
                  title: Text("${p.posts[index].title}"),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ),
      ),
    );
  }
}