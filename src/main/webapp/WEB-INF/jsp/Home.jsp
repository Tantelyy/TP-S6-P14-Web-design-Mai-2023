<%@ page import="java.util.List" %>
<%@ page import="com.iacontent.iacontentfo.model.Contents" %>
<%@ page import="com.iacontent.iacontentfo.util.Tools" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<%--
  Created by IntelliJ IDEA.
  User: tantely
  Date: 2023-05-06
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>


<%
    List<Contents> contents = (List<Contents>) request.getAttribute("contents");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Contenus">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>Contenus</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/feather.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="/assets/css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/app-dark.css" id="darkTheme" disabled>
  </head>
  <body class="vertical  light  ">
    <div class="wrapper">
      <nav class="topnav navbar navbar-light">
        <button type="button" class="navbar-toggler text-muted mt-2 p-0 mr-3 collapseSidebar" title="Voir/Cache">
          <i class="fe fe-menu navbar-toggler-icon"></i>
        </button>
      </nav>
      <aside class="sidebar-left border-right bg-white shadow" id="leftSidebar" data-simplebar>
        <!-- <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle"> -->
          <!-- <i class="fe fe-x"><span class="sr-only"></span></i> -->
        <!-- </a> -->
        <nav class="vertnav navbar navbar-light">
          <!-- nav bar -->
          <div class="w-100 mb-4 d-flex">
            <!-- <a class="navbar-brand mx-auto mt-2 flex-fill text-center"> -->
              <!-- <svg version="1.1" id="logo" class="navbar-brand-img brand-sm" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
                <g>
                  <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                  <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                  <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                </g>
              </svg> -->
            <!-- </a> -->
          </div>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item w-100">
              <a class="nav-link" href="<%= request.getContextPath() %>/">
                <i class="fe fe-grid fe-16"></i>
                <span class="ml-3 item-text">Contenus</span>
              </a>
            </li>
          </ul>
        </nav>
      </aside>
      <main role="main" class="main-content">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="row align-items-center my-3">
                <div class="col">
                  <h1 class="page-title">Contenus</h1>
                </div>
              </div>
              <div class="file-container border-top">
                <div class="mt-4">
                  <div class="row my-4">
                    <% for (Contents content: contents) { %>
                        <div class="col-md-4">
                          <a style="text-decoration: none" href="<%= request.getContextPath() %>/contents/<%= Tools.buildUrl(content.getTitle()) %>/<%= content.getId() %>">
                            <div class="card shadow text-center mb-4">
                              <div class="card-body">
                                  <div class="header">
                                      <h2 class="title"><%= content.getTitle() %></h2>
                                  </div>
                              </div> <!-- .card-body -->

                              <div class="card-footer bg-transparent border-0 fname">
                              <strong><span class="dot dot-md bg-success mr-2"></span><%= content.getAdmin().getMail() %></strong>
                              <br />
                              <strong>Le <fmt:formatDate type = "both" value = "<%= content.getDateHour() %>" /></strong>
                              </div> <!-- .card-footer -->
                            </div> <!-- .card -->
                          </a>
                        </div> <!-- .col -->
                    <% } %>
                  </div> <!-- .row -->
                </div>
            </div>
          </div>
        </div>
        </div>
      </main> <!-- main -->
    </div> <!-- .wrapper -->
    <script src="/assets/js/jquery.min.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/popper.min.js"></script>
    <!-- <script src="/assets/js/moment.min.js"></script> -->
    <!-- <script src="/assets/js/bootstrap.min.js"></script> -->
    <!-- <script src="/assets/js/simplebar.min.js"></script> -->
    <!-- <script src='/assets/js/daterangepicker.js'></script> -->
    <!-- <script src='/assets/js/jquery.stickOnScroll.js'></script> -->
    <script src="/assets/js/tinycolor-min.js"></script>
    <!-- <script src="<%= request.getContextPath() %>/assets/js/config.js"></script> -->
    <!-- <script src="/assets/js/d3.min.js"></script> -->
    <script src="<%= request.getContextPath() %>/assets/js/topojson.min.js"></script>
    <!-- <script src="/assets/js/datamaps.all.min.js"></script> -->
    <!-- <script src="/assets/js/datamaps-zoomto.js"></script> -->
    <script src="<%= request.getContextPath() %>/assets/js/datamaps.custom.js"></script>
    <!-- <script src="/assets/js/Chart.min.js"></script> -->
    <!-- <script>
      /* defind global options */
      Chart.defaults.global.defaultFontFamily = base.defaultFontFamily;
      Chart.defaults.global.defaultFontColor = colors.mutedColor;
    </script> -->
    <script src="<%= request.getContextPath() %>/assets/js/gauge.min.js"></script>
    <!-- <script src="/assets/js/jquery.sparkline.min.js"></script> -->
    <!-- <script src="/assets/js/apexcharts.min.js"></script> -->
    <!-- <script src="/assets/js/apexcharts.custom.js"></script> -->
    <script src="<%= request.getContextPath() %>/assets/js/apps.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag()
      {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      gtag('config', 'UA-56159088-1');
    </script>
  </body>
</html>