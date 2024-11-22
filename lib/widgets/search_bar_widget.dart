import 'package:credmoto/widgets/custom_text_search_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent, // Remove o splash
      highlightColor: Colors.transparent, // Remove o highlight
      onTap: () => Get.toNamed('/search-screen'),
      child: const CustomTextSearchField(
        hintText: 'Pesquisar',
        prefixIcon: Icons.search,
        enable: false,
      ),
    );
  }
}