<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<c:set var="pageTitle" value="${empty obj ? '添加文章':'修改文章' }" scope="page" />
<html>
<head>
<title>${pageTitle }</title>
<style type="text/css">
	.navbar-fixed-top{
		z-index: 1000;
	}
</style>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }"
				pageTitleContent="cms-文章管理-${pageTitle }" titleIcon="diy_icon_01_46" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>请填写表单
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> 
								<a href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<div class="tabbable tabbable-custom">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab_1_1" data-toggle="tab">上传word方式</a></li>
									<li><a href="#tab_1_2" data-toggle="tab">富文本方式</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="tab_1_1">
										<%@ include file="/WEB-INF/content/cms/article/form/word.jsp"%>										
									</div>
									<div class="tab-pane" id="tab_1_2">
										<%@ include file="/WEB-INF/content/cms/article/form/ueditor.jsp"%>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/content/common/plugins/jquery-validation.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/bootstrap-fileupload.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/ueditor.jsp"%>
<script type="text/javascript" src="${ctx }/assets/js/cms/article.js"></script>
<script type="text/javascript">
	$(function(){
		App.activeMenu("cms/article/list");
		UE.getEditor('ueditor');
		$("#tab_1_2").removeClass("active").removeClass("open");
	});
</script>
</body>
</html>