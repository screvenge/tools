<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
</head>
<body>
	<h1>添加商品页面</h1>
	<form class="form-horizontal" role="form" method="post" action="cart">
  <div class="form-group">
    <label for="pid" class="col-sm-2 control-label">编号</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="pid" placeholder="请输入商品编号" name="pid">
    </div>
  </div>
  <div class="form-group">
    <label for="pname" class="col-sm-2 control-label">商品名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="pname" placeholder="请输入商品名" name="pname">
    </div>
  </div>
 <div class="form-group">
    <label for="price" class="col-sm-2 control-label">商品价格</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="price" placeholder="请输入商品价格" name="price">
    </div>
  </div>
   <div class="form-group">
    <label for="price" class="col-sm-2 control-label">商品数量</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="price" placeholder="请输入商品数量" name="quantity">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">添加到购物车</button>
    </div>
  </div>
</form>
</body>
</html>