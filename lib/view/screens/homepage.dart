import 'package:ecommerce/view/contant/container.dart';
import 'package:ecommerce/view/contant/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../contant/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 2,
                  child: Container1(
                    45.0,
                    0.0,
                    16.0,
                    11.2,
                    2.0,
                    4.0,
                    0.0,
                    2.0,
                    TextField1(
                        context, 20.0, "Search", Icon(Icons.search), () {}),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.pinkAccent,
                    child: Text(
                      'JD',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBold("Lates products"),
                  TextButton(onPressed: () {}, child: Text1("see all", context))
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container1(
                      1.0,
                      5.0,
                      20.0,
                      0.0,
                      2.0,
                      4.0,
                      0.0,
                      2.0,
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: (){},
                                child: Image.network("https://media.gettyimages.com/id/1205217536/nl/foto/rami-malek-attends-the-2020-vanity-fair-oscar-party-hosted-by-radhika-jones-at-wallis.jpg?s=612x612&w=0&k=20&c=YvkbeU6WKdN89Brimomh-mDnL9_uGGQS5Oc6_GDntcU="),
                              ),
                            ),
                            SizedBox(height: 5,),
                            TextBold("Product Name"),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text1("SP", context),
                                SizedBox(width: 5,),

                              ],
                            )
                          ],
                        ),
                      )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
