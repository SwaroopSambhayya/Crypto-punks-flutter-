import 'package:crypto_punk_clone/api/get_punk_data.dart';
import 'package:crypto_punk_clone/models/punk_data.dart';
import 'package:flutter/material.dart';

class PunkModel extends ChangeNotifier {
  List<PunkData> punkList;
  bool isLoading = false;
  PunkData? selectedPunk;
  ScrollController scrollController = ScrollController();

  PunkModel({required this.punkList}) {
    init();
  }

  void init() {
    punkList = [];
    getPunkList();
  }

  setSelectedPunk(PunkData punk) {
    selectedPunk = punk;
    scrollController.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    notifyListeners();
  }

  getPunkList() async {
    isLoading = true;
    notifyListeners();
    punkList = await getPunkData();
    isLoading = false;
    notifyListeners();
    return punkList;
  }
}
