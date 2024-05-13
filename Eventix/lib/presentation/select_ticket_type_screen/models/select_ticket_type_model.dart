import 'package:Eventix/core/app_export.dart';
import 'tickettype_item_model.dart';

class SelectTicketTypeModel {
  RxList<TickettypeItemModel> tickettypeItemList = RxList([
    TickettypeItemModel(
        title: 'Regular', price: '${Constants.currency} 10', counter: 1.obs),
  ]);
}
