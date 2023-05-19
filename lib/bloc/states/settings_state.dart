import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/game_colors.dart';
import '../../models/player.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    required Player whitePlayer,
    required Player blackPlayer,
    required int difficulty,
  }) = _SettingsState;

  bool get hasAI => !whitePlayer.isHuman || !blackPlayer.isHuman;

  Player getPlayerByColor(GameColors color) {
    switch (color) {
      case GameColors.white:
        return whitePlayer;
      case GameColors.black:
        return blackPlayer;
    }
  }
}
