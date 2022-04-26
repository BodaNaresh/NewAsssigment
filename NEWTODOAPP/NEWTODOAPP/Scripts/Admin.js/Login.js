function Login() {

    let Email = $("#txtEmail").val();
    let Password = $("#txtpassword").val();

    var url = "http://localhost:62045/api/Login/GetCredentials";
    var data = JSON.stringify({
        "Email": Email,
        "Password": Password
    });
    $.ajax({
        type: "POST",
        data: data,
        url: url,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function () {
                window.location.href = "/Admin/Todoitem";
        },
        error: function (error) {
            alert(error);
        },
    });

}
       