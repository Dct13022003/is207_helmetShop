function changeTypePassword1() {
    let password1 = document.getElementById('exampleInputPassword');
    password1.type = password1.type == 'text' ? 'password' : 'text';


}
function changeTypePassword2() {
    let password2 = document.getElementById('exampleRepeatPassword');
    password2.type = password2.type == 'text' ? 'password' : 'text';
}


function confirmDelete(event, id) {
    event.preventDefault(); // Ngăn chặn hành động mặc định

    Swal.fire({
        title: 'Bạn có chắc chắn?',
        text: "Bạn sẽ không thể hoàn tác hành động này!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Xóa!',
        cancelButtonText: 'Hủy'
    }).then((result) => {
        if (result.isConfirmed) {

            // Chuyển hướng đến URL nếu người dùng xác nhận

            document.getElementById(id).submit();
        }
    });
}



