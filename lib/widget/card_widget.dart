import 'package:flutter/material.dart';
import 'package:hng_stage_one/shop_model.dart';
import 'package:hng_stage_one/view/fonts.dart';

class CardWidget extends StatefulWidget {
  const CardWidget(
      {super.key,
      required this.model,
      required this.index,
      required this.isCheckOut});
  final List<ShopModel> model;
  final int index;
  final bool isCheckOut;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    final shopItem = widget.model[widget.index];
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 20,
        top: 5,
        bottom: 5,
      ),
      height: 120,
      //width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1,
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1.5,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            shopItem.itemImage,
            height: 80,
            width: 80,
          ),
          const SizedBox(
            width: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                shopItem.name,
                style: const TextStyle(
                  fontFamily: Fonts.nunitoExtraBold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'In stock',
                style: TextStyle(
                  fontFamily: Fonts.nunitoRegular,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "#${shopItem.cost}",
                style: const TextStyle(
                  fontFamily: Fonts.nunitoBold,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (shopItem.itemPicked > 0) ...[
                Text(
                  'x${shopItem.itemPicked}',
                  style: const TextStyle(
                    fontFamily: Fonts.nunitoBold,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
              widget.isCheckOut
                  ? InkWell(
                      onTap: () {
                        
                        setState(() {
                          checkOutItems.removeAt(widget.index);
                          shopItem.itemPicked = 0;
                        });
                      },
                      child: const Text(
                        'Remove',
                        style: TextStyle(
                          fontFamily: Fonts.nunitoBold,
                          fontSize: 25,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        //   (shopItem.itemPicked > 0 && )
                        InkWell(
                          onTap: () {
                            setState(() {
                              shopItem.itemPicked--;
                              // !widget.isCheckOut && shopItem.itemPicked == 0
                              //     ? checkOutItems.remove(sh)
                              //     : null;

                              if (shopItem.itemPicked == 0) {
                                shopItem.isAdded = false;
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey,
                            ),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              shopItem.itemPicked++;
                              if (shopItem.itemPicked == 1) {
                                checkOutItems.add(shopItem);
                                shopItem.isAdded = true;
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          )
        ],
      ),
    );
  }
}
