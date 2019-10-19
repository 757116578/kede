<?php
# 通过type来区别数据库操作的类型：
# type = add  添加
# type = del  删除
# type = clear 清理
# type = update 更新
# type = get    获取
header("Content-type:text/html;charset=utf-8");
$db = mysqli_connect("127.0.0.1", "root", "", "kede");
$type = $_REQUEST["type"];
if($type == "add")
{
  $good_id = $_REQUEST["good_id"];

  /* 检查之前是否存在对应的数据，如果存在那么就修改num值，如果不存在那么就插入数据 */
  $sql = "SELECT * FROM cart WHERE good_id = $good_id";
  $result = mysqli_query($db,$sql);
  // echo json_encode($result);
  if(mysqli_num_rows($result) == 0)
  {
    /* 往数据库表中新增一条数据 */
    $sql = "INSERT INTO `cart` (`cart_id`, `good_id`, `num`) VALUES (NULL, $good_id, 1)";
  }else{
    /* 更新数据 */
    $sql = "UPDATE `cart` SET `num`= `num`+ 1 WHERE `good_id`=$good_id";
  }
  $res = mysqli_query($db,$sql);
  echo json_encode(array("status"=>"success"));
  
}elseif($type == "get"){

  /* 查询数据库-cart表中所有的数据，并按照店铺来进行分类 */
  $resData = array("status"=>"success","data"=>array());
  $sql = "SELECT cart.*,liebiao.p2,liebiao.src,liebiao.p1 FROM cart , liebiao WHERE cart.good_id = liebiao.good_id";
  mysqli_query($db, "set names 'utf8'");
  $data = mysqli_fetch_all(mysqli_query($db, $sql), MYSQLI_ASSOC);
 
  echo json_encode($data,true);
}elseif($type == "update")
{
  $sign = $_REQUEST["flag"];
  $good_id = $_REQUEST["good_id"];

  if($sign == "plus"){
    $plusSql = "UPDATE `cart` SET `num`= `num`+ 1 WHERE `good_id`=$good_id";
    mysqli_query($db,$plusSql);
  }elseif($sign == "reduce"){
    $reduceSql = "UPDATE `cart` SET `num`= `num`- 1 WHERE `good_id`=$good_id";
    mysqli_query($db,$reduceSql);
  }
  echo json_encode(array("status"=>"success"), true);
}elseif($type == "del")
{
  $good_id = $_REQUEST["good_id"];
  $delSql = "DELETE FROM `cart` WHERE good_id = $good_id";
  mysqli_query($db, $delSql);
  echo json_encode(array("status" => "success"), true);
}

#   清空操作 $removeSql = "TRUNCATE table `cart`";
#   删除操作 $delSql = "DELETE FROM `cart` WHERE good_id = $good_id";
?>