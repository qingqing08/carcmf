<?php /*a:2:{s:72:"D:\phpStudy\PHPTutorial\WWW\car\application\admin\view\banner\index.html";i:1583288820;s:71:"D:\phpStudy\PHPTutorial\WWW\car\application\admin\view\block\layui.html";i:1565145386;}*/ ?>
<table id="dataTable" lay-filter="dataTable"></table>

<script src="/static/js/layui/layui.js?v=<?php echo config('hisiphp.version'); ?>"></script>
<script>
    var ADMIN_PATH = "<?php echo htmlentities($_SERVER['SCRIPT_NAME']); ?>", LAYUI_OFFSET = 60;
    layui.config({
    	base: '/static/system/js/',
        version: '<?php echo config("hisiphp.version"); ?>'
    }).use('global');
</script>

<script type="text/html" id="statusTpl">
    <input type="checkbox" name="status" value="{{ d.status }}" lay-skin="switch" lay-filter="switchStatus" lay-text="正常|关闭" {{ d.status == 1 ? 'checked' : '' }} data-href="<?php echo url('statusRole'); ?>?id={{ d.id }}">
</script>

<script type="text/html" title="操作按钮模板" id="buttonTpl">
    <a href="<?php echo url('edit'); ?>?id={{ d.id }}" class="layui-btn layui-btn-xs layui-btn-normal j-iframe-pop" hisi-data="{width: '750px', height: '570px'}">修改</a>
    <a href="<?php echo url('del'); ?>?id={{ d.id }}" class="layui-btn layui-btn-xs layui-btn-danger j-tr-del">删除</a>
</script>

<script type="text/html" id="toolbar">
    <div class="layui-btn-group fl">
        <a href="<?php echo url('add'); ?>" class="layui-btn layui-btn-primary layui-btn-sm layui-icon layui-icon-add-circle-fine j-iframe-pop" hisi-data="{width: '750px', height: '570px'}">&nbsp;添加</a>
        <a data-href="<?php echo url('del'); ?>" class="layui-btn layui-btn-primary layui-btn-sm j-page-btns confirm layui-icon layui-icon-close red">&nbsp;删除</a>
    </div>
</script>
<script src="/static/js/jquery.2.1.4.min.js"></script>
<!--<script src="/warehouse/hisiphp/public/static/js/jquery.2.1.4.min.js"></script>-->

<script type="text/javascript">
    layui.use(['table'], function() {
        var table = layui.table;
        table.render({
            elem: '#dataTable'
            ,url: '<?php echo url(); ?>' //数据接口
            ,page: true //开启分页
            ,skin: 'row'
            ,even: true
            ,text: {
                none : '暂无相关数据'
            }
            ,toolbar: '#toolbar'
            ,defaultToolbar: ['filter']
            ,cols: [[ //表头
                {type:'checkbox'}
                ,{title: '操作', templet: '#buttonTpl' , width:150}
                ,{field: 'name', title: '食材名称' , width:150}
                ,{field: 'image', title: '食材图' , width:150}
                ,{field: 'warehouse_id', title: '所属分区' , width:150}
                ,{field: 'category_id', title: '分类' , width:150}
                ,{field: 'supplier_id', title: '供应商' , width:150}
                ,{field: 'brand_origin', title: '品牌产地' , width:150}
                ,{field: 'specifications', title: '规格' , width:200}
                ,{field: 'price', title: '单价' , width:100 , edit:'text'}
                ,{field: 'min_number', title: '保有量' , width:80}
            ]]
        });

        table.on('edit(dataTable)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段

            $.ajax({
                type:"post",
                url:"up_price",
                data:{ingre_id:data.id,price:value},
                cache:false,
                async:false,
                success:function (res) {
                    if (res.code == 200){
                        layer.msg(data.name +'价格更改为：'+ value + '元');
                    } else {
                        layer.msg(res.msg);
                    }
                }
            })

        });


        layui.form.on("select(label)",function() {
            category = $("#category_id").val();
            // console.log(category);
            $.ajax({
                type:"post",
                url:"get_childs",
                data:{id:category},
                async:false,
                cache:false,
                success:function (res) {
                    // console.log(res);
                    cate_html = '';
                    $(res).each(function (i) {
                        cate_html +="<option value='"+this.id+"'>"+this.name+"</option>";
                    });
                    // console.log(cate_html);
                    $('#category').html(cate_html);
                    layui.form.render('select'); //这个很重要
                }
            });

        })
    });

    function search(){
        var ingre_name = $("#ingre_name").val();
        var category = $("#category").val();

        $.ajax({
            type:"post",
            url:"index",
            data:{ingre_name:ingre_name,category:category},
            cache:false,
            async:false,
            success:function (res) {
                layui.use(['table'], function() {
                    var table = layui.table;
                    table.render({
                        elem: '#dataTable'
                        ,page: true //开启分页
                        ,skin: 'row'
                        ,even: true
                        ,text: {
                            none : '暂无相关数据'
                        }
                        ,toolbar: '#toolbar'
                        ,defaultToolbar: ['filter']
                        ,cols: [[ //表头
                            {type:'checkbox'}
                            ,{title: '操作', templet: '#buttonTpl' , width:150}
                            ,{field: 'name', title: '食材名称' , width:150}
                            ,{field: 'image', title: '食材图' , width:150}
                            ,{field: 'warehouse_id', title: '所属分区' , width:150}
                            ,{field: 'category_id', title: '分类' , width:150}
                            ,{field: 'supplier_id', title: '供应商' , width:150}
                            ,{field: 'brand_origin', title: '品牌产地' , width:150}
                            ,{field: 'specifications', title: '规格' , width:200}
                            ,{field: 'price', title: '单价' , width:100}
                            ,{field: 'min_number', title: '保有量' , width:80}
                        ]]
                        ,data:res.data
                    });

                });
            }
        })
    }
</script>