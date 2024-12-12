import 'package:flutter/material.dart';
import 'package:hng_stage_one/shop_model.dart';
import 'package:hng_stage_one/view/fonts.dart';
import 'package:hng_stage_one/widget/card_widget.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Shoppers',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontFamily: Fonts.nunitoBlack),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return CardWidget(
                      model: items,
                      index: index,
                      isCheckOut: false,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: items.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
