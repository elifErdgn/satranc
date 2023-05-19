
import '../cell.dart';
import '../cell_calculator.dart';
import '../figure.dart';
import '../figure_types.dart';
import '../game_colors.dart';

class Queen extends Figure {
  Queen({required GameColors color, required Cell cell}) : super(color: color, cell: cell, type: FigureTypes.queen);

  @override
  bool availableForMove(Cell to) {
    if (!super.availableForMove(to)) return false;
    return CellCalculator.hasWayForQueen(cell, to);
  }
}
