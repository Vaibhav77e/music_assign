import 'package:flutter/material.dart';
import 'package:music_app_assign/widgets/customListView.dart';
import 'constants/colors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(63, 59, 84, 1.0),
                        borderRadius: BorderRadius.circular(12)),
                    height: 60,
                    width: 60,
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white54,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(63, 59, 84, 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white54,
                              size: 28,
                            ),
                            onPressed: () {},
                          ),
                          hintText: "Search",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const Text(
                'Trending right now',
                style: TextStyle(
                    //  fontFamily: 'Roboto',
                    color: ConstColors.itColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 28),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) => Container(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
