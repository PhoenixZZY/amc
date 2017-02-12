<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：库存管理 > 
            <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'pikingLists.jsp', '', '')">备货单
        </caption>
        <thead>
            <tr>
                <th>备货单编号</th>
                <th>订单编号</th>
                <th>添加时间</th>
                <th>备货单状态</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>001</td>
                <td>2017-2-11 18:30</td>
                <td>已处理</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp开发货单</a>
                </td>
            </tr>
            <tr>
                <td>002</td>
                <td>002</td>
                <td>2017-2-10 10:10</td>
                <td>未处理</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp开发货单</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>


<!-- 备货单详情窗体 -->
<div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">备货单详情</h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <!-- 详情只有一条 -->
                    <caption>备货单详情</caption>
                    <thead>
                        <tr>
                            <th>备货单编号</th>
                            <th>订单编号</th>
                            <th>备货单状态</th>
                            <th>备货单添加时间</th>
                            <th>订单下单时间</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>001</td>
                            <td>已处理</td>
                            <td>2017-2-11 18:30</td>
                            <td>2017-2-11 18:00</td>
                        </tr>
                        

                    </tbody>
                </table>

                <table class="table table-hover">
                    <!-- 产品可以有多条 -->
                    <caption>备货单内容</caption>
                    <thead>
                        <tr>
                            <th>产品编号</th>
                            <th>产品名称</th>
                            <th>产品规格</th>
                            <th>原厂编号</th>
                            <th>备货量</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>曲轴</td>
                            <td>233abc</td>
                            <td>3399</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>连杆</td>
                            <td>666xxx</td>
                            <td>1024</td>
                            <td>40</td>
                        </tr>
                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
</div>


