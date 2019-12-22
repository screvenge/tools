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
	<table>
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
    <div>
    <input id="generate" class="btn btn-success" type="button" value="生成差异比较内容" onclick="showDiff()" />
    </div>
</body>
<script type="text/javascript" charset="utf-8">
	function showDiff() {
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
 				
			}
		})
	}

</script>
</html>
