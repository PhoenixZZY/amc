<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：库存管理 > 
            <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'vendors.jsp', '', '')">供应商管理
        </caption>
        <thead>
            <tr>
                <th>供应商编号</th>
                <th>供应商名称</th>
                <th>联系人</th>
                <th>联系电话</th>
                <th>邮箱</th>
                <th>联系地址</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>亚克西零件厂</td>
                <td>阿布都沙拉木</td>
                <td>16612341234</td>
                <td>yakexi@gmail.com</td>
                <td>新疆塔克拉玛干12号</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#vendor-edit">编辑&nbsp</a>
                    <a href="#">&nbsp删除</a>
                </td>
            </tr>
            <tr>
                <td>002</td>
                <td>北京理工大学附属机械制造公司</td>
                <td>王总</td>
                <td>13011112222</td>
                <td>123456@bit.edu.cn</td>
                <td>北京海淀</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#vendor-edit">编辑&nbsp</a>
                    <a href="#">&nbsp删除</a>
                </td>
            </tr>
        </tbody>
    </table>

    <div class="row">
        <a href="#" class="link-update" data-toggle="modal" data-target="#vendor-create">
            <span class="fa fa-plus">添加新供应商</span>
        </a>
    </div>
</div>


<!-- 供应商编辑窗体 -->
<div class="modal fade" id="vendor-edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">编辑供应商</h4>
                </div>
                <div class="modal-body">
                    <form id="" method="post" name="add" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-id" class="col-xs-3 control-label">供应商名称：</label>
                            <div class="col-xs-6">
                                <input type="text" id="vendor-name" name="vendor-name" class="form-control" placeholder="40字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-xs-3 control-label">联系人：</label>
                            <div class="col-xs-6">
                                <input type="text" id="linkman" name="linkman" class="form-control" placeholder="20字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">联系电话：</label>
                            <div class="col-xs-6">
                                <input type="text" id="telephone" name="telephone" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">邮箱：</label>
                            <div class="col-xs-6">
                                <input type="text" id="email" name="email" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">联系地址：</label>
                            <div class="col-xs-6">
                                <input type="text" id="address" name="address" class="form-control" placeholder="40字符以内">
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


<!-- 添加新供应商窗体 -->
<div class="modal fade" id="vendor-create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加新供应商</h4>
                </div>
                <div class="modal-body">
                    <form id="" method="post" name="add" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-id" class="col-xs-3 control-label">供应商名称：</label>
                            <div class="col-xs-6">
                                <input type="text" id="vendor-name" name="vendor-name" class="form-control" placeholder="40字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-xs-3 control-label">联系人：</label>
                            <div class="col-xs-6">
                                <input type="text" id="linkman" name="linkman" class="form-control" placeholder="20字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">联系电话：</label>
                            <div class="col-xs-6">
                                <input type="text" id="telephone" name="telephone" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">邮箱：</label>
                            <div class="col-xs-6">
                                <input type="text" id="email" name="email" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">联系地址：</label>
                            <div class="col-xs-6">
                                <input type="text" id="address" name="address" class="form-control" placeholder="40字符以内">
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