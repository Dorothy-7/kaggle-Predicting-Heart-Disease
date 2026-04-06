# 機械学習ポートフォリオ

データ分析・機械学習の実装力と改善プロセスを示すためのポートフォリオです。  
特に、Kaggle形式の二値分類タスクでの特徴量設計、ハイパーパラメータ最適化、アンサンブル改善を強みとしています。

## 強み

- 問題設定に合わせた特徴量設計と前処理
- Optunaを用いたCatBoost/LightGBM/XGBoostの改善サイクル
- ブレンド比率の比較実験によるスコア向上

## 代表プロジェクト

### 1. Heart Disease Prediction（Kaggle形式）

- プロジェクト: `projects/heart-disease-kaggle`
- タスク: 患者データから心疾患有無を予測する二値分類
- 手法: CatBoost + Optuna + 複数提出のブレンド
- 結果: Public Score `0.9538` 台、Private Score `0.9552` 台を複数提出で安定達成

詳細は `projects/heart-disease-kaggle/README.md` を参照してください。

## 使用技術

- 言語: Python
- データ処理: pandas, numpy
- 機械学習: scikit-learn, CatBoost, LightGBM, XGBoost, Optuna
- 可視化: matplotlib, seaborn
- 開発環境: Jupyter Notebook

## ディレクトリ構成

```text
.
├── data/
│   ├── raw/                        # 元データ
│   ├── interim/                    # 中間データ
│   └── processed/                  # 前処理済みデータ
├── notebooks/
│   ├── 01_eda/                     # 探索的分析
│   ├── 02_baseline/                # ベースライン実験
│   ├── 03_feature/                 # 特徴量検証
│   ├── 04_tuning/                  # 最適化・多seed実験
│   └── 05_ensemble/                # ブレンド・アンサンブル
├── src/
│   ├── data/
│   ├── features/
│   ├── models/
│   ├── training/
│   └── utils/
├── outputs/
│   ├── submissions/                # 提出CSV
│   │   └── archive/                # 過去提出
│   ├── oof/                        # OOF予測
│   ├── models/                     # 学習済みモデル
│   └── logs/                       # 実行ログ
├── reports/
│   ├── figures/
│   └── leaderboard/                # スコア画像
├── projects/
│   └── heart-disease-kaggle/       # 採用向け説明ページ
└── resume.md
```

## 今後の改善予定

- 推論確率の校正（Platt scaling / Isotonic）比較
- 擬似ラベル戦略の再検証
- 特徴量重要度とSHAPによる説明性の強化
