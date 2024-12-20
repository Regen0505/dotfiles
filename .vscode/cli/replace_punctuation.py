"""
latexのファイルにおいて、句読点をカンマ・ピリオドに変換するスクリプト
latex workshopの拡張機能を使って、ビルド時に実行することを想定
"""

import sys


def replace_punctuation(file_path):
    with open(file_path + ".tex", "r+", encoding="utf-8") as file:
        text = file.read()
        text = text.replace("、", "，").replace("。", "．")
        file.seek(0)
        file.write(text)
        file.truncate()


if __name__ == "__main__":
    replace_punctuation(sys.argv[1])
