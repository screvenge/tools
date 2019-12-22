<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>差异对比小工具</title>
    <link rel="stylesheet" href="/gift/css/bootstrap.css">
    <script src="/gift/js/jquery-3.1.1.js"></script>
    <script src="/gift/js/bootstrap.js"></script>
    <script type="text/javascript" src="/gift/js/jquery.tmpl.js"></script>
	<style type="text/css">
			.inputDiv {
				  float: left;
			}
			div{
            	padding-left : 440px;
        	}
	</style>
</head>
<body>
	<table id="texts">
		<tr>
			<td>
				<textarea name="text1" style="width:500px;height:1000px;" id="text1" class="form-control">
			    </textarea>
			</td>
			<td>
				<textarea name="text2" style="width:500px;height:1000px;" id="text2" class="form-control">
	            </textarea>  	
			</td>
		</tr>
    </table>
    <div id="generate">
    <input class="btn btn-success" type="button" value="生成差异比较内容" onclick="showDiff()" />
    </div>
</body>
<script type="text/javascript" charset="utf-8">
	function showDiff() {
		if (null == document.getElementById("text1").value || null == document.getElementById("text2").value) {
			alert("内容不能为空");
			return;
		}
		var text1 = document.getElementById("text1").value.trim();
		var text2 = document.getElementById("text2").value.trim();
		
		var req = {"text1" : text1, "text2" : text2};
		
		$.ajax({
			type : "post",
			url : "/gift/api/index",
			cache : false,
			dataType : "json",
			data : JSON.stringify(req),
			contentType : "application/json;charset=utf-8",
 			success : function(data) {
 				$("#texts").empty();
 				var diff = "<table class='table'><tr><td>" + data.data + "</td></tr></table>";
 				$("#texts").append(diff);
 				
 				$("#generate").empty();
 				var ret = '<input class="btn btn-success" type="button" value="返回" onclick="returnIndex()" />';
 				$("#generate").append(ret);
		    }
		})
	}
	
	function returnIndex() {
		window.location.href = "index.jsp";
	}
</script>
</html>
