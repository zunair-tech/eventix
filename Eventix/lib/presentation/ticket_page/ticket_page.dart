import '../ticket_page/widgets/ticket_item_widget.dart';
import 'controller/ticket_controller.dart';
import 'models/ticket_item_model.dart';
import 'models/ticket_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TicketPage extends StatelessWidget {
  TicketController controller = Get.put(TicketController(TicketModel().obs));

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        padding: getPadding(left: 24, top: 20, right: 24),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.ticketModelObj.value.ticketItemList.length,
        itemBuilder: (context, index) {
          TicketItemModel model =
              controller.ticketModelObj.value.ticketItemList[index];
          return TicketItemWidget(
            model,
          );
        },
      ),
    );
  }
}
