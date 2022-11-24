import 'package:real_state_mangament/data/Models/RealState.dart';

String GetOfferDetailsRow({required RealState offer, required String type}) {
  Map offerDtailslist = {
    'type': offer.type.name,
    'area': offer.area.name,
    'offer_type': offer.service.name
  };

  return offerDtailslist['$type'];
}
