import 'package:flutter/material.dart';
import 'package:hng_stage_one/shop_model.dart';
import 'package:hng_stage_one/view/app_image.dart';
import 'package:hng_stage_one/view/fonts.dart';
import 'package:hng_stage_one/widget/card_widget.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Check Out',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontFamily: Fonts.nunitoBlack),
              ),
              const SizedBox(
                height: 10,
              ),
              checkOutItems.isEmpty
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Image.asset(AppImage.empty),
                      ],
                    )
                  : 
                  Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return CardWidget(
                            model: checkOutItems,
                            index: index,
                            isCheckOut: true,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: checkOutItems.length,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
