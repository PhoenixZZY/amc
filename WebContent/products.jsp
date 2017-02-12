<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：库存管理 > 
            <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'products.jsp', '', '')">产品管理
        </caption>
        <thead>
            <tr>
                <th>产品编号</th>
                <th>产品名称</th>
                <th>售价</th>
                <th>库存量</th>
                <th>安全库存</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>曲轴</td>
                <td>100</td>
                <td>200</td>
                <td>30</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp开再订货通知&nbsp</a>
                    <a href="#">&nbsp删除</a>
                </td>
            </tr>
            <tr>
                <td>002</td>
                <td>连杆</td>
                <td>150</td>
                <td>220</td>
                <td>40</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp开再订货通知&nbsp</a>
                    <a href="#">&nbsp删除</a>
                </td>
            </tr>
        </tbody>
    </table>

    <div class="row">
        <a href="#" class="link-update" data-toggle="modal" data-target="#product-create">
            <span class="fa fa-plus">添加新产品</span>
        </a>
    </div>
</div>


<!-- 产品详情窗体 -->
<div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">产品详情</h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <caption>产品详情</caption>
                    <thead>
                        <tr>
                            <th>产品编号</th>
                            <th>产品名称</th>
                            <th>产品规格</th>
                            <th>原厂编号</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>曲轴</td>
                            <td>233abc</td>
                            <td>3399</td>
                        </tr>
                        

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<!-- 添加新产品窗体 -->
<div class="modal fade" id="product-create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加新产品</h4>
                </div>
                <div class="modal-body">
                    <form id="" method="post" name="add" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-id" class="col-xs-3 control-label">产品名称：</label>
                            <div class="col-xs-6">
                                <input type="text" id="product-name" name="product-name" class="form-control" placeholder="20字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-xs-3 control-label">产品规格：</label>
                            <div class="col-xs-6">
                                <input type="text" id="specification" name="specification" class="form-control" placeholder="12字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">原厂编号：</label>
                            <div class="col-xs-6">
                                <input type="text" id="original-id" name="original-id" class="form-control" placeholder="12字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">售价：</label>
                            <div class="col-xs-6">
                                <input type="text" id="price" name="price" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">库存量：</label>
                            <div class="col-xs-6">
                                <input type="text" id="stock" name="stock" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">售价：</label>
                            <div class="col-xs-6">
                                <input type="text" id="safety-stock" name="safety-stock" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="container-center">
                            <input type="submit" value="添加" id="submit" name="submit" class="btn submit_btn btn--warning float_l" />
                            <input type="reset" value="重置" id="reset" name="reset" class="btn submit_btn float_r" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>