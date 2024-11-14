import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expense_repository/expense_repository.dart';

part 'get_expenses_event.dart';
part 'get_expenses_state.dart';

class GetExpensesBloc extends Bloc<GetExpensesEvent, GetExpensesState> {
  ExpenseRepository expenseRepository;

  GetExpensesBloc(this.expenseRepository) : super(GetExpensesInitial()) {
    on<GetExpenses>((event, emit) async {
      emit(GetExpensesLoading());
      try {
        // Add timeout to the Firebase request
        List<Expense> expenses = await expenseRepository.getExpenses().timeout(
          const Duration(seconds: 10),
          onTimeout: () {
            throw Exception('Request timed out');
          },
        );
        emit(GetExpensesSuccess(expenses));
      } catch (e) {
        // Optionally log the error for debugging

        emit(GetExpensesFailure());
      }
    });
  }
}
