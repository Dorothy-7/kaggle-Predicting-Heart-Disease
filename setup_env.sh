#!/bin/bash

# Python環境構築スクリプト

echo "=== Python環境構築を開始します ==="

# Pythonのバージョン確認
echo "Pythonのバージョンを確認中..."
python3 --version

# 仮想環境の作成
echo "仮想環境を作成中..."
python3 -m venv venv

# 仮想環境の有効化
echo "仮想環境を有効化中..."
source venv/bin/activate

# pipのアップグレード
echo "pipをアップグレード中..."
pip install --upgrade pip

# パッケージのインストール
echo "必要なパッケージをインストール中..."
pip install -r requirements.txt

# Jupyterカーネルの登録
echo "Jupyterカーネルを登録中..."
python -m ipykernel install --user --name=diabetes-prediction --display-name "Python (Diabetes Prediction)"

echo "=== 環境構築が完了しました ==="
echo ""
echo "仮想環境を有効化するには:"
echo "  source venv/bin/activate"
echo ""
echo "Jupyter Notebookを起動するには:"
echo "  jupyter notebook"





