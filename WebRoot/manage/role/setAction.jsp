<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="../../commons/head.jsp"%>
<%@ include file="../../commons/js.jsp"%>
<%@ include file="../../commons/dtree.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>新增用户</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<STYLE type=text/css>
{
FONT-SIZE
:
 
12
px


}
#menuTree A {
	COLOR: #566984;
	TEXT-DECORATION: none
}

.STYLE2 {
	font-size: x-large
}
</STYLE>

		<style type="text/css" media="all">
body,div {
	font-size: 12px;
}

.STYLE3 {
	font-size: medium
}
</style>

		<META content="MSHTML 6.00.2900.5848" name=GENERATOR>




	</HEAD>
	<BODY
		style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(${ctx}/manage/images/bg.gif); BACKGROUND-REPEAT: repeat-x">
		<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
			<TBODY>
				<TR>
					<TD width=10 height=29>
						<IMG src="${ctx }/manage/index/Left.files/bg_left_tl.gif">
					</TD>
					<TD
						style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(${ctx}/manage/images/bg_left_tc.gif); COLOR: white; FONT-FAMILY: system">
						分配角色
					</TD>
					<TD width=10>
						<IMG src="${ctx }/manage/index/Left.files/bg_left_tr.gif">
					</TD>
				</TR>
				<TR>
					<TD
						style="BACKGROUND-IMAGE: url(${ctx}/manage/images/bg_left_ls.gif)"></TD>
					<TD id=menuTree
						style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; HEIGHT: 100%; BACKGROUND-COLOR: white"
						vAlign=top></TD>
					<TD
						style="BACKGROUND-IMAGE: url(${ctx}/manage/images/bg_left_rs.gif)"></TD>
				</TR>
				<TR>
					<TD colspan="3"
						style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; HEIGHT: 100%; BACKGROUND-COLOR: white"
						vAlign=top>
						<form name="form1" id="form1" method="post"
							action="${ctx }/manage/role-manage!setActionByRole.action">
							<table width="591" height="453" border="0" align="center">
								<tr>
									<td height="38" colspan="2">
										<div align="center">
											<span class="STYLE2">分配权限</span>
										</div>
									</td>
								</tr>
								<tr>
									<td height="45" colspan="2" align="right">
										<div align="left">
											<span class="STYLE3">权限名:${role.roleName}</span>
											<input type="hidden" name="id" value="${role.id}" />
										</div>
									</td>
								</tr>
								<tr>

									<td height="48" colspan="2" align="right">
										<div align="left" class="STYLE3">
											添加时间:${role.createTime}
										</div>
									</td>
								</tr>
								<tr>
									<td height="23" colspan="2" align="right" valign="top">
										<div align="left" class="STYLE3">
											分配权限：
										</div>
									</td>
								</tr>
								<tr>
									<td height="173" colspan="2" align="right" valign="top">
<div class="dtree" align="left">

<p align="left">
	<a href="javascript: d.openAll();">展开</a> |
	<a href="javascript: d.closeAll();">关闭</a>

<script type="text/javascript">
		<!--
 		
		d = new dTree('d');
		d.add(0,-1,"权限分配");
		<c:forEach items="${moduleList}" var="module" varStatus="s">
			
		   d.add(${module.id}, 0, "<input name='modules' id='${module.id}' type='checkbox'   onClick='checkStatus(this)'>${module.moduleName }");   
		   <c:forEach items="${module.actions}" var="action" varStatus="sf">
					
			d.add(${action.id},${module.id},"<input name='actions' id='${module.id}-${action.id}' type='checkbox' value='${action.id}' <c:forEach items="${role.actions}" var='actionInfo' varStatus='st'><c:if test='${action.id==actionInfo.id }'>checked</c:if></c:forEach>>${action.actionName}");		
												
			</c:forEach>    	
		</c:forEach>
	  	 
		document.write(d);

		//-->
function checkStatus(moduleCheck){

	var id=moduleCheck.id;
    var actions = document.getElementsByName('actions');

    for(var i=0;i<actions.length;i++){
  
    	 if(id==actions[i].id.split("-")[0]){
    	 	
    	   if(moduleCheck.checked){   	 				
    	 		actions[i].checked=true;
    	 	}else{  	 		
    	 		actions[i].checked=false;
    	 	}
    	 }
    }
	
	
}
	</script>
</p>
</div>
			
			<!-- 							<c:forEach items="${moduleList}" var="module" varStatus="s">
											<div align="left">
												${module.moduleName }:
											</div>
											</n>
											<c:forEach items="${module.actions}" var="action"
												varStatus="sf">

												<input name="actions" type="checkbox" value="${action.id}"
<c:forEach items="${role.actions}" var="actionInfo" varStatus="st"><c:if test="${action.id==actionInfo.id }">checked</c:if></c:forEach>>
			        ${action.actionName}
			      
			      <c:if test="${sf.count%6==0}">
													<br />
												</c:if>
											</c:forEach>
											<br />
										</c:forEach>
										
 -->
									</td>
								</tr>

								<tr>
									<td width="148" height="30">&nbsp;
										
									</td>
									<td width="433">
										<input type="submit" name="button" id="button" value="提交" />
									</td>
								</tr>
							</table>
							：
						</form>
					</TD>
				</TR>
				<TR>
					<TD width=10>
						<IMG src="${ctx }/manage/index/Left.files/bg_left_bl.gif">
					</TD>
					<TD
						style="BACKGROUND-IMAGE: url(${ctx}/manage/images/bg_left_bc.gif)"></TD>
					<TD width=10>
						<IMG src="${ctx }/manage/index/Left.files/bg_left_br.gif">
					</TD>
				</TR>

			</TBODY>

		</TABLE>

	</BODY>
</HTML>
