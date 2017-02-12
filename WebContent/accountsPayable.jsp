<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：财务管理 > 
            <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'accountsPayable.jsp', '', '')">应付账管理
        </caption>
        <thead>
            <tr>
                <th>应付账编号</th>
                <th>采购单编号</th>
                <th>开单时间</th>
                <th>付款状态</th>
                <th>发票状态</th>
                <th>应付总额</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>001</td>
                <td>2017-2-11 20:10</td>
                <td>已付款</td>
                <td>已收到</td>
                <td>1750</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp确认付款&nbsp</a>
                    <a href="#" class="link-update">&nbsp确认收到发票</a>
                </td>
            </tr>
            <tr>
                <td>002</td>
                <td>002</td>
                <td>2017-2-10 10:55</td>
                <td>已付款</td>
                <td>未收到</td>
                <td>2500</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp确认付款&nbsp</a>
                    <a href="#" class="link-update">&nbsp确认收到发票</a>
                </td>
            </tr>
            <tr>
                <td>003</td>
                <td>003</td>
                <td>2017-2-9 11:45</td>
                <td>未付款</td>
                <td>未收到</td>
                <td>2800</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                    <a href="#" class="link-update">&nbsp确认付款&nbsp</a>
                    <a href="#" class="link-update">&nbsp确认收到发票</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>


<!-- 应付账详情窗体 -->
<div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">应付账详情</h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <caption>应付账详情</caption>
                    <thead>
                        <tr>
                            <th>应付账明细号</th>
                            <th>应付账编号</th>
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


