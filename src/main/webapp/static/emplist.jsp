<%@page pageEncoding="UTF-8" contentType="text/html; UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="./js/jquery-3.3.1.min.js"></script>
		<script>
			$(function () {
				$.post(
				    "/emp/findAll",
					function (result) {
                        console.log(result);
                        var a = 1;
                        $.each(result,function (i,emp) {
                            if(a>0){
								a=-1;
                                var $tr = $("<tr class='row1'/>");
                            }else {
                                a=1;
                                var $tr = $("<tr class='row2'/>");
							}
                            var $idtd = $("<td/>").text(emp.id);
                            var $nametd = $("<td/>").text(emp.name);
                            var $pricetd = $("<td/>").text(emp.price);
                            var $createtimetd = $("<td/>").text(emp.createtime);
                            var $sextd = $("<td/>").text(emp.sex);
                            var $opetd = $("<td/>");
                            var $upd = $("<button onclick='javascript:upd("+emp.id+")'/>").text("修改");
                            var $del = $("<button onclick='javascript:del("+emp.id+")'/>").text("删除");
                            $opetd.append($upd).append($del);
                            $tr.append($idtd).append($nametd).append($pricetd).append($createtimetd).append($sextd).append($opetd);
                            $("#tab").append($tr);
                        })
                    },
					"JSON"
				);
            })
			function upd(id) {
				alert("修改"+id);
            }
			function del(id) {
				alert("删除"+id);
            }
		</script>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						<p>
							2009/11/20 
							<br />
							安全退出
						</p>
					</div>
					<div id="topheader">
						<h1 id="title">
							<a href="#">main</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						Welcome!
					</h1>
					<table class="table" id="tab">
						<tr class="table_header">
							<td>
								ID
							</td>
							<td>
								Name
							</td>
							<td>
								Salary
							</td>
							<td>
								CreateTime
							</td>
							<td>
								Sex
							</td>
							<td>
								Operation
							</td>
						</tr>
					</table>
					<p>
						<input type="button" class="button" value="Add Employee" onclick="location='addEmp.jsp'"/>
					</p>
				</div>
				<a href="">1</a>
				<a href="">2</a>
				<a href="">3</a>
			</div>
			<div id="footer">
				<div id="footer_bg">
				ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
