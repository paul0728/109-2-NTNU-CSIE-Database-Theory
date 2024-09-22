<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>學生資料庫管理系統</title>
</head>

<body>
<h1 align="center">修改學生資料</h1>
	<form action="doupdate.php" method="post">	
	  <table width="500" border="1" bgcolor="#cccccc" align="center">
		<tr>
		  <th>姓名</th>
		  <td bgcolor="#FFFFFF"><input type="text" name="StuName" value="" /></td>
		</tr>
		 <tr>
		  <th>學號 <input type="hidden" name="id" value="" /></th>
		  <td bgcolor="#FFFFFF"><input type="text" name="StuNum" value="" /></td>
		</tr>
		<tr>
		  <th>密碼</th>
		  <td bgcolor="#FFFFFF"><input type="text" name="passwd" value="" /></td>
		</tr>
		<tr>
		  <th>性別</th>
			<td bgcolor='#FFFFFF'><input  type='radio' name='gender' value='1' checked>男 </input> <input type='radio' name='gender' value='0'>女 </input>
		<tr>
		  <th colspan="2"><input type="submit" value="更新"/></th>
		</tr>
	  </table>
	</form>
</body>
</html>