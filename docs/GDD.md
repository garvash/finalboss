# FinalBoss - Game Design Document

**Author:** Garvash
**Game Type:** Strategy (Fixed Screen / Idle-Incremental)
**Target Platform(s):** PC (Windows) / Web (Itch.io)

---

## Executive Summary

### Core Concept
プレイヤーが魔王（CEO）となり、超近代的なオフィスビル（カジノ）で、押し寄せる「低予算勇者」たちをイカサマ工作（ミニゲーム）で足止めし、自らの破滅（終末）を1秒でも長く遅らせるリソース管理・妨害ゲーム。

### Target Audience
短時間で遊べる中毒性を好むカジュアルゲーマー、Among Usや放置ゲームのファン、ゲームジャム参加者。

### Unique Selling Points (USPs)
- **「負けさせるカジノ」**: 敵を倒すのではなく、娯楽に依存させて時間を奪う逆転の発想。
- **「イカサマの自己責任」**: 敵のパワーアップ（伝説の剣）は、純粋な運ではなくプレイヤーの操作ミスから生じる。
- **「逆方向の行進」**: 奪ったGoldでモンスターを逆走させ、勇者を物理的に押し返す直感的なビジュアル。

---

## Goals and Context

### Project Goals
1. 1日（24時間）以内での完成とItch.io公開。
2. KISS原則（機能を絞り込み、手触りを磨く）の維持。
3. Godot 4のUI（Controlノード）とアニメーション機能の習熟。

### Background and Rationale
「プレイヤーがラスボス」というテーマに対し、従来の戦闘ではなく「官僚主義と娯楽による遅延」という皮肉なアプローチで、開発コストを抑えつつ高い独創性を狙う。

---

## Core Gameplay

### Game Pillars
1. **イカサマのスリル (Thrill of Rigging)**: リスクを冒してリソースを稼ぐ緊張感。
2. **KISS原則 (Keep It Simple)**: 1画面、1メインループへの徹底的な集中。
3. **風刺的カタルシス (Satirical Catharsis)**: 勇者を「養分」として管理する優越感。

### Core Gameplay Loop
1. **監視 (Observe)**: 勇者の進行状況と「幸運アイコン」の流れを監視。
2. **介入 (Intervene)**: アイコンを操作して「イカサマ」を実行し、Goldを獲得。
3. **管理 (Manage Risk)**: 操作ミスによるリスク蓄積（伝説の剣確率）を制御。
4. **再投資 (Reinvest)**: 獲得Goldでモンスターを召喚し、勇者を物理的に押し返す。
5. **生存 (Survive)**: 1秒でも長く玉座を守り抜く。

### Win/Loss Conditions
- **勝利**: 設定された目標生存時間を超える、または目標金額を稼ぎ出す。
- **敗北**: 勇者が最深部（画面右端）の玉座に到達し、破壊される。

---

## Game Mechanics

### Primary Mechanics
- **Pro Gamer Manager風ミニゲーム**: 画面下のトレイに流れるアイコンをクリック/ドラッグで消去・上書き。
- **モンスター行進システム**: ボタン入力でGoldを消費し、魔王城から町へ向かって歩くユニットを射出。
- **摩擦（フリクション）ロジック**: 勇者とモンスターが接触すると、互いに一定時間足を止め、耐久値がなくなると消滅。

### Controls and Input
- **マウス**: アイコンの操作、モンスター召喚ボタンのクリック。
- **キーボード (1, 2, 3)**: モンスター召喚のショートカットキー。

---

## Strategy Specific Elements

### Resource Systems
- **Gold**: 勇者から奪った資金。モンスター召喚に使用。
- **Luck Meter**: プレイヤーのミスで蓄積。100%になると次の勇者が「伝説の剣」を装備（高速・妨害無効）。
- **Time**: 生存スコア。

### Unit Types and Stats
- **勇者 (Hero)**: 左から右へ移動。タイプにより速度と「幸運アイコン」の流速が変化。
- **モンスター (Monster)**: 右から左へ移動。
    - **スケルトン**: 安価、低耐久。
    - **ゴーレム**: 高価、高耐久（足止め特化）。

### Map and Terrain
- **Fixed Screen**: 左に「町（勇者湧き）」、中央に「通路」、右に「魔王城（玉座）」。

---

## Progression and Balance

### Player Progression
セッション内のインクリメンタルな強化。奪ったGoldで施設をレベルアップし、勇者の基本足止め時間を増加させる。

### Difficulty Curve
生存時間が長くなるほど、勇者の出現頻度と「ベテラン勇者（アイコン高速）」の割合が増加。

---

## Art and Audio Direction

### Art Style
Kenney UI/1-Bit/Pixel Art。サイバーパンク風のクリーンなオフィス・カジノビジュアル。

### Audio and Music
カジノのジャックポット音（皮肉な高音）、ミニゲーム失敗時のエラー音、軽快だがどこか不穏なBGM。

---

## Technical Specifications
- **Engine**: Godot 4.x
- **Architecture**: 1画面シングルシーン、シグナルベースのUI連携。

---

## Success Metrics
- **Technical**: 60FPS維持、1日以内のビルド成功。
- **Gameplay**: 「もう一回」と思わせるリトライ性の高さ。

---

## Out of Scope
- オンラインマルチプレイ。
- 3Dグラフィックス。
- 複雑なストーリー分岐。

---

## Assumptions and Dependencies
- Kenneyアセットの即時利用可能性。
- Godot 4のControlノードによるレイアウト管理の容易さ。
