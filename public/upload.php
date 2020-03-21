<?php
// 上传文件进行简单错误过滤
if ($_FILES['userfile']['error'] > 0) {
    exit("上传文件有错".$_FILES['userfile']['error']);
}

// 定义存放上传文件的真实路径
$path = './upload/';
// 定义存放上传文件的真实路径名字
$name = $_FILES['userfile']['name'];

// 将文件的名字的字符编码从UTF-8转成GB2312
$name = iconv("UTF-8", "GB2312", $name);

// 将上传文件移动到指定目录文件中
if (move_uploaded_file($_FILES['userfile']['tmp_name'], $path.$name)) {
    echo "文件上传成功";
} else {
    echo "文件上传失败";
}
?>