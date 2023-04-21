import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/search_screen/presentation/ui/filter_dialogue.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {

  final TextEditingController queryController = TextEditingController();

  final BoxDecoration appBarDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.8),
        spreadRadius: 1,
        blurRadius: 3,
        offset: const Offset(0, 5), // changes position of shadow
      ),
    ],
  );

  final InputDecoration searchTextFieldDecoration = const InputDecoration(
    contentPadding: EdgeInsets.all(3),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
    ),
    hintText: "Cari",
    prefixIcon: Icon(Icons.search_outlined),
  );


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appBarDecoration,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 16,
                left: 16,
                right: 16,
              ),
              child: TextField(
                controller: queryController,
                decoration: searchTextFieldDecoration,
                onChanged: (value) {
                },
                onEditingComplete: () {
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext ctx) {
                    return const FilterDialogue();
                  },
                );
              },
              child: Text(
                "Filters",
                style: AppTextStyles.poppinsBold(
                  fontSize: 16,
                  color: AppColors.primary,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
