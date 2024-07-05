<%@page import="bean.City"%>
<%@page import="bean.state"%>
<%@page import="bean.place"%>
<%@page import="bean.User" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Smart City Admin Panel</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="assets/vendors/jvectormap/jquery-jvectormap.css">
  <!-- End plugin css for this page -->
  <!-- Layout styles -->
  <link rel="stylesheet" href="assets/css/demo/style.css">
  <!-- End layout styles -->
  <link rel="shortcut icon" href="assets/images/favicon.png" />
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <style>
  @font-face {
	font-family: myfont2 ;
	src:url(css2/Heyam.ttf);
	}
	.title
	{
	font-family: myfont2;
	font-size: 26px;
	}
	.logo
	{
	width:190px;
	}
  </style>
</head>
<body>
<script src="assets/js/preloader.js"></script>
  <div class="body-wrapper">
   
   <jsp:include page="aside.jsp"></jsp:include>
   
   
   
    <div class="main-wrapper mdc-drawer-app-content">
      <!-- partial:partials/_navbar.html -->
      <jsp:include page="header.jsp"></jsp:include>
      <!-- partial -->
      <%
      City city = new City();
      ArrayList<City> allcities = city.showallcity();
      
      state st = new state();
      ArrayList<state> allstates = st.showallstate();
      
      place pt = new place();
      ArrayList<place> allplaces = pt.showallplace();
      
      User user=new User();
      ArrayList<User> allusers = user.alluser();
       %>
      
      <div class="page-wrapper mdc-toolbar-fixed-adjust">
        <main class="content-wrapper">
          <div class="mdc-layout-grid">
            <div class="mdc-layout-grid__inner">
             
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-3-desktop mdc-layout-grid__cell--span-4-tablet">
                <div class="mdc-card info-card info-card--danger">
                  <div class="card-inner">
                    <h5 class="card-title">STATES</h5>
                    <h5 class="font-weight-light pb-2 mb-1 border-bottom"><%out.println(allstates.size());%></h5>
                    <p class="tx-12 text-muted">35% target reached</p>
                    <div class="card-icon-wrapper">
                    <i class='bx bx-bus-school'></i>
                    </div>
                  </div>
                </div>
              </div>
               <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-3-desktop mdc-layout-grid__cell--span-4-tablet">
                <div class="mdc-card info-card info-card--success">
                  <div class="card-inner">
                    <h5 class="card-title">CITIES</h5>
                    <h5 class="font-weight-light pb-2 mb-1 border-bottom"><%out.println(allcities.size());%></h5>
                    <p class="tx-12 text-muted">48% target reached</p>
                    <div class="card-icon-wrapper">
                      <i class='bx bx-building-house'></i>
                    </div>
                  </div>
                </div>
              </div>
               <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-3-desktop mdc-layout-grid__cell--span-4-tablet">
                <div class="mdc-card info-card info-card--warning">
                  <div class="card-inner">
                    <h5 class="card-title">PLACES</h5>
                    <h5 class="font-weight-light pb-2 mb-1 border-bottom"><%out.println(allplaces.size());%></h5>
                    <p class="tx-12 text-muted">35% target reached</p>
                    <div class="card-icon-wrapper">
                    <i class='bx bxs-institution'></i>
                    </div>
                  </div>
                </div>
              </div>
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-3-desktop mdc-layout-grid__cell--span-4-tablet">
                <div class="mdc-card info-card info-card--primary">
                  <div class="card-inner">
                    <h5 class="card-title">USERS</h5>
                    <h5 class="font-weight-light pb-2 mb-1 border-bottom"><%out.println(allusers.size()); %></h5>
                    <p class="tx-12 text-muted">No of Users have logged in</p>
                    <div class="card-icon-wrapper">
                      
                      <i class='bx bxs-user-detail'></i>
                    </div>
                  </div>
                </div>
              </div>
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-3-desktop mdc-layout-grid__cell--span-4-tablet">
                <div class="mdc-card info-card info-card--info">
                  <div class="card-inner">
                    <h5 class="card-title">ADMINS</h5>
                    <h5 class="font-weight-light pb-2 mb-1 border-bottom">3</h5>
                 
                    <div class="card-icon-wrapper">
                      <i class='bx bx-mouse-alt'></i>
                    </div>
                  </div>
                </div>
              </div>
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-12">
                <div class="mdc-card">
                  <div class="d-flex justify-content-between">
                    <h4 class="card-title mb-0">Working Progress by location</h4>
                    <div>
                        <i class="material-icons refresh-icon">refresh</i>
                        <i class="material-icons options-icon ml-2">more_vert</i>
                    </div>
                  </div>
                  <div class="d-block d-sm-flex justify-content-between align-items-center">
                      <h5 class="card-sub-title mb-2 mb-sm-0">Work performance revenue based by States</h5>
                      <div class="menu-button-container">
                        <button class="mdc-button mdc-menu-button mdc-button--raised button-box-shadow tx-12 text-dark bg-white font-weight-light">
                            Last 7 days
                          <i class="material-icons">arrow_drop_down</i>
                        </button>
                        <div class="mdc-menu mdc-menu-surface" tabindex="-1">
                          <ul class="mdc-list" role="menu" aria-hidden="true" aria-orientation="vertical">
                            <li class="mdc-list-item" role="menuitem">
                              <h6 class="item-subject font-weight-normal">Back</h6>
                            </li>
                            <li class="mdc-list-item" role="menuitem">
                              <h6 class="item-subject font-weight-normal">Forward</h6>
                            </li>
                            <li class="mdc-list-item" role="menuitem">
                              <h6 class="item-subject font-weight-normal">Reload</h6>
                            </li>
                            <li class="mdc-list-divider"></li>
                            <li class="mdc-list-item" role="menuitem">
                              <h6 class="item-subject font-weight-normal">Save As..</h6>
                            </li>
                          </ul>
                        </div>
                      </div>
                  </div>
                  <div class="mdc-layout-grid__inner mt-2">
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-6 mdc-layout-grid__cell--span-8-tablet">
                        <div class="table-responsive">
                          <table class="table dashboard-table">
                            <tbody>
                              <tr>
                                <td>
                                  <span class="flag-icon-container"><i class="flag-icon flag-icon-in mr-2"></i></span>West Bengal</td>
                                <td>15</td>
                                <td class=" font-weight-medium"> 39% </td>
                              </tr>
                              <tr>
                                <td> <span class="flag-icon-container"><i class="flag-icon flag-icon-in mr-2"></i></span>Rajasthan	</td>
                                <td>14</td>
                                <td class=" font-weight-medium"> 30% </td>
                              </tr>
                              <tr>
                                <td> <span class="flag-icon-container"><i class="flag-icon flag-icon-in mr-2"></i></span>Uttar Pradesh</td>
                                <td>15</td>
                                <td class=" font-weight-medium"> 45% </td>
                              </tr>
                              
                            </tbody>
                          </table>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-6 mdc-layout-grid__cell--span-8-tablet"> 
                      <div id="revenue-map" class="revenue-world-map"></div>
                    </div>
                  </div>
                </div> 
              </div>
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop mdc-layout-grid__cell--span-4-tablet">
                <div class="mdc-card bg-success text-white">
                  <div class="d-flex justify-content-between">
                    <h3 class="font-weight-normal">Impressions</h3>
                    <i class="material-icons options-icon text-white">more_vert</i>
                  </div>
                  <div class="mdc-layout-grid__inner align-items-center">
                    <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-4-desktop mdc-layout-grid__cell--span-3-tablet mdc-layout-grid__cell--span-2-phone">
                      <div>
                        <h5 class="font-weight-normal mt-2">Customers 58.39k</h5>
                        <h2 class="font-weight-normal mt-3 mb-0">636,757K</h2>
                      </div>
                    </div>
                    <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-8-desktop mdc-layout-grid__cell--span-5-tablet mdc-layout-grid__cell--span-2-phone">
                      <canvas id="impressions-chart" height="80"></canvas>
                    </div>
                  </div>
                </div>
              </div>
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop mdc-layout-grid__cell--span-4-tablet">
                <div class="mdc-card bg-info text-white">
                    <div class="d-flex justify-content-between">
                      <h3 class="font-weight-normal">Traffic</h3>
                      <i class="material-icons options-icon text-white">more_vert</i>
                    </div>
                    <div class="mdc-layout-grid__inner align-items-center">
                      <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-4-desktop mdc-layout-grid__cell--span-3-tablet mdc-layout-grid__cell--span-2-phone">
                        <div>
                          <h5 class="font-weight-normal mt-2">Customers 58.39k</h5>
                          <h2 class="font-weight-normal mt-3 mb-0">636,757K</h2>
                        </div>
                      </div>
                      <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-8-desktop mdc-layout-grid__cell--span-5-tablet mdc-layout-grid__cell--span-2-phone">
                        <canvas id="traffic-chart" height="80"></canvas>
                      </div>
                    </div>
                </div>
              </div>
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-8">
                <div class="mdc-card">
                  <div class="d-flex justify-content-between align-items-center">
                    <h4 class="card-title mb-2 mb-sm-0">Revenue by location</h4>
                    <div class="d-flex justtify-content-between align-items-center">
                      <p class="d-none d-sm-block text-muted tx-12 mb-0 mr-2">Goal reached</p>
                      <i class="material-icons options-icon">more_vert</i>
                    </div>
                  </div>
                  <div class="d-block d-sm-flex justify-content-between align-items-center">
                    <h6 class="card-sub-title mb-0">Sales performance revenue based by country</h6>
                    <div class="mdc-tab-wrapper revenue-tab mdc-tab--secondary"> 
                      <div class="mdc-tab-bar" role="tablist">
                        <div class="mdc-tab-scroller">
                          <div class="mdc-tab-scroller__scroll-area">
                            <div class="mdc-tab-scroller__scroll-content">
                              <button class="mdc-tab mdc-tab--active" role="tab" aria-selected="true" tabindex="0">
                                <span class="mdc-tab__content">
                                  <span class="mdc-tab__text-label">1W</span>
                                </span>
                                <span class="mdc-tab-indicator mdc-tab-indicator--active">
                                  <span class="mdc-tab-indicator__content mdc-tab-indicator__content--underline"></span>
                                </span>
                                <span class="mdc-tab__ripple"></span>
                              </button>
                              <button class="mdc-tab mdc-tab" role="tab" aria-selected="true" tabindex="0">
                                <span class="mdc-tab__content">
                                  <span class="mdc-tab__text-label">1M</span>
                                </span>
                                <span class="mdc-tab-indicator mdc-tab-indicator">
                                  <span class="mdc-tab-indicator__content mdc-tab-indicator__content--underline"></span>
                                </span>
                                <span class="mdc-tab__ripple"></span>
                              </button>
                              <button class="mdc-tab mdc-tab" role="tab" aria-selected="true" tabindex="0">
                                <span class="mdc-tab__content">
                                  <span class="mdc-tab__text-label">3M</span>
                                </span>
                                <span class="mdc-tab-indicator mdc-tab-indicator">
                                  <span class="mdc-tab-indicator__content mdc-tab-indicator__content--underline"></span>
                                </span>
                                <span class="mdc-tab__ripple"></span>
                              </button>
                              <button class="mdc-tab mdc-tab" role="tab" aria-selected="true" tabindex="0">
                                <span class="mdc-tab__content">
                                  <span class="mdc-tab__text-label">1Y</span>
                                </span>
                                <span class="mdc-tab-indicator mdc-tab-indicator">
                                  <span class="mdc-tab-indicator__content mdc-tab-indicator__content--underline"></span>
                                </span>
                                <span class="mdc-tab__ripple"></span>
                              </button>
                              <button class="mdc-tab mdc-tab" role="tab" aria-selected="true" tabindex="0">
                                <span class="mdc-tab__content">
                                  <span class="mdc-tab__text-label">ALL</span>
                                </span>
                                <span class="mdc-tab-indicator mdc-tab-indicator">
                                  <span class="mdc-tab-indicator__content mdc-tab-indicator__content--underline"></span>
                                </span>
                                <span class="mdc-tab__ripple"></span>
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="content content--active">    
                      </div>
                      <div class="content">
                      </div>
                      <div class="content">    
                      </div>
                      <div class="content">
                      </div>
                      <div class="content">
                      </div>
                    </div>
                  </div>
                  <div class="chart-container mt-4">
                    <canvas id="revenue-chart" height="260"></canvas>
                  </div>
                </div>
              </div>
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-4 mdc-layout-grid__cell--span-8-tablet">
                <div class="mdc-card">
                  <div class="d-flex d-lg-block d-xl-flex justify-content-between">
                    <div>
                      <h4 class="card-title">Order Statistics</h4>
                      <h6 class="card-sub-title">Customers 58.39k</h6>
                    </div>
                    <div id="sales-legend" class="d-flex flex-wrap"></div>
                  </div>
                  <div class="chart-container mt-4">
                    <canvas id="chart-sales" height="260"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </main>
        <!-- partial:partials/_footer.html -->
        <footer>
          <div class="mdc-layout-grid">
            <div class="mdc-layout-grid__inner">
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                <span class="text-center text-sm-left d-block d-sm-inline-block tx-14">Copyright © <a href="https://www.bootstrapdash.com/" target="_blank">bootstrapdash.com </a>2020</span>
              </div>
              <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop d-flex justify-content-end">
                <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center tx-14">Free <a href="https://www.bootstrapdash.com/material-design-dashboard/" target="_blank"> material admin </a> dashboards from Bootstrapdash.com</span>
              </div>
            </div>
          </div>
        </footer>
        <!-- partial -->
      </div>
    </div>
  </div>
  <!-- plugins:js -->
  <script src="assets/vendors/js/vendor.bundle.base.js"></script>
  
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="assets/vendors/chartjs/Chart.min.js"></script>
  <script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
  <script src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="assets/js/material.js"></script>
  <script src="assets/js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="assets/js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>
</html> 