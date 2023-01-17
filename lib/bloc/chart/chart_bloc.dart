import 'package:bloc/bloc.dart';
import 'package:nike_store_app/bloc/chart/chart_event.dart';
import 'package:nike_store_app/bloc/chart/chart_state.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  ChartBloc() : super(ProductAdded(chartItem: []));

  final List<int> _chartItems = [];
  List<int> get items => _chartItems;

  @override
  Stream<ChartState> mapEventToState(ChartEvent event) async* {
    if (event is AddProduct) {
      _chartItems.add(event.productIndex);
      yield ProductAdded(chartItem: _chartItems);
    }
  }
}