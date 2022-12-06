<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="sidebar">
      <div class="side-content">
        <div class="side-menu">
          <ul>
            <li>
              <a href="<%=request.getContextPath()%>/dashboard/showAdmin">
                <i class="las la-home"></i>
                <p>Dashboard</p>
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/dashboard/showUsers">
                <i class="las la-user"></i>
                <p>Users</p>
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/dashboard/showProducts">
                <i class="las la-tshirt"></i>
                <p>Products</p>
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/dashboard/showCategoryCreatePage">
                <span class="las la-shopping-cart"></span>
                <p>Create category</p>
              </a>
            </li>
            
          </ul>
        </div>
      </div>
    </div>
