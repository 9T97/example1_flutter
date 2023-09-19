import 'package:day24_navigate_and_gescture/constant/asset_image.dart';
import 'package:flutter/material.dart';

class ShoppingCardHomePage extends StatelessWidget {
  const ShoppingCardHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: ListView.separated(
        padding: const EdgeInsets.all(30),
          separatorBuilder: (context,index)=>const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.black45,
              thickness: 1,
            ),
          ),
          itemBuilder: (context,index){
            return CardSessionView();
          },

          itemCount: 10),
    );
  }
}

class CardSessionView extends StatelessWidget {
  const CardSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 300,
          child:  ShoppingCardImageAndPriceView(),
        ),
        ShoppingCardTitleAndView(),
      ],
    );
  }
}

class ShoppingCardImageAndPriceView extends StatelessWidget {
  const ShoppingCardImageAndPriceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child:ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(kImage4,fit: BoxFit.cover,))

        ),
      ],
    );
  }
}

class ShoppingCardTitleAndView extends StatelessWidget {
  const ShoppingCardTitleAndView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}



