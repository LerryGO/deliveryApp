import 'package:bloc/bloc.dart';
import 'package:dw9_delivery_app/app/pages/order/order_state.dart';

import '../../dto/order_product_dto.dart';

class OrderController extends Cubit<OrderState> {
  OrderController() : super(const OrderState.initial());

  void load(List<OrderProductDto> products) {
    emit(state.copyWith(orderProducts: products));
  }
}
