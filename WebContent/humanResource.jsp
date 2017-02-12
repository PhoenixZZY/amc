<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：
        	<a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'humanResource.jsp', '', '')">人事管理</a>
        </caption>
        <thead>
            <tr>
                <th>用户名</th>
                <th>真实姓名</th>
                <th>职务</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ztfdog</td>
                <td>张腾夫</td>
                <td>总经理</td>
                <td><a href="#" class="link-update" data-toggle="modal" data-target="#user-update">修改&nbsp</a><a href="#">&nbsp删除</a></td>
            </tr>
            <tr>
                <td>用户2</td>
                <td>姓名2</td>
                <td>职务2</td>
                <td><a href="#" class="link-update" data-toggle="modal" data-target="#user-update">修改&nbsp</a><a href="#">&nbsp删除</a></td>
            </tr>
            <tr>
                <td>用户3</td>
                <td>姓名3</td>
                <td>职务3</td>
                <td><a href="#" class="link-update" data-toggle="modal" data-target="#user-update">修改&nbsp</a><a href="#">&nbsp删除</a></td>
            </tr>
            <tr>
                <td>用户4</td>
                <td>姓名4</td>
                <td>职务4</td>
                <td><a href="#" class="link-update" data-toggle="modal" data-target="#user-update">修改&nbsp</a><a href="#">&nbsp删除</a></td>
            </tr>
        </tbody>
    </table>

    <div class="row">
		<a href="#" class="link-update" data-toggle="modal" data-target="#user-create">
			<span class="fa fa-plus">增加新用户</span>
		</a>
    </div>
</div>





<!-- 修改用户窗体 -->
<div class="modal fade" id="user-update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
                </div>
                <div class="modal-body">
                    <form id="" method="post" name="add" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-id" class="col-xs-3 control-label">用户名：</label>
                            <div class="col-xs-6">
                                <input type="text" id="user-id" name="user-id" class="form-control" placeholder="12英文或数字以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-xs-3 control-label">真实姓名：</label>
                            <div class="col-xs-6">
                                <input type="text" id="name" name="name" class="form-control" placeholder="12字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">职务：</label>
                            <div class="col-xs-6">
                                <select id="position" name="position" class="form-control">
                                    <option value ="">总经理</option>
                                    <option value ="">人事管理</option>
                                    <option value ="">销售管理</option>
                                    <option value ="">库存管理</option>
                                    <option value ="">采购管理</option>
                                    <option value ="">财务管理</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="intro" class="col-xs-3 control-label">密码：</label>
                            <div class="col-xs-6">
                                <input type="password" id="password" name="password" class="form-control" placeholder="12字符以内">
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


<!-- 增加新用户窗体 -->
<div class="modal fade" id="user-create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="post">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">添加新用户</h4>
                </div>
                <div class="modal-body">
                    <form id="" method="post" name="add" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-id" class="col-xs-3 control-label">用户名：</label>
                            <div class="col-xs-6">
                                <input type="text" id="user-id" name="user-id" class="form-control" placeholder="12英文或数字以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-xs-3 control-label">真实姓名：</label>
                            <div class="col-xs-6">
                                <input type="text" id="name" name="name" class="form-control" placeholder="12字符以内">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="position" class="col-xs-3 control-label">职务：</label>
                            <div class="col-xs-6">
                                <select id="position" name="position" class="form-control">
                                    <option value ="">总经理</option>
                                    <option value ="">人事管理</option>
                                    <option value ="">销售管理</option>
                                    <option value ="">库存管理</option>
                                    <option value ="">采购管理</option>
                                    <option value ="">财务管理</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="intro" class="col-xs-3 control-label">密码：</label>
                            <div class="col-xs-6">
                                <input type="password" id="password" name="password" class="form-control" placeholder="12字符以内">
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