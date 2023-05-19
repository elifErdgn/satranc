
import '../cell.dart';
import '../cell_calculator.dart';
import '../figure.dart';
import '../figure_types.dart';
import '../game_colors.dart';

class King extends Figure {
  King({required GameColors color, required Cell cell}) : super(color: color, cell: cell, type: FigureTypes.king);

  @override
  bool availableForMove(Cell to) {
    if (!super.availableForMove(to)) {
      return false;
    }

    return CellCalculator.hasWayForKing(cell, to);
  }
}
