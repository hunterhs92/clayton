@echo off
title iframe to qr by @thic_autu
chcp 65001 >nul
if not exist .venv (
    echo Đang tạo biến môi trường...
    python -m venv .venv
)

echo Activating biến môi trường...
call .venv\Scripts\activate

if not exist .venv\Lib\site-packages\installed (
    echo Đang cài đặt thư viện requests...
    pip install requests
) else (
        echo Dependencies đã được cài đặt, bỏ qua việc cài đặt.
    )

python iframe_to_query.py
echo Đã chuyển iframe sang query thành công.
pause

