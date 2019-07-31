<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ajax案例</title>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#btn').click(function(){
		$.post("json.do",function(data){
			var html="";
			for(var i=0;i<data.length;i++){
				html+="<tr><td>"+data[i].id+"</td><td>"+data[i].name+"</td><td>"+data[i].age+"</td></tr>"
			}
			$("#content").html(html);
		});
	});
});
</script>
</head>
<body>
<button id="btn">异步获取数据信息</button>
<table width="80%" align="center">
	<tr>
		<td>编号</td>
		<td>姓名</td>
		<td>年龄</td>
	</tr>
<tbody id="content"></tbody>
</table>
</body>
</html>