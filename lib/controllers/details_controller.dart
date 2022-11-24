import 'package:get/get.dart';
import 'package:real_state_mangament/data/Models/Image.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsController extends GetxController {
  late RealState offer;
  late List offerImages;
  List<Map> DetialasRow = [
    {'key': 'نوع العرض', 'value': 'offer_type'},
    {'key': 'نوع العقار', 'value': 'type'},
    {'key': 'المنظقه', 'value': 'area'},
  ];
  int selectedindex = 0;
  List intTheImageList(List<Image> images, String mainimage) {
    List<String> imgesList = images.map((imgMap) => imgMap.url).toList();
    imgesList.add(mainimage);
    return List.from(imgesList.reversed);
  }

  updateIndex(int index) {
    print('inside the function ----------------------');
    selectedindex = index;
    print(selectedindex);
    update();
  }

  @override
  void onInit() {
    var offerprammeters = Get.parameters['offer'];
    // _launchWhatsapp();
    offer = realStateFromJson(offerprammeters!);
    offerImages = intTheImageList(offer.images, offer.mainImage);
  }

  launchWhatsapp() async {
    var whatsapp = "+249915477450";
    try {
      final Uri _url = Uri.parse("https://wa.me/${whatsapp}?text=Hello");
      await launchUrl(_url);
    } catch (e) {
      print('jksaa');
    }
  }
}
