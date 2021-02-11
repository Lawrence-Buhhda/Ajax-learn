<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/webjars/jquery/3.3.1-2/jquery.js"></script>
</head>
<body>
<script type="text/javascript">
   $(function () {
       $("#btn").click(function () {
           $.post("${pageContext.request.contextPath}/Jquery1/back2",function (data) {
               console.log(data);
               var html =""
               for(var i=0;i<data.length;i++){
                   html += "<tr>" + "<td>"
                   data[i].name
                   data[i].age
                   data[i].sex
               }
           })
       })
   })
</script>
用户名：
<input type="button" id="btn" value="获取数据">
<table width="80%" align="center">
    <tr>
        <td>姓名</td>
        <td>年龄</td>
        <td>性别</td>
    </tr>
    <tbody id="content">

    </tbody>
</table>
</body>
</html>
