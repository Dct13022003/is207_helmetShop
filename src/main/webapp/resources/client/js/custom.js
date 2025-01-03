document.getElementById('search_input').addEventListener('keydown', function (event) {
    if (event.key === 'Enter') {
        event.preventDefault(); // Ngăn form submit mặc định
        handleSearch();
    }
});

document.getElementById('btn-searchButton').addEventListener('click', function (event) {
    event.preventDefault(); // Ngăn form submit mặc định
    handleSearch();
});

function handleSearch() {
    const searchInput = document.getElementById('search_input').value.trim(); // Lấy giá trị input
    if (searchInput) {
        const currentUrl = window.location.href.split('?')[0]; // Lấy URL gốc
        const newUrl = `${currentUrl}?name=${encodeURIComponent(searchInput)}`; // Tạo query string
        window.location.href = newUrl; // Chuyển hướng URL
    } else {
        alert('Vui lòng nhập từ khóa tìm kiếm.');
    }
}
document.addEventListener("DOMContentLoaded", function () {
    // Lắng nghe sự kiện click trên tất cả các phần tử có class 'option' trong nice-select
    const options = document.querySelectorAll('.nice-select .option');

    options.forEach(function (option) {
        option.addEventListener('click', function () {
            // Lấy giá trị của thuộc tính 'data-value' từ phần tử được chọn
            const selectedDataValue = option.getAttribute('data-value');
            const currentUrl = new URL(window.location.href);
            currentUrl.searchParams.set("sort", selectedDataValue);
            window.location.href = currentUrl.href;
        });
    });
});


 $('.quantity button').on('click', function () {
        let change = 0;

        var button = $(this);
        var oldValue = button.parent().parent().find('input').val();
        if (button.hasClass('btn-plus')) {
            var newVal = parseFloat(oldValue) + 1;
            change = 1;
        } else {
            if (oldValue > 1) {
                var newVal = parseFloat(oldValue) - 1;
                change = -1;
            } else {
                newVal = 1;
            }
        }
        const input = button.parent().parent().find('input');
        input.val(newVal);

        //set form index
        const index = input.attr("data-cart-detail-index")
        const el = document.getElementById(`cartDetails${index}.quantity`);
        $(el).val(newVal);



        //get price
        const price = input.attr("data-cart-detail-price");
        const id = input.attr("data-cart-detail-id");

        const priceElement = $(`p[data-cart-detail-id='${id}']`);
        if (priceElement) {
            const newPrice = +price * newVal;
            priceElement.text(formatCurrency(newPrice.toFixed(2)) + " đ");
        }

        //update total cart price
        const totalPriceElement = $(`p[data-cart-total-price]`);

        if (totalPriceElement && totalPriceElement.length) {
            const currentTotal = totalPriceElement.first().attr("data-cart-total-price");
            let newTotal = +currentTotal;
            if (change === 0) {
                newTotal = +currentTotal;
            } else {
                newTotal = change * (+price) + (+currentTotal);
            }

            //reset change
            change = 0;

            //update
            totalPriceElement?.each(function (index, element) {
                //update text
                $(totalPriceElement[index]).text(formatCurrency(newTotal.toFixed(2)) + " đ");

                //update data-attribute
                $(totalPriceElement[index]).attr("data-cart-total-price", newTotal);
            });
        }
    });

    function formatCurrency(value) {
        // Use the 'vi-VN' locale to format the number according to Vietnamese currency format
        // and 'VND' as the currency type for Vietnamese đồng
        const formatter = new Intl.NumberFormat('vi-VN', {
            style: 'decimal',
            minimumFractionDigits: 0, // No decimal part for whole numbers
        });

        let formatted = formatter.format(value);
        // Replace dots with commas for thousands separator
        formatted = formatted.replace(/\./g, ',');
        return formatted;
    }



