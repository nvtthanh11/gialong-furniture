# HƯỚNG DẪN TRIỂN KHAI WEBSITE GIA LONG FURNITURE LÊN GITHUB PAGES & ĐỒNG BỘ CLICKAI

Website showcase nội thất **Gia Long Furniture** đã được xây dựng hoàn chỉnh từ A-Z với:
- **25 sản phẩm tiêu biểu** (5 sản phẩm x 5 danh mục cốt lõi: Bàn Ăn, Ghế Ăn, Sofa, Bàn Trà & Console, Tủ & Kệ TV).
- **Hình ảnh thật 100%**: Trích xuất tự động từ các file Excel gốc (`Product Detail Sheets`), không dùng ảnh mạng giả lập.
- **Dữ liệu chuẩn SOP**: Bao gồm kích thước chi tiết, chất liệu, hướng dẫn bảo quản (Care Guide), bảo hành (SOP 55), chính sách chiết khấu (SOP 57) và quy định đặt cọc 50% (SOP 3, RUL 15).
- **Chuẩn SEO & Tích hợp ClickAI**: Kèm file `sitemap.xml` và `data/products.json` để nhúng trực tiếp vào Knowledge Retrieval của ClickAI.

---

## 🚀 CÁCH 1: XEM VÀ KIỂM TRA NGAY TRÊN MÁY TÍNH (OFFLINE)
Bạn không cần cài đặt bất kỳ phần mềm server phức tạp nào (Node.js hay Python không bắt buộc).
Chỉ cần nhấp đúp trực tiếp vào file:
```bash
open website/index.html
```
Giao diện sẽ hiển thị đầy đủ hình ảnh, giá bán, modal xem chi tiết sản phẩm, lọc theo danh mục ngay lập tức.

---

## 🌐 CÁCH 2: TRIỂN KHAI LÊN GITHUB PAGES MIỄN PHÍ 100%

GitHub Pages là dịch vụ lưu trữ website tĩnh hoàn toàn miễn phí, tốc độ cao, hỗ trợ HTTPS và tên miền riêng.

### Bước 1: Tạo Repository mới trên GitHub
1. Đăng nhập vào [GitHub](https://github.com/).
2. Nhấn nút **New Repository** (Tạo kho lưu trữ mới).
3. Đặt tên Repo: ví dụ `gialong-furniture` (hoặc `zago-showcase`). Chọn chế độ **Public**.
4. Nhấn **Create repository**.

### Bước 2: Đẩy thư mục website lên GitHub
Mở Terminal tại thư mục `website` và chạy lần lượt các lệnh sau:

```bash
cd "website"
git init
git add .
git commit -m "Deploy Gia Long Furniture showcase website with 25 flagship products"
git branch -M main
git remote add origin https://github.com/<tai-khoan-github-cua-ban>/<ten-repo>.git
git push -u origin main
```
*(Hoặc chỉ cần chạy file `./deploy_to_github.sh` đã được tạo sẵn).*

### Bước 3: Kích hoạt GitHub Pages
1. Trên trang GitHub của Repo vừa tạo, vào tab **Settings** -> mục **Pages** (ở cột bên trái).
2. Tại phần **Build and deployment** -> **Source**: Chọn `Deploy from a branch`.
3. Tại phần **Branch**: Chọn nhánh `main` và thư mục `/ (root)`.
4. Nhấn **Save**.
5. Đợi khoảng 1-2 phút, GitHub sẽ cấp cho bạn một đường link website miễn phí trọn đời dạng:
   👉 `https://<tai-khoan-github-cua-ban>.github.io/<ten-repo>/`

---

## 🤖 CÁCH 3: LIÊN KẾT WEBSITE VÀ ĐỒNG BỘ KHO VÀO CLICKAI STUDIO

Sau khi website đã lên sóng (hoặc dùng đường dẫn `products.json`):

### 1. Nạp Kiến Thức Sản Phẩm (Knowledge Base)
1. Vào **ClickAI Studio** -> Chọn mục **Cơ sở kiến thức (Knowledge Base)** -> Nhấn **Tạo mới (Create)**.
2. Chọn hình thức **Đồng bộ từ Website (Sync from Web)**:
   - Dán URL sitemap: `https://<ten-repo>.github.io/<ten-repo>/sitemap.xml`
   - ClickAI sẽ tự động đọc toàn bộ 25 sản phẩm cùng chi tiết thông số kích thước, vật liệu, giá bán.
3. Hoặc chọn hình thức **Tải tệp lên (Upload Document)**:
   - Tải file `website/data/products.json` hoặc các bảng CSV trong thư mục `CLICK_AI_DATA_PACKAGE/AI_TABLES/` lên.
4. Chọn chế độ phân đoạn: **Phân đoạn phân cấp (Hierarchical)** hoặc **Hỏi-Đáp (Q&A)** để bot trả lời nhanh và chính xác nhất.

### 2. Nhúng Chatbot ClickAI vào Website
1. Trong ClickAI Studio -> Vào Chatbot / Agent bán hàng -> Chọn tab **Tổng quan (Overview)** -> **Nhúng vào trang web (Embedded)**.
2. Sao chép đoạn mã script iframe hoặc floating chat widget.
3. Dán vào ngay trước thẻ `</body>` trong file `website/index.html`.
4. Khách hàng khi vào website sẽ có thể trò chuyện trực tiếp với Trợ lý ảo AI của Gia Long Furniture 24/7!
