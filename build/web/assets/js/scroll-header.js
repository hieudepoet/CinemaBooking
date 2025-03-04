document.addEventListener("DOMContentLoaded", function() {
    let headerLower = document.querySelector(".header-lower");
    let containerFluid = document.querySelector(".content-fluid");
    let offsetTop = headerLower.offsetTop; // Lưu vị trí ban đầu của header-lower

    window.addEventListener("scroll", function() {
        if (window.scrollY > offsetTop) {
            headerLower.classList.add("fixed-header");
            containerFluid.style.marginBottom = "50px"; // Giữ khoảng trống khi header cố định
        } else {
            headerLower.classList.remove("fixed-header");
            containerFluid.style.marginBottom = "0"; // Trả lại trạng thái ban đầu
        }
    });
});