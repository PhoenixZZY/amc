<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：财务管理 > 
            <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'accountsReceivable.jsp', '', '')">应收账管理
        </caption>
        <thead>
            <tr>
                <th>应收账编号</th>
                <th>发货单编号</th>
                <th>开单时间</th>
                <th>收款状态</th>
                <th>应收总额</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>001</td>
                <td>2017-2-11 19:50</td>
                <td>已收款</td>
                <td>1750</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp确认收款</a>
                </td>
            </tr>
            <tr>
                <td>002</td>
                <td>002</td>
                <td>2017-2-10 10:55</td>
                <td>未收款</td>
                <td>2500</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp确认收款</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>


<!-- 应收账详情窗体 -->
<div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">应收账详情</h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <caption>应收账详情</caption>
                    <thead>
                        <tr>
                            <th>应收账明细号</th>
                            <th>应收账编号</th>
                            <th>产品名称</th>
                            <th>单价</th>
                            <th>数量</th>
                            <th>该项总额</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>001</td>
                            <td>曲轴</td>
                            <td>100</td>
                            <td>10</td>
                            <td>1000</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>001</td>
                            <td>连杆</td>
                            <td>150</td>
                            <td>5</td>
                            <td>750</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


