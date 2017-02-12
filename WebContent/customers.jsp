<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：销售管理 > 
            <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'customers.jsp', '', '')">顾客管理
        </caption>
        <thead>
            <tr>
                <th>顾客编号</th>
                <th>顾客姓名</th>
                <th>单位名称</th>
                <th>联系电话</th>
                <th>邮箱</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>夫狗</td>
                <td>大运村</td>
                <td>13066666666</td>
                <td>ztfdog@dogmail.com</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#customer-edit">编辑&nbsp</a>
                    <a href="#">&nbsp删除</a>
                </td>
            </tr>
            <tr>
                <td>002</td>
                <td>顾客2</td>
                <td>北航</td>
                <td>15823333333</td>
                <td>6666666@qq.com</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#customer-edit">编辑&nbsp</a>
                    <a href="#">&nbsp删除</a>
                </td>
            </tr>
        </tbody>
    </table>

    <div class="row">
		<a href="#" class="link-update" data-toggle="modal" data-target="#customer-create">
			<span class="fa fa-plus">添加顾客</span>
		</a>
    </div>
</div>


<!-- 顾客编辑窗体 -->
<div class="modal fade" id="customer-edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">修改顾客信息</h4>
                </div>
                <div class="modal-body">
                    <form id="" method="post" name="add" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-id" class="col-xs-3 control-label">顾客姓名：</label>
                            <div class="col-xs-6">
                                <input type="text" id="customer-name" name="customer-name" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-xs-3 control-label">单位名称：</label>
                            <div class="col-xs-6">
                                <input type="text" id="company-name" name="company-name" class="form-control" placeholder="">
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
                        <div class="container-center">
                            <input type="submit" value="修改" id="submit" name="submit" class="btn submit_btn btn--warning float_l" />
                            <input type="reset" value="重置" id="reset" name="reset" class="btn submit_btn float_r" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- 添加顾客窗体 -->
<div class="modal fade" id="customer-create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加顾客</h4>
                </div>
                <div class="modal-body">
                    <form id="" method="post" name="add" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-id" class="col-xs-3 control-label">顾客姓名：</label>
                            <div class="col-xs-6">
                                <input type="text" id="customer-name" name="customer-name" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-xs-3 control-label">单位名称：</label>
                            <div class="col-xs-6">
                                <input type="text" id="company-name" name="company-name" class="form-control" placeholder="">
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


