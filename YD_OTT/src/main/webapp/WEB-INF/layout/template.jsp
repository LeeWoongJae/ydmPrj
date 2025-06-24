<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/plyr.css" type="text/css">
    <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
</head>

<body>

    <!-- Page Preloder -->
    <!-- 
    <div id="preloder">
        <div class="loader"></div>
    </div>
     -->
    <!-- Header Section Begin -->
   <header class="header">
   <div class="container">
   <tiles:insertAttribute name ="header" />
   </div>
   </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero">
    <div class="container">
    <tiles:insertAttribute name="menu" />
    </div>
    </section>
    <!-- Hero Section End -->
    
    <tiles:insertAttribute name="body" />
  
<!-- Product Section End -->
<!-- Footer Section Begin -->
<tiles:insertAttribute name="footer" />
<!-- Js Plugins -->
<script src="/YD_OTT/js/jquery-3.3.1.min.js"></script>
<script src="/YD_OTT/js/bootstrap.min.js"></script>
<script src="/YD_OTT/js/player.js"></script>
<script src="/YD_OTT/js/jquery.nice-select.min.js"></script>
<script src="/YD_OTT/js/mixitup.min.js"></script>
<script src="/YD_OTT/js/jquery.slicknav.js"></script>
<script src="/YD_OTT/js/owl.carousel.min.js"></script>
<script src="/YD_OTT/js/main.js"></script>

</body>

</html>
