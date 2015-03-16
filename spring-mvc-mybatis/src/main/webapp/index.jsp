<%@ page import="java.text.MessageFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<% 
	String pattern = (80 == request.getServerPort())? "{0}://{1}{2}": "{0}://{1}:{3,number,#####}{2}";
	String basePath = MessageFormat.format(pattern,	request.getScheme(), request.getServerName(),	request.getContextPath(), request.getServerPort());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-usd"></i> <span></span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding table-responsive">
				<table id="example"	class="table table-bordered table-striped table-hover table-heading table-datatable">
					<thead>
						<tr style="font-size: 10px;">
							<th>姓名</th>
							<th>密码</th>
							<th>年龄</th>
						</tr>
					</thead>
					<tbody></tbody>
					<tfoot>
						<tr style="font-size: 10px">
							<th>姓名</th>
							<th>密码</th>
							<th>年龄</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>
 <!-- <script type="text/javascript" src="http://cdn.datatables.net/1.9.4/js/jquery.dataTables.min.js"></script> -->

<script type="text/javascript">
var _url = '<%=basePath%>/user/showUser.html';
 
 function skyTable() {
	$('#example').dataTable( { 
		"processing": true,
        "serverSide": true,		//开启服务器端分页
        "order":[[2, "desc"]],  //默认排序方式， 从0开始第三列（2） 降序“desc”
		"ajax":_url,
		/* "scrollY": "disabled",	//Y轴在页面内拉到最大 */
		"lengthMenu": [[10, 25, 50, 100], [10, 25, 50, 100]],
		"scrollCollapse": true,
		"paging": true,
		"dom": '<"top">rflt<"bottom"ip>',
		/* "dom": '<"top">rpflt<"bottom"ip><"clear">', */
		"dataType": "json",
		 "oLanguage": {
             "sLengthMenu": "_MENU_",
             "sZeroRecords": "抱歉， 没有找到",
             "sSearch" : "搜索",
             "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
             "sInfoEmpty": "没有数据",
             /* "sInfoFiltered": "(从 _MAX_ 条数据中检索)", */
             "sInfoFiltered": "",
             "oPaginate": {
                 "sFirst": "首页",
                 "sPrevious": "前一页",
                 "sNext": "后一页",
                 "sLast": "尾页"
             },
             "search":{
            	 "regex":true
             }
             
	/* ,"data":{find:$(input[name=find]).val()} */
		}
	});
}

 function AllTables(){
	skyTable();
	LoadSelect2Script(MakeSelect2);
}
 
function MakeSelect2(){
	$('select').select2();
	$('.dataTables_filter').each(function(){
		$(this).find('label input[type=text]').attr('placeholder', 'Search');
	});
}

$(document).ready(function() {
	LoadDataTablesScripts(AllTables);
	WinMove();
});

</script>
