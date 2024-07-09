import 'package:flutter/material.dart';
import 'package:rate/rate.dart';
import 'size_button.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isSelectedS = false;
  bool isSelectedM = true;
  bool isSelectedL = false;
  bool isSelectedXL = false;
  bool isSelected2XL = false;
  int quantity = 1;

  void _selectSize(String size) {
    setState(() {
      isSelectedS = size == 'S';
      isSelectedM = size == 'M';
      isSelectedL = size == 'L';
      isSelectedXL = size == 'XL';
      isSelected2XL = size == '2XL';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Center(
                child: Image.asset(
                  'assets/belgium_jersey.jpg',
                  height: 400,
                  width: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    SizeButton(
                      size: 'S',
                      isSelected: isSelectedS,
                      onPressed: () {
                        _selectSize('S');
                      },
                    ),
                    SizeButton(
                      size: 'M',
                      isSelected: isSelectedM,
                      onPressed: () {
                        _selectSize('M');
                      },
                    ),
                    SizeButton(
                      size: 'L',
                      isSelected: isSelectedL,
                      onPressed: () {
                        _selectSize('L');
                      },
                    ),
                    SizeButton(
                      size: 'XL',
                      isSelected: isSelectedXL,
                      onPressed: () {
                        _selectSize('XL');
                      },
                    ),
                    SizeButton(
                      size: '2XL',
                      isSelected: isSelected2XL,
                      onPressed: () {
                        _selectSize('2XL');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundColor: Colors.red, radius: 4),
                SizedBox(width: 4),
                CircleAvatar(backgroundColor: Colors.grey, radius: 4),
                SizedBox(width: 4),
                CircleAvatar(backgroundColor: Colors.grey, radius: 4),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Belgium EURO',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Text(
            '20/21 Away by Adidas',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Rate(
                iconSize: 35,
                color: Colors.red,
                allowHalf: true,
                initialValue: 4.0,
                readOnly: true,
              ),
              const SizedBox(width: 8),
              const Text('4.0',
                  style: TextStyle(fontSize: 22, color: Colors.white)),
              const SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          if (quantity > 1) quantity--;
                        });
                      },
                    ),
                    Text(
                      '$quantity',
                      style: const TextStyle(fontSize: 16),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Material: Polyester',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'Shipping: In 5 to 6 Days',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'Returns: Within 20 Days',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  '\$89',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
