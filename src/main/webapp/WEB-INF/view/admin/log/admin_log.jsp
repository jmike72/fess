<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><la:message key="labels.admin_brand_title"/> | <la:message key="labels.log_configuration" /></title>
<jsp:include page="/WEB-INF/view/common/admin/head.jsp"></jsp:include>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="/WEB-INF/view/common/admin/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/common/admin/sidebar.jsp">
			<jsp:param name="menuCategoryType" value="log" />
			<jsp:param name="menuType" value="log" />
		</jsp:include>

		<div class="content-wrapper">

			<%-- Content Header --%>
			<section class="content-header">
				<h1>
					<la:message key="labels.log_configuration" />
				</h1>
				<jsp:include page="/WEB-INF/view/common/admin/crud/breadcrumb.jsp"></jsp:include>
			</section>

			<section class="content">

				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<%-- Box Header --%>
							<div class="box-header with-border">
								<h3 class="box-title">
									<la:message key="labels.log_configuration" />
								</h3>
							</div>
							<%-- Box Body --%>
							<div class="box-body">
								<%-- Message --%>
								<div>
									<la:info id="msg" message="true">
										<div class="alert alert-info">
											${msg}
										</div>
									</la:info>
									<la:errors />
								</div>

								<%-- List --%>
								<div>
									<table class="bordered-table zebra-striped">
										<tbody>
											<tr>
												<th><la:message key="labels.log_file_name" /></th>
												<th style="width: 200px;text-align: center;"><la:message key="labels.log_file_date" /></th>
											</tr>
											<c:forEach var="logFile" varStatus="s" items="${logFileItems}">
												<tr class="${s.index % 2 == 0 ? 'row1' : 'row2'}">
													<td>
														<la:link href="download/${f:u(logFile.id)}" target="_blank">${f:h(logFile.name)}</la:link>
													</td>
													<td style="overflow-x: auto;">
														<fmt:formatDate	value="${logFile.lastModified}" type="BOTH" dateStyle="MEDIUM" />
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>

			</section>
		</div>

		<jsp:include page="/WEB-INF/view/common/admin/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="/WEB-INF/view/common/admin/foot.jsp"></jsp:include>
</body>
</html>
