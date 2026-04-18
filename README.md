
# 🍣 Sushi App - Flutter Mobile Application

Một ứng dụng đặt món Sushi hiện đại, giao diện tinh tế, được xây dựng bằng Flutter. Ứng dụng cung cấp trải nghiệm chọn món, xem chi tiết và quản lý giỏ hàng mượt mà.

## ✨ Tính năng nổi bật

*   **Intro Page:** Màn hình chào mừng với thiết kế tối giản, ấn tượng.
*   **Menu Page:** Hiển thị danh sách các loại Sushi phong phú với hình ảnh và đánh giá.
*   **Chi tiết món ăn:** Xem thông tin chi tiết, đánh giá và tùy chỉnh số lượng trước khi thêm vào giỏ hàng.
*   **Giỏ hàng (Cart):** Quản lý các món đã chọn, tính tổng tiền và xóa món dễ dàng.
*   **Thông báo thông minh:** Sử dụng `AwesomeDialog` để phản hồi các thao tác người dùng (thêm/xóa món).
*   **Quản lý trạng thái:** Sử dụng `Provider` giúp ứng dụng hoạt động ổn định và hiệu quả.

## 🛠 Công nghệ sử dụng

*   **Framework:** Flutter (Dart)
*   **Quản lý trạng thái:** Provider
*   **Giao diện:** Google Fonts (DM Serif Display), Vanilla CSS-like styling.
*   **Thư viện hỗ trợ:** `awesome_dialog`, `google_fonts`.

## 📸 Ảnh chụp màn hình

| Intro Page | Menu Page | Food Details | Cart Page |
| :--- | :--- | :--- | :--- |
| ![Intro](<img width="378" height="678" alt="image" src="https://github.com/user-attachments/assets/fcc8a832-a918-4578-b08d-bfb839a61689" />
) | ![Menu](<img width="381" height="676" alt="image" src="https://github.com/user-attachments/assets/a6f590f7-6b61-4bbe-ae92-4e0f39fb5082" />
) | ![Details](<img width="378" height="681" alt="image" src="https://github.com/user-attachments/assets/bc8637d1-42c1-4aaa-b013-2bf66562ec6f" />
) | ![Cart](<img width="375" height="676" alt="image" src="https://github.com/user-attachments/assets/763c1917-cc42-47e6-b210-e06ed19fb526" />
) |

## 🚀 Cài đặt và Chạy ứng dụng

1.  **Clone dự án:**
    ```bash
    git clone https://github.com/Huy-Giangg/Sushi_App.git
    ```
2.  **Cài đặt các gói phụ thuộc:**
    ```bash
    flutter pub get
    ```
3.  **Chạy ứng dụng:**
    ```bash
    flutter run
    ```

## 📂 Cấu trúc thư mục

```text
lib/
├── components/ # Các widget dùng chung (Button, Cart Tile...)
├── models/     # Lớp dữ liệu (Sushi object)
├── pages/      # Các màn hình giao diện chính
├── providers/  # Quản lý logic và trạng thái (Cart Provider)
├── theme/      # Định nghĩa màu sắc và phong cách chung
└── main.dart   # Điểm khởi đầu của ứng dụng
```

Bạn thấy nội dung này đã đủ ngắn gọn và súc tích chưa? Cần thêm bớt thông tin gì không?
