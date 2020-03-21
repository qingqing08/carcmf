<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>上传文件</title>
    <script type="text/javascript">
        function sub() {
            alert(111);
            var obj = new XMLHttpRequest();
            obj.onreadystatechange = function() {
                if (obj.status == 200 && obj.readyState == 4) {
                    document.getElementById('con').innerHTML = obj.responseText;
                }
            }

            // 通过Ajax对象的upload属性的onprogress事件感知当前文件上传状态
            obj.upload.onprogress = function(evt) {
                // 上传附件大小的百分比
                var per = Math.floor((evt.loaded / evt.total) * 100) + "%";
                // 当上传文件时显示进度条
                document.getElementById('parent').style.display = 'block';
                // 通过上传百分比设置进度条样式的宽度
                document.getElementById('son').style.width = per;
                // 在进度条上显示上传的进度值
                document.getElementById('son').innerHTML = per;
            }

            // 通过FormData收集零散的文件上传信息
            var fm = document.getElementById('userfile3').files[0];
            var fd = new FormData();
            fd.append('userfile', fm);

            obj.open("post", "upload.php");
            obj.send(fd);
        }
    </script>
    <style type="text/css">
        #parent {
            width: 200px;
            height: 20px;
            border: 2px solid gray;
            background: lightgray;
            display: none;
        }
        #son {
            width: 0;
            height: 100%;
            background: lightgreen;
            text-align: center;
        }
    </style>
</head>
<body>
<h2>Ajax实现进度条文件上传</h2>
<div id="parent">
    <div id="son"></div>
</div>
<p id="con"></p>
<input type="file" name="userfile" id="userfile3"><br><br>
<input type="button" name="btn" value="文件上传" οnclick="sub()">
</body>
</html>