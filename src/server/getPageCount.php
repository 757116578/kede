<?php
# 01-先连接数据库
$db = mysqli_connect("127.0.0.1", "root", "", "kede");

# 02-查询获取数据库所有的数据
$sql = "SELECT * FROM liebiao";
mysqli_query($db, "set names 'utf8'");
$result = mysqli_query($db, $sql);
$count = ceil(mysqli_num_rows($result) / 20);
echo '{"count":'.$count."}";
?>