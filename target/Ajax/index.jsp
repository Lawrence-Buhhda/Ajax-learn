<%--
  Created by IntelliJ IDEA.
  User: 匡熠赢
  Date: 2021/2/11
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <%--    要是JQuery，需要导入，注意点，路径问题--%>
    <script src="${pageContext.request.contextPath}/webjars/jquery/3.3.1-2/jquery.js"></script>
</head>
<body>
<script type="text/javascript">
    function a1() {
        //ajax默认是get请求 ajax可以改成get/post
        $.ajax({
            url: "${pageContext.request.contextPath}/Jquery1/back",
            //这里的name要和形参匹配
            //success：载入成功时回调函数
            //  data：封装了服务器返回的数据
            //  status：状态
            data: {"name": $("#txtName").val()},
            success: function (data, status) {
                console.log($("#txtName").val())
                console.log(data)
                console.log(status)
            }
        })

        //将文本框输入的值
        // $("#txtName").val();
        //发给服务器
        //接收服务器返回的数据
    }
</script>
<%--失去焦点产生事件--%>
用户名：
<input type="text" id="txtName" onblur="a1()">

</body>
</html>
