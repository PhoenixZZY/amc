<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：销售管理 > 
            <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'orders.jsp', '', '')">订单管理
        </caption>
        <thead>
            <tr>
                <th>订单编号</th>
                <th>顾客姓名</th>
                <th>下单时间</th>
                <th>订单状态</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>张腾夫</td>
                <td>2017-2-11 18:00</td>
                <td>已处理</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#picking">&nbsp开备货单&nbsp</a>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#shortage">&nbsp开缺货单</a>
                </td>
            </tr>
            <tr>
                <td>002</td>
                <td>顾客2</td>
                <td>2017-2-10 10:10</td>
                <td>处理中</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#picking">&nbsp开备货单&nbsp</a>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#shortage">&nbsp开缺货单</a>
                </td>
            </tr>
            <tr>
                <td>003</td>
                <td>顾客3</td>
                <td>2017-2-11 12:30</td>
                <td>未处理</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#picking">&nbsp开备货单&nbsp</a>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#shortage">&nbsp开缺货单</a>
                </td>
            </tr>

        </tbody>
    </table>

    <div class="row">
		<a href="#" class="link-update" data-toggle="modal" data-target="#order-create">
			<span class="fa fa-plus">增加订单</span>
		</a>
    </div>
</div>


<!-- 订单详情窗体 -->
<div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">订单详情</h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <!-- 详情只有一条 -->
                    <caption>订单详情</caption>
                    <thead>
                        <tr>
                            <th>订单编号</th>
                            <th>顾客姓名</th>
                            <th>收货人</th>
                            <th>下单时间</th>
                            <th>订单状态</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>张腾夫</td>
                            <td>夫狗</td>
                            <td>2017-2-11 18:00</td>
                            <td>已处理</td>
                        </tr>
                        

                    </tbody>
                </table>


                <table class="table table-hover">
                    <!-- 产品可以有多条 -->
                    <caption>订单内容</caption>
                    <thead>
                        <tr>
                            <th>产品编号</th>
                            <th>产品名称</th>
                            <th>产品规格</th>
                            <th>原厂编号</th>
                            <th>销售价</th>
                            <th>订购量</th>
                            <th>库存量</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>曲轴</td>
                            <td>233abc</td>
                            <td>3399</td>
                            <td>100</td>
                            <td>50</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>连杆</td>
                            <td>666xxx</td>
                            <td>1024</td>
                            <td>150</td>
                            <td>40</td>
                            <td>220</td>
                        </tr>

                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
</div>


<!-- 添加订单窗体 -->
<div class="modal fade" id="order-create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加新订单</h4>
                </div>
                <div class="modal-body">
                    <form id="" method="post" name="add" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-id" class="col-xs-3 control-label">顾客名：</label>
                            <div class="col-xs-6">
                                <select id="customer-name" name="customer-name" class="form-control">
                                    <option value ="">夫狗</option>
                                    <option value ="">顾客2</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-xs-3 control-label">收货地址：</label>
                            <div class="col-xs-6">
                                <input type="text" id="address" name="address" class="form-control" placeholder="40字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">收货人：</label>
                            <div class="col-xs-6">
                                <input type="text" id="consignee-name" name="consignee-name" class="form-control" placeholder="8字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="intro" class="col-xs-3 control-label">添加产品：</label>
                            <a href="#" class="col-xs-offset-1 btn btn--primary fa fa-plus" onClick="addProduct()"></a>
                        </div>

                        <div class="form-group">
                        
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>产品名称</th>
                                        <th>需求量</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody id="inputWrapper">
                                    <tr id="product-1">
                                        <td>
                                            <select id="product-name" name="product-name" class="form-control">
                                                <option value ="">曲轴</option>
                                                <option value ="">连杆</option>
                                                <option value ="">产品3</option>
                                                <option value ="">产品4</option>
                                                <option value ="">产品5</option>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="text" id="quantity" name="quantity" class="form-control">
                                        </td>
                                        <td>
                                            <a href="#" class="remove fa fa-remove"></a>
                                        </td>
                                    </tr>
                                    

                                </tbody>
                            </table>
                        </div>
                            

                        <div class="container-center">
                            <input type="submit" value="提交" id="submit" name="submit" class="btn submit_btn btn--warning float_l" />
                            <input type="reset" value="重置" id="reset" name="reset" class="btn submit_btn float_r" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>




<!-- 控制逐行添加产品 -->
<script>
    ProductFieldCount=1;
    function addProduct(e)  
    {
        var InputWrapper   = $("#inputWrapper");

        // console.log('pressed');
         
        $(InputWrapper).append('<tr id="product-'+(++ProductFieldCount)+'">\n'+
            '                                        <td>\n'+
            '                                            <select id="product-name" name="product-name" class="form-control">\n'+
            '                                                <option value ="">曲轴</option>\n'+
            '                                                <option value ="">连杆</option>\n'+
            '                                                <option value ="">产品3</option>\n'+
            '                                                <option value ="">产品4</option>\n'+
            '                                                <option value ="">产品5</option>\n'+
            '                                            </select>\n'+
            '                                        </td>\n'+
            '                                        <td>\n'+
            '                                            <input type="text" id="quantity" name="quantity" class="form-control">\n'+
            '                                        </td>\n'+
            '                                        <td>\n'+
            '                                            <a href="#" class="remove">\n'+
            '                                                <span class="fa fa-remove"></span>\n'+
            '                                            </a>\n'+
            '                                        </td>\n'+
            '                                    </tr>');
        
        return false;  
    };  
      
    $("body").on("click",".remove", function(e){
        // console.log('pressed')
        $(this).parent('td').parent('tr').remove();
        return false;  
    })
</script>