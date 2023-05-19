
import '../cell.dart';
import '../cell_calculator.dart';
import '../figure.dart';
import '../figure_types.dart';
import '../game_colors.dart';

class Rook extends Figure {
  Rook({required GameColors color, required Cell cell}) : super(color: color, cell: cell, type: FigureTypes.rook);

  @override
  bool availableForMove(Cell to) {
    if (!super.availableForMove(to)) return false;
    return CellCalculator.hasWayForRook(cell, to);
  }
}
