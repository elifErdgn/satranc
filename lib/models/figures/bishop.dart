
import '../cell.dart';
import '../cell_calculator.dart';
import '../figure.dart';
import '../figure_types.dart';
import '../game_colors.dart';

class Bishop extends Figure {
  Bishop({required GameColors color, required Cell cell}) : super(color: color, cell: cell, type: FigureTypes.bishop);

  @override
  bool availableForMove(Cell to) {
    if (!super.availableForMove(to)) return false;
    return CellCalculator.hasDiagonalWay(cell, to);
  }
}
