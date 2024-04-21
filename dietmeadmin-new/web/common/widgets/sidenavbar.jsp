<%-- 
    Document   : header.jsp
    Created on : Apr 18, 2024, 3:19:33 PM
    Author     : kavin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Sidebar  -->
  <nav id="sidebar">
    <div class="sidebar-header">
        <h3><img src="common/assests/logo.png" class="img-fluid"/><span>Diet Me</span></h3>
    </div>
    <ul class="list-unstyled components">

      <div class="small-screen navbar-display">
        <li class="dropdown d-lg-none d-md-block d-xl-none d-sm-block">
            <a href="#homeSubmenu0" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
            <i class="material-icons">notifications</i><span> 4 notification</span></a>
            <ul class="collapse list-unstyled menu" id="homeSubmenu0">
                            <li>
                            <a href="#">You have 5 new messages</a>
                            </li>
                            <li>
                                <a href="#">You're now friend with Mike</a>
                            </li>
                            <li>
                                <a href="#">Wish Mary on her birthday!</a>
                            </li>
                            <li>
                                <a href="#">5 warnings in Server Console</a>
                            </li>
            </ul>    
        
        <li  class="active">
            <a href="index.jsp?page=dashboard" class="dashboard">
            <i class="material-icons">dashboard</i><span>Dashboard</span></a>
        </li>
        
        
        <li  class="d-lg-none d-md-block d-xl-none d-sm-block">
            <a href="#"><i class="material-icons">apps</i><span>apps</span></a>
        </li>
        
         <li  class="d-lg-none d-md-block d-xl-none d-sm-block">
            <a href="#"><i class="material-icons">person</i><span>user</span></a>
        </li>
        
        <li  class="d-lg-none d-md-block d-xl-none d-sm-block">
            <a href="#"><i class="material-icons">settings</i><span>setting</span></a>
        </li>
        </div>
        
        <li class="dropdown">
            <a href="index.jsp?page=users" class="dropdown-toggle">
            <i class="material-icons">person</i><span>Users</span>
            </a>
        </li>
        
        <li class="dropdown">
            <a href="index.jsp?page=defaultMeals" class="dropdown-toggle">
            <i class="material-icons">fastfood</i><span>Default Meals</span>
            </a>
            
        </li>
        <li class="dropdown">
            <a href="index.jsp?page=customMeals" class="dropdown-toggle">
            <i class="material-icons">create</i><span>Custom Meals</span>
            </a>
           
        </li>

        <li class="dropdown">
            <a href="index.jsp?page=mealContains" class="dropdown-toggle">
            <i class="material-icons">restaurant_menu</i><span>Meal Contains</span></a>
           
        </li>
        <li class="dropdown">
            <a href="index.jsp?page=orders" class="dropdown-toggle">
            <i class="material-icons">shopping_cart</i><span>Orders</span>
            </a>
           
        </li>
        <li class="dropdown">
            <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" >
            <i class="material-icons">payment</i><span>Payments</span></a>
           
        </li>
        
        <li class="dropdown">
            <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" >
            <i class="material-icons">message</i><span>Customer Messages</span></a>
           
        </li>
        
        
     </ul>   
</ul>
</nav>
