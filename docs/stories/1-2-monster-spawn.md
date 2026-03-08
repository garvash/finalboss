# Story 1.2: モンスターの射出

**ID:** 1.2
**Key:** 1-2-monster-spawn
**Epic:** 1 - コア・バトル & 移動 (綱引きメカニクス)
**Status:** ready-for-dev

---

## User Story Statement
**As a** 魔王 (プレイヤー)
**I want to** ゴールドを消費して、右端からモンスターを召喚し、左に向かって進軍させたい
**So that** 攻めてくる勇者を押し返し、玉座を守るための戦力を確保できる

---

## Requirements Context
- **GDD:** ボタンを押すとGoldを消費し、右端からモンスターが湧き、左へ移動する。
- **Architecture:** `BaseUnit` を継承した `Area2D` ベースのモンスター、UIボタンによる生成。
- **Tech Spec:** `UnitSpawner` は手動生成も担当。Goldの減算ロジックを `GameManager` に追加。

---

## Acceptance Criteria
1. [ ] UIに「召喚 (Monster)」ボタンが表示され、クリック可能であること。
2. [ ] ボタンを押した際、現在のゴールドが足りていれば（初期値100、コスト10）、ゴールドを減算してモンスターが生成されること。
3. [ ] 生成されたモンスターは、右端（x=1152付近）から左方向（x軸マイナス）へ一定速度で移動し続けること。
4. [ ] モンスターが画面左端（x=-50付近）に到達した際、自身を消滅（`queue_free`）させること。

---

## Implementation Tasks

### 1. モンスター基盤
- [ ] `res://scripts/units/Monster.gd` の作成 (`BaseUnit` を継承)。左方向への移動（direction = -1.0）を定義。
- [ ] `res://scenes/units/Monster.tscn` (Area2D) の作成。Sprite2D (ColorRect等), CollisionShape2D を含む。

### 2. 経済システム (暫定)
- [ ] `res://scripts/core/GameManager.gd` にゴールド変数 (`gold: int = 100`) を追加。
- [ ] ゴールドを減算する関数 `spend_gold(amount: int) -> bool` を実装。

### 3. UIと召喚ロジック
- [ ] `res://scenes/main.tscn` の UI レイヤーに `Button` (SummonMonster) を追加。
- [ ] ボタン押下時に `GameManager` を通じてゴールドを確認し、`UnitSpawner` にモンスターを生成させる処理を実装。
- [ ] 現在のゴールドを表示する `Label` を UI に追加。

### 4. クリーンアップ
- [ ] モンスターが左端（x < -50）に到達した際に `queue_free()` を呼び出す境界チェックを実装。

---

## Dev Agent Record
- **Context Reference:**
  - docs/stories/1-2-monster-spawn.context.xml
- **Learnings from Previous Story:**
  - **REUSE:** `res://scripts/units/BaseUnit.gd` を継承してモンスターを作成すること。
  - **PATTERN:** `GlobalSignals.gd` を介した疎結合な通信を維持すること。
  - **RENDERER:** Web互換性のため `gl_compatibility` を使用していることに留意。
  - **FIX:** ディレクトリ構造はルート直下の `scripts/` および `scenes/` を使用すること。

---

## File List
- res/scripts/units/Monster.gd
- res/scenes/units/Monster.tscn
- res/scripts/core/GameManager.gd (Modified)
- res/scenes/main.tscn (Modified)

---

## Dev Notes
- **Engine:** Godot 4.3 (gl_compatibility)
- **Constraint:** 物理エンジン (`move_and_slide`) は使用せず、`position.x += speed * delta` で制御を継続。
- **Architecture:** モンスターの召喚コストやゴールドの更新は `GameManager` が一括管理する。

[Source: docs/tech-spec-epic-1.md, docs/game-architecture.md, stories/1-1-hero-spawn-and-march.md]

