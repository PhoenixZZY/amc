<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="tab-content">
    <table class="table table-hover">
        <caption>当前位置：财务管理 > 
            <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'purchaseBills.jsp', '', '')">采购账管理
        </caption>
        <thead>
            <tr>
                <th>采购账编号</th>
                <th>应付账单编号</th>
                <th>采购单号</th>
                <th>采购时间</th>
                <th>总额</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>001</td>
                <td>001</td>
                <td>2017-2-10 18:30</td>
                <td>1750</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                </td>
            </tr>
            <tr>
                <td>002</td>
                <td>002</td>
                <td>003</td>
                <td>2017-2-9 19:20</td>
                <td>2500</td>
                <td>
                    <a href="#" class="link-update" data-toggle="modal" data-target="#detail">查看详情&nbsp</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>


<!-- 采购账详情窗体 -->
<div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">采购账详情</h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <caption>采购账详情</caption>
                    <thead>
                        <tr>
                            <th>采购账明细号</th>
                            <th>采购账编号</th>
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


