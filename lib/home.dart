import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nested/model.dart';
import 'package:nested/service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<GroupModel> datas = [];

  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    datas = await groupService().getGroup();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: datas.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: ((context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(datas[index].name!),
                    SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: datas[index].childSubCategories!.length,
                        itemBuilder: ((context, index2) {
                          return Container(
                            height: 60,
                            width: 100,
                            color: Colors.amberAccent,
                            child: Text(datas[index]
                                .childSubCategories![index2]
                                .englishName!),
                          );
                        }))
                  ],
                );
              })),
        ),
      )),
    );
  }
}
