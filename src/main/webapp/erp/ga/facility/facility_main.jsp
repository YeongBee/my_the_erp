<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>CelestialUI Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- base:css -->
<link rel="stylesheet" href="/erp/vendors/typicons.font/font/typicons.css">
<link rel="stylesheet" href="/erp/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="/erp/css/vertical-layout-light/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="/images/favicon.png" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</head>

<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo" href="../../index.html">ERP</a>
				<a class="navbar-brand brand-logo-mini" href="../../index.html">
					<img src="../../images/logo-mini.svg" alt="logo" />
				</a>
				<button class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
					<span class="typcn typcn-th-menu"></span>
				</button>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
				<ul class="navbar-nav mr-lg-2">
					<li class="nav-item  d-none d-lg-flex"><a class="nav-link" href="#"> Calendar </a></li>
					<li class="nav-item  d-none d-lg-flex"><a class="nav-link active" href="#"> Statistic </a></li>
					<li class="nav-item  d-none d-lg-flex"><a class="nav-link" href="#"> Employee </a></li>
				</ul>
				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item d-none d-lg-flex  mr-2"><a class="nav-link" href="#"> Help </a></li>
					<li class="nav-item dropdown d-flex"><a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
							<i class="typcn typcn-message-typing"></i> <span class="count bg-success">2</span>
						</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
							<p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="../../images/faces/face4.jpg" alt="image" class="profile-pic">
								</div>
								<div class="preview-item-content flex-grow">
									<h6 class="preview-subject ellipsis font-weight-normal">David Grey</h6>
									<p class="font-weight-light small-text mb-0">The meeting is cancelled</p>
								</div>
							</a>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="../../images/faces/face2.jpg" alt="image" class="profile-pic">
								</div>
								<div class="preview-item-content flex-grow">
									<h6 class="preview-subject ellipsis font-weight-normal">Tim Cook</h6>
									<p class="font-weight-light small-text mb-0">New product launch</p>
								</div>
							</a>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="../../images/faces/face3.jpg" alt="image" class="profile-pic">
								</div>
								<div class="preview-item-content flex-grow">
									<h6 class="preview-subject ellipsis font-weight-normal">Johnson</h6>
									<p class="font-weight-light small-text mb-0">Upcoming board meeting</p>
								</div>
							</a>
						</div></li>
					<li class="nav-item dropdown  d-flex"><a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
							<i class="typcn typcn-bell mr-0"></i> <span class="count bg-danger">2</span>
						</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
							<p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-success">
										<i class="typcn typcn-info-large mx-0"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject font-weight-normal">Application Error</h6>
									<p class="font-weight-light small-text mb-0">Just now</p>
								</div>
							</a>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-warning">
										<i class="typcn typcn-cog mx-0"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject font-weight-normal">Settings</h6>
									<p class="font-weight-light small-text mb-0">Private message</p>
								</div>
							</a>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-info">
										<i class="typcn typcn-user-outline mx-0"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject font-weight-normal">New user registration</h6>
									<p class="font-weight-light small-text mb-0">2 days ago</p>
								</div>
							</a>
						</div></li>
					<li class="nav-item nav-profile dropdown"><a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
							<i class="typcn typcn-user-outline mr-0"></i> <span class="nav-profile-name">Evan Morales</span>
						</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
							<a class="dropdown-item">
								<i class="typcn typcn-cog text-primary"></i> Settings
							</a>
							<a class="dropdown-item">
								<i class="typcn typcn-power text-primary"></i> Logout
							</a>
						</div></li>
				</ul>
				<button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
					<span class="typcn typcn-th-menu"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_settings-panel.html -->
			<div class="theme-setting-wrapper">
				<div id="settings-trigger">
					<i class="typcn typcn-cog-outline"></i>
				</div>
				<div id="theme-settings" class="settings-panel">
					<i class="settings-close typcn typcn-delete-outline"></i>
					<p class="settings-heading">SIDEBAR SKINS</p>
					<div class="sidebar-bg-options" id="sidebar-light-theme">
						<div class="img-ss rounded-circle bg-light border mr-3"></div>
						Light
					</div>
					<div class="sidebar-bg-options selected" id="sidebar-dark-theme">
						<div class="img-ss rounded-circle bg-dark border mr-3"></div>
						Dark
					</div>
					<p class="settings-heading mt-2">HEADER SKINS</p>
					<div class="color-tiles mx-0 px-4">
						<div class="tiles success"></div>
						<div class="tiles warning"></div>
						<div class="tiles danger"></div>
						<div class="tiles primary"></div>
						<div class="tiles info"></div>
						<div class="tiles dark"></div>
						<div class="tiles default border"></div>
					</div>
				</div>
			</div>
			<!-- partial -->
			<!-- partial:../../partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item">
						<div class="d-flex sidebar-profile">
							<div class="sidebar-profile-image">
								<img src="/images/faces/face29.png" alt="image">
								<span class="sidebar-status-indicator"></span>
							</div>
							<div class="sidebar-profile-name">
								<p class="sidebar-name">Kenneth Osborne</p>
								<p class="sidebar-designation">Welcome</p>
							</div>
						</div>
						<div class="nav-search">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Type to search..." aria-label="search" aria-describedby="search">
								<div class="input-group-append">
									<span class="input-group-text" id="search"> <i class="typcn typcn-zoom"></i>
									</span>
								</div>
							</div>
						</div>
						<p class="sidebar-menu-title">Dash menu</p>
					</li>
					<li class="nav-item"><a class="nav-link" href="../../index.html">
							<i class="typcn typcn-device-desktop menu-icon"></i> <span class="menu-title">Dashboard <span class="badge badge-primary ml-3">New</span></span>
						</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
							<i class="typcn typcn-briefcase menu-icon"></i> <span class="menu-title">UI Elements</span> <i class="typcn typcn-chevron-right menu-arrow"></i>
						</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="../ui-features/buttons.html">Buttons</a></li>
								<li class="nav-item"><a class="nav-link" href="../ui-features/dropdowns.html">Dropdowns</a></li>
								<li class="nav-item"><a class="nav-link" href="../ui-features/typography.html">Typography</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
							<i class="typcn typcn-film menu-icon"></i> <span class="menu-title">Form elements</span> <i class="menu-arrow"></i>
						</a>
						<div class="collapse" id="form-elements">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="../forms/basic_elements.html">Basic Elements</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
							<i class="typcn typcn-chart-pie-outline menu-icon"></i> <span class="menu-title">Charts</span> <i class="menu-arrow"></i>
						</a>
						<div class="collapse" id="charts">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="../charts/chartjs.html">ChartJs</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
							<i class="typcn typcn-th-small-outline menu-icon"></i> <span class="menu-title">Tables</span> <i class="menu-arrow"></i>
						</a>
						<div class="collapse" id="tables">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="basic-table.html">Basic table</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
							<i class="typcn typcn-compass menu-icon"></i> <span class="menu-title">Icons</span> <i class="menu-arrow"></i>
						</a>
						<div class="collapse" id="icons">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="../icons/mdi.html">Mdi icons</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
							<i class="typcn typcn-user-add-outline menu-icon"></i> <span class="menu-title">User Pages</span> <i class="menu-arrow"></i>
						</a>
						<div class="collapse" id="auth">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="../samples/login.html"> Login </a></li>
								<li class="nav-item"><a class="nav-link" href="../samples/register.html"> Register </a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
							<i class="typcn typcn-globe-outline menu-icon"></i> <span class="menu-title">Error pages</span> <i class="menu-arrow"></i>
						</a>
						<div class="collapse" id="error">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="../samples/error-404.html"> 404 </a></li>
								<li class="nav-item"><a class="nav-link" href="../samples/error-500.html"> 500 </a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="../documentation/documentation.html">
							<i class="typcn typcn-document-text menu-icon"></i> <span class="menu-title">Documentation</span>
						</a></li>
				</ul>
				<ul class="sidebar-legend">
					<li>
						<p class="sidebar-menu-title">Category</p>
					</li>
					<li class="nav-item"><a href="#" class="nav-link">#Sales</a></li>
					<li class="nav-item"><a href="#" class="nav-link">#Marketing</a></li>
					<li class="nav-item"><a href="#" class="nav-link">#Growth</a></li>
				</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">

						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">시설관리</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th scope="col">시설번호</th>
													<th scope="col">시설이름</th>
													<th scope="col">시설위치</th>
													<th scope="col">수용인원</th>
													<th scope="col">
														<select name="operStatus">
															<option value="">전체</option>
															<option value="운영">운영</option>
															<option value="중단">중단</option>
														</select>
													</th>
													<th scope="col">시설타입</th>
													<th scope="col">준공일자</th>
												</tr>
											</thead>
											<tbody id="table-tbody">


												<c:forEach var="fa" items="${Fac_LIST}">
													<tr>
														<td>${fa.facilityId}</td>
														<td><a href="/facility/details?actiop=details&facilityId=${fa.facilityId}" class="link-dark link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover"> ${fa.name} </a></td>

														<td>${fa.location}</td>
														<td>${fa.capacity}</td>
														<td><c:choose>
																<c:when test="${fa.operatingStatus eq '중단'}">
																	<label class="badge badge-danger">${fa.operatingStatus}</label>
																</c:when>
																<c:otherwise>
																	<label class="badge badge-success">${fa.operatingStatus}</label>
																</c:otherwise>
															</c:choose></td>

														<td>${fa.facilityType}</td>
														<td>${fa.completionDate}</td>

													</tr>
												</c:forEach>


											</tbody>
										</table>
									</div>
									<br>
									<button type="button" class="btn btn-primary float-right" id="insertBtn">입력</button>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<footer class="footer">
					<div class="d-sm-flex justify-content-center justify-content-sm-between">
						<span class="text-center text-sm-left d-block d-sm-inline-block">Copyright Â© <a href="https://www.bootstrapdash.com/" target="_blank">bootstrapdash.com</a> 2020
						</span> <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Free <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap dashboard </a>templates from Bootstrapdash.com
						</span>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- base:js -->
	<script src="/vendors/js/vendor.bundle.base.js"></script>

	<script src="/erp/js/off-canvas.js"></script>
	<script src="/erp/js/hoverable-collapse.js"></script>
	<script src="/erp/js/template.js"></script>
	<script src="/erp/js/settings.js"></script>
	<script src="/erp/js/todolist.js"></script>
	<script>
		$(document).ready(
				function() {
					$('select[name="operStatus"]').change(function() {
						let status = $(this).val();

						if (status === '중단') {
							$.ajax({
								type : "POST",
								url : "facility?actiop=status&value=close",
								dataType : "json",
								success : function(data) {
									updateFacilityTable(data);
								},
								error : function(xhr, status, error) {
									alert("데이터 로드 실패: " + error);
								}
							});
						} else if (status === '운영') {
							$.ajax({
								type : "POST",
								url : "facility?actiop=status&value=open",
								dataType : "json",
								success : function(data) {
									updateFacilityTable(data);
								},
								error : function(xhr, status, error) {
									alert("데이터 로드 실패: " + error);
								}
							});
						} else {
							$.ajax({
								type : "POST",
								url : "facility?actiop=status&value=all",
								dataType : "json",
								success : function(data) {
									updateFacilityTable(data);
								},
								error : function(xhr, status, error) {
									alert("데이터 로드 실패: " + error);
								}
							});
						}
					});

					function updateFacilityTable(data) {
						let tbody = "";
						$.each(data, function(index, fa) {
							tbody += "<tr>";
							tbody += "<td>" + fa.facilityId + "</td>";
							tbody += "<td>" + fa.name + "</td>";
							tbody += "<td>" + fa.location + "</td>";
							tbody += "<td>" + fa.capacity + "</td>";
							tbody += "<td>";
							if (fa.operatingStatus === '중단') {
								tbody += "<label class='badge badge-danger'>"
										+ fa.operatingStatus + "</label>";
							} else {
								tbody += "<label class='badge badge-success'>"
										+ fa.operatingStatus + "</label>";
							}
							tbody += "</td>";
							tbody += "<td>" + fa.facilityType + "</td>";
							tbody += "<td>"
									+ new Date(fa.completionDate)
											.toLocaleDateString('ko-KR', {
												year : 'numeric',
												month : '2-digit',
												day : '2-digit'
											}).replace(/\. /g, '-').replace(
													'.', '') + "</td>";
							tbody += "</tr>";
						});
						$("#table-tbody").html(tbody);
					}

				});
	</script>
</body>

</html>