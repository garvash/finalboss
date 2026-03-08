# Story 1.1: 勇者の生成と行進

**ID:** 1.1
**Key:** 1-1-hero-spawn-and-march
**Epic:** 1 - コア・バトル & 移動 (綱引きメカニクス)
**Status:** drafted

---

## User Story Statement
**As a** ゲーム開発者 (魔王)
**I want to** 左端の町から勇者を自動的に出現させ、右端の玉座に向かって行進させたい
**So that** ゲームの基本的な脅威と防衛目標を確立できる

---

## Requirements Context
- **GDD:** 勇者は左から右へ移動し、玉座到達で敗北。
- **Architecture:** `Area2D` ベースの移動、`GlobalSignals` によるイベント通知。
- **Tech Spec:** `UnitSpawner` による自動生成、`BaseUnit` 継承による移動実装。

---

## Acceptance Criteria
1. [ ] 左端の指定座標から、設定された間隔（デフォルト3秒）で勇者が自動生成される。
2. [ ] 生成された勇者が、右方向（x軸プラス）へ一定速度で移動し続ける。
3. [ ] 勇者が右端の判定ライン（玉座）に接触または超過した際、`GlobalSignals.hero_reached_throne` が発火する。
4. [ ] シグナル発火後、UIに「Game Over」が表示され、ゲームの進行が停止する。

---

## Implementation Tasks

### 1. ユニット基盤
- [ ] `res://scripts/units/BaseUnit.gd` の作成。移動速度と基本 `_process` ロジックの実装。
- [ ] `res://scenes/units/Hero.tscn` (Area2D) の作成。Sprite2D, CollisionShape2D を含む。

### 2. 勇者のロジック
- [ ] `res://scripts/units/Hero.gd` の作成 (`BaseUnit` を継承)。右方向への移動を定義。
- [ ] 境界判定ロジックの実装。右端到達時にシグナルを発火。

### 3. スパウナーとメインシーン
- [ ] `res://scenes/main.tscn` に `Spawner` ノードを追加。
- [ ] 一定間隔で `Hero.tscn` をインスタンス化するタイマー処理を実装。
- [ ] 玉座到達時の「Game Over」UI（暫定的な Label 等）の作成。

### 4. シグナル連携
- [ ] `res://scripts/core/GlobalSignals.gd` に `hero_reached_throne` を追加。
- [ ] `res://scripts/core/GameManager.gd` で上記シグナルをリッスンし、UIを表示。

---

## Dev Notes
- **Engine:** Godot 4.6.1 (Stable)
- **Pattern:** `GlobalSignals` を介した疎結合通信を徹底すること。
- **Physics:** `move_and_slide` は使用せず、`position.x += speed * delta` で制御する。

[Source: docs/tech-spec-epic-1.md, docs/game-architecture.md]
