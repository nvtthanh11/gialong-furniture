#!/bin/bash
# ==============================================================================
# SCRIPT TỰ ĐỘNG ĐẨY WEBSITE LÊN GITHUB PAGES CHO GIA LONG FURNITURE
# ==============================================================================

echo "=========================================================="
echo "🚀 BẮT ĐẦU QUY TRÌNH TRIỂN KHAI WEBSITE GIA LONG FURNITURE"
echo "=========================================================="

# Kiểm tra git đã được cài đặt chưa
if ! command -v git &> /dev/null
then
    echo "❌ Git chưa được cài đặt trên máy. Vui lòng cài Git hoặc tải file thủ công lên GitHub."
    exit 1
fi

cd "$(dirname "$0")"

# Khởi tạo git nếu chưa có
if [ ! -d ".git" ]; then
    echo "📦 Khởi tạo Git repository..."
    git init
    git branch -M main
fi

# Thêm tất cả các file
git add .
git commit -m "Deploy Gia Long Furniture showcase: 25 flagship products + Excel images + ClickAI sync feed"

echo ""
echo "✅ Đã commit các file website vào Git thành công!"
echo ""
echo "👉 BƯỚC TIẾP THEO:"
echo "1. Tạo một repository mới trên GitHub (ví dụ: gialong-furniture) ở chế độ PUBLIC."
echo "2. Chạy lệnh liên kết remote và đẩy code (thay bằng URL repo của bạn):"
echo "   git remote add origin https://github.com/<USERNAME>/<REPO_NAME>.git"
echo "   git push -u origin main"
echo ""
echo "3. Vào Settings -> Pages trên GitHub -> Chọn 'Deploy from branch main' -> Save."
echo "Website của bạn sẽ hoạt động hoàn toàn miễn phí sau 1 phút!"
echo "=========================================================="
