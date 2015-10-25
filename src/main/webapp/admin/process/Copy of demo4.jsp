<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>流程定义</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/flowinc.jsp" %>
<script type="text/javascript">
	$(function() {
		$('#myflow')
				.myflow(
						{
							basePath : "",
							restore : eval("({states:{rect4:{type:'start',text:{text:'开始'}, attr:{ x:409, y:10, width:50, height:50}, props:{text:{value:'开始'},temp1:{value:''},temp2:{value:''}}},rect5:{type:'task',text:{text:'任务1'}, attr:{ x:386, y:116, width:100, height:50}, props:{text:{value:'任务1'},assignee:{value:''},form:{value:''},desc:{value:''}}},rect6:{type:'fork',text:{text:'分支'}, attr:{ x:410, y:209, width:50, height:50}, props:{text:{value:'分支'},temp1:{value:''},temp2:{value:''}}},rect7:{type:'task',text:{text:'任务2'}, attr:{ x:192, y:317, width:100, height:50}, props:{text:{value:'任务2'},assignee:{value:''},form:{value:''},desc:{value:''}}},rect8:{type:'task',text:{text:'任务3'}, attr:{ x:385, y:317, width:100, height:50}, props:{text:{value:'任务3'},assignee:{value:''},form:{value:''},desc:{value:''}}},rect9:{type:'task',text:{text:'任务4'}, attr:{ x:556, y:320, width:100, height:50}, props:{text:{value:'任务4'},assignee:{value:''},form:{value:''},desc:{value:''}}},rect10:{type:'join',text:{text:'合并'}, attr:{ x:410, y:416, width:50, height:50}, props:{text:{value:'合并'},temp1:{value:''},temp2:{value:''}}},rect11:{type:'end',text:{text:'结束'}, attr:{ x:409, y:633, width:50, height:50}, props:{text:{value:'结束'},temp1:{value:''},temp2:{value:''}}},rect12:{type:'task',text:{text:'任务5'}, attr:{ x:384, y:528, width:100, height:50}, props:{text:{value:'任务5'},assignee:{value:''},form:{value:''},desc:{value:''}}}},paths:{path13:{from:'rect4',to:'rect5', dots:[],text:{text:'TO 任务1'},textPos:{x:37,y:-4}, props:{text:{value:''}}},path14:{from:'rect5',to:'rect6', dots:[],text:{text:'TO 分支'},textPos:{x:56,y:-1}, props:{text:{value:''}}},path15:{from:'rect6',to:'rect8', dots:[],text:{text:'TO 任务3'},textPos:{x:24,y:-5}, props:{text:{value:''}}},path16:{from:'rect8',to:'rect10', dots:[],text:{text:'TO 合并'},textPos:{x:41,y:8}, props:{text:{value:''}}},path17:{from:'rect10',to:'rect12', dots:[],text:{text:'TO 任务5'},textPos:{x:36,y:-5}, props:{text:{value:''}}},path18:{from:'rect12',to:'rect11', dots:[],text:{text:'TO 结束'},textPos:{x:32,y:0}, props:{text:{value:''}}},path19:{from:'rect6',to:'rect7', dots:[{x:244,y:232}],text:{text:'TO 任务2'},textPos:{x:0,y:-10}, props:{text:{value:'TO 任务2'}}},path20:{from:'rect7',to:'rect10', dots:[{x:242,y:435}],text:{text:'TO 合并'},textPos:{x:-3,y:17}, props:{text:{value:'TO 合并'}}},path21:{from:'rect6',to:'rect9', dots:[{x:607,y:234}],text:{text:'TO 任务4'},textPos:{x:0,y:-10}, props:{text:{value:'TO 任务4'}}},path22:{from:'rect9',to:'rect10', dots:[{x:607,y:439}],text:{text:'TO 合并'},textPos:{x:-8,y:16}, props:{text:{value:'TO 合并'}}}},props:{props:{name:{value:'新建流程'},key:{value:''},desc:{value:''}}}})"),
							tools : {
								save : {
									onclick : function(data) {
										alert('save:\n' + data);
									}
								}
							}
						});

	});
</script>
<style type="text/css">
body {
	margin: 0;
	pading: 0;
	text-align: left;
	font-family: Arial, sans-serif, Helvetica, Tahoma;
	font-size: 12px;
	line-height: 1.5;
	color: black;
	background-image: url(${pageContext.request.contextPath}/jslib/myflow-min/img/bg.png);
}

.node {
	width: 70px;
	text-align: center;
	vertical-align: middle;
	border: 1px solid #fff;
}

.mover {
	border: 1px solid #ddd;
	background-color: #ddd;
}

.selected {
	background-color: #ddd;
}

.state {
	
}

#myflow_props table {
	
}

#myflow_props th {
	letter-spacing: 2px;
	text-align: left;
	padding: 6px;
	background: #ddd;
}

#myflow_props td {
	background: #fff;
	padding: 6px;
}

#pointer {
	background-repeat: no-repeat;
	background-position: center;
}

#path {
	background-repeat: no-repeat;
	background-position: center;
}

#task {
	background-repeat: no-repeat;
	background-position: center;
}

#state {
	background-repeat: no-repeat;
	background-position: center;
}
</style>

  </head>
  
  <body>
    <div id="myflow_tools"
	style="position: absolute; top: 10; left: 10; background-color: #fff; width: 70px; cursor: default; padding: 3px;"
	class="ui-widget-content">
<div id="myflow_tools_handle" style="text-align: center;"
	class="ui-widget-header">工具集</div>


<div class="node" id="myflow_save"><img src="${pageContext.request.contextPath}/jslib/myflow-min/img/save.gif" />&nbsp;&nbsp;保存</div>
<div>
<hr />
</div>
<div class="node selectable" id="pointer"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/select16.gif" />&nbsp;&nbsp;选择</div>
<div class="node selectable" id="path"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/flow_sequence.png" />&nbsp;&nbsp;转换</div>
<div>
<hr />
</div>
<div class="node state" id="start" type="start"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/start_event_empty.png" />&nbsp;&nbsp;开始</div>
<div class="node state" id="state" type="state"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/task_empty.png" />&nbsp;&nbsp;状态</div>
<div class="node state" id="task" type="task"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/task_empty.png" />&nbsp;&nbsp;任务</div>
<div class="node state" id="fork" type="fork"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/gateway_parallel.png" />&nbsp;&nbsp;分支</div>
<div class="node state" id="join" type="join"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/gateway_parallel.png" />&nbsp;&nbsp;合并</div>
<div class="node state" id="end" type="end"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/end_event_terminate.png" />&nbsp;&nbsp;结束</div>
<div class="node state" id="end-cancel" type="end-cancel"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/end_event_cancel.png" />&nbsp;&nbsp;取消</div>
<div class="node state" id="end-error" type="end-error"><img
	src="${pageContext.request.contextPath}/jslib/myflow-min/img/16/end_event_error.png" />&nbsp;&nbsp;错误</div>
</div>

<div id="myflow_props"
	style="position: absolute; top: 30; right: 50; background-color: #fff; width: 220px; padding: 3px;"
	class="ui-widget-content">
<div id="myflow_props_handle" class="ui-widget-header">属性</div>
<table border="1" width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td>aaa</td>
	</tr>
	<tr>
		<td>aaa</td>
	</tr>
</table>
<div>&nbsp;</div>
</div>

<div id="myflow">

</div>

  </body>
</html>