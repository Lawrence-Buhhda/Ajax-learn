<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/webjars/jquery/3.3.1-2/jquery.js"></script>
    <script>
        function a1() {
            $.post({
                url:"${pageContext.request.contextPath}/Jquery1/back3",
                data:{"name":$("#name").val()},
                success:function (data) {
                    if(data.toString()==='ok'){//信息核对成功
                        $('#userInfo').css("color","green")
                    }else{
                        $('#userInfo').css("color","red")
                    }
                    $("#userInfo").html(data);
                }
            })
        }
        function a2() {
            $.post({
                url:"${pageContext.request.contextPath}/Jquery1/back3",
                data:{"pwd":$("#pwd").val()},
                success:function (data) {
                    if(data.toString()==='ok'){//信息核对成功
                        $('#pwdInfo').css("color","green")
                    }else{
                        $('#pwdInfo').css("color","red")
                    }
                    $("#pwdInfo").html(data);
                }
            })
        }
    </script>
</head>
<body>

<p>
    用户名：
    <input type="text" id="name" onblur="a1()">
    <span id="userInfo"></span>
</p>
<p>
    密码：
    <input type="text" id="pwd" onblur="a2()">
    <span id="pwdInfo"></span>
</p>



</body>
</html>
