# Game Brief: FinalBoss

**Date:** 2026-03-08
**Author:** Garvash
**Status:** Finalized for GDD Development

---

## Executive Summary
**「プレイヤーがラスボス」**となり、王国の低予算プロジェクトから送り込まれる無数の「低予算勇者」を、カジノや手続きといった**「イカサマ工作（ミニゲーム）」**で足止めし、自らの破滅（終末）を1秒でも長く遅らせる、皮肉と中毒性に満ちた1画面完結型のリソース管理・妨害ゲーム。

---

## Game Vision

### Core Concept
勇者を「イカサマ」で足止めし、終末を遅らせる魔王のカジノ経営シミュレーション。

### Elevator Pitch
勇者は英雄ではなく、王国の「数打ちゃ当たる」低予算リソースだ！プレイヤーは魔王（CEO）となり、超近代的なオフィスビル（カジノ）で勇者たちを娯楽で骨抜きにする。Pro Gamer Manager風のミニゲームで「イカサマ」を成功させて時間を稼げ。ただし失敗し続ければ、勇者は「伝説の剣」を手に入れて君の玉座を破壊するだろう。

### Vision Statement
「摩擦による防衛」という斬新なコンセプトを通じ、1日という短期間で最高の「手触り（Juice）」と、皮肉の効いた「王国の官僚主義」への風刺を体験させる。

---

## Target Market

### Primary Audience
短時間で遊べる中毒性の高いゲームを好むカジュアルゲーマー、および「Among Us」や「放置ゲーム」のファン。

### Secondary Audience
メタフィクションやゲーム業界の風刺を好むゲーマー、ゲームジャム参加者。

### Market Context
「プレイヤーが悪役」という人気ジャンルに、「カジノ/オフィス経営」と「イカサマ工作」というユニークな組み合わせで差別化を図る。

---

## Game Fundamentals

### Core Gameplay Pillars
1. **イカサマのスリル (Thrill of Rigging):** リスク管理とタイミングの重要性。
2. **KISS原則 (Keep It Simple):** 1画面、1メインループへの徹底的な集中。
3. **風刺적カタルシス (Satirical Catharsis):** 勇者を「養分」として扱う優越感。

### Primary Mechanics
- **Pro Gamer Manager風ミニゲーム:** 流れてくる「勇者の幸運アイコン」をクリック/ドラッグで「イカサマ（外れ）」に書き換える。
- **リスク蓄積システム:** ミニゲームの失敗が続くと、勇者の「伝説の剣」入手確率が上昇。
- **施設アップグレード:** 奪ったゴールドでカジノの誘惑度（足止め時間）を強化。

### Player Experience Goals
「ふっ、計算通りだ（イカサマ成功）」という狡猾な喜びと、「やばい、伝説の剣が出た！（失敗）」という絶望的な焦り。

---

## Scope and Constraints

### Target Platforms
PC (Windows) / Web (Itch.io)

### Development Timeline
1日 (24時間) のゲームジャム期間。

### Budget Considerations
ゼロ予算。フリーアセット (Kenney) の活用。

### Team Resources
ソロ開発 (Garvash + BMad Master)。

### Technical Constraints
Godot Engineを使用。シングルシーン構成によるメモリ・管理コストの最小化。

---

## Reference Framework

### Inspiration Games
- **Pro Gamer Manager:** ミニゲームのUI操作。
- **Among Us:** 短時間タスクの緊張感。
- **Dungeon Keeper:** 悪役視点。

### Competitive Analysis
既存のタワーディフェンスは「倒す」ことが目的だが、本作は「時間を無駄にさせる」ことが目的である点が最大の差異。

### Key Differentiators
- **「負けさせるカジノ」:** 敵を殺すのではなく、依存させて帰らせる。
- **「逆転の緊張感」:** 自分のミスが敵をパワーアップさせるという直接的な因果関係。

---

## Content Framework

### World and Setting
超近代的なオフィスビル「魔王ビル」。

### Narrative Approach
セリフやカットシーンを排し、UIテキストと状況証拠だけで「低予算勇者コンペ」の世界観を語る。

### Content Volume
- 1つのメインフロア（カジノ）。
- 1種類の基本ミニゲーム（複数のバリエーション）。
- 1〜3種類の勇者クラス。

---

## Art and Audio Direction

### Visual Style
KenneyのUI/1-Bit/Pixel Artアセットを活用した、クリーンかつサイバーなビジュアル。

### Audio Style
カジノの喧騒（SE）、ミニゲーム成功/失敗時の明確な音効。

### Production Approach
アセットの自作を避け、既存アセットの「配置」と「プログラミング」に全リソースを投入。

---

## Risk Assessment

### Key Risks
1日という期間内で、ゲームバランスの調整が間に合わない可能性。

### Technical Challenges
GodotのUI（Controlノード）を多用することによる、複雑なレイアウト管理。

### Market Risks
「1画面」が単調に見え、プレイヤーがすぐに飽きてしまう可能性。

### Mitigation Strategies
- **Juice (演出):** 画面の揺れ、パーティクル、発光エフェクトで視覚的な満足度を高める。
- **KISS原則:** 余計な機能は徹底的に削る。

---

## Success Criteria

### MVP Definition
1. ミニゲームが機能する。
2. 勇者が進行し、イカサマで遅延できる。
3. ゲームオーバーとスコアが表示される。

### Success Metrics
ゲームジャムでのプレイ回数、および「中毒性がある」というフィードバックの獲得。

### Launch Goals
Itch.ioでの公開、10件以上の評価。

---

## Next Steps

### Immediate Actions
1. Kenney UIアセットのインポート。
2. Godotでのミニゲーム・プロトタイプの作成（3時間以内）。

### Research Needs
- Godot 4系でのドラッグ＆ドロップ実装の最新プラクティス。

### Open Questions
- 勇者が「帰る（離脱）」演出をどのように表現するか？

---

## Appendices

### A. Research Summary
2026-03-08のブレインストーミング結果より：
「使い捨ての正義」と「摩擦による防衛」の融合。オフィスビルでのカジノ運営。

### B. Stakeholder Input
開発者Garvashの「KISS原則」と「公平性」への強い要望。操作性のわかりやすさを最優先。

### C. References
- Kenney.nl Assets (UI, Pixel Art)
- Pro Gamer Manager (Gameplay reference)

---

_This Game Brief serves as the foundational input for Game Design Document (GDD) creation._

_Next Steps: Use the `workflow gdd` command to create detailed game design documentation._
