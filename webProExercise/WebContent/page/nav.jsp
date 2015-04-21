<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	<div class="tabbable" id="tabs-423748">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#panel-169683" data-toggle="tab">表配置</a></li>
			<li><a href="#panel-639409" data-toggle="tab">字段配置</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="panel-169683">
				<p>
					<jsp:include page="configTable.jsp"></jsp:include>
				</p>
			</div>
			<div class="tab-pane" id="panel-639409">
				<p>
					<jsp:include page="configField.jsp"></jsp:include>
				</p>
			</div>
		</div>
	</div>
</body>
</html>