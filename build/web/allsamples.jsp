<%-- 
    Document   : allsamples
    Created on : Oct 24, 2023, 11:53:04 PM
    Author     : lexua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="model.Sample" %>
<!DOCTYPE html>
<html>
<head> <head>
 <title>Quản Lý Mẫu</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <link rel="stylesheet" href="fontawesome-free-6.3.0-web/css/all.min.css">
 <link rel="stylesheet" href="check.css">
 <link rel="stylesheet" href="manage.css">
</head>
<body>
    <div class="header_item">
    <ul class="item_logo">
       <li class="logo">
           <a href="text.jsp"> <img src="https://summary-tool.com/styles/images/logo.png"></a>
       </li>
    </ul>
    <ul class="admin">
        <h1>Quản Lý Mẫu</h1>
    </ul>
    <ul class="item_navbar">
            <li class="navbar">
                <a href="sanpham.html">Dịch vụ</a>
            </li> 
            <li class="navbar">
                <a href="support.html">Mở rộng</a>
            </li>   
            <li class="navbar">
                <a href="about-us.html">Về chúng tôi</a>
            </li>
            <li class="navbar">
                <a href="liên-hệ.html">Hỗ trợ</a>
            </li>
            <li class="navbar">
                <a href="group.html">Group</a>
            </li>
     </ul>
    
</div>
<div class="header_list">
    <button class="list-js">Công cụ tóm tắt là gì?</button>
    
    <button class="list-js__2">Chi phí sử dụng một trình tóm tắt là gì?
    </button>
    
    <button class="list-js__3">Sử dụng phổ biến của trình tóm tắt</button>
    
    <button class="list-js__4">Hỗ trợ khách hàng 24/7</button>
    
</div>
<div class="body">
    <div class="allsamples">
        <h1>Danh sách các mẫu:</h1>
    </div>
    <div class="searchsample">
        <form action="ProcessTimKiem" method="post">
            <input type="text" name="strfind" placeholder="Tìm kiếm theo nội dung" >
            <button type="submit">Tìm Kiếm</button>
        </form>
    </div>
    <table class="table-data">
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Nội dung</th>
            <th>Tóm tắt</th>
            <th>Nhãn</th>
            <th>Xóa</th>
            <th>Sửa</th>
            <!--<th>Thâm niên</th>-->
        </tr>
        <% 
            ArrayList<Sample> ctvList = (ArrayList<Sample>) session.getAttribute("allsamples");
            int stt = 1;
        %>
        
        <% if (ctvList != null) {%>
        <%for(Sample x : ctvList){%>
        <tr>
            <td><%=x.getId()%></td>
            <td><%=x.getName()%></td>
            <td><%=x.getContent()%></td>
            <td><%=x.getSummary()%></td>
            <td><%=x.getLabel()%></td>
            <td><a href="/HTTM/sample/delete/<%=x.getId()%>">Delete</a></td>
            <td><a href="/HTTM/sample/update/<%=x.getId()%>">Update</a></td>
        </tr>
        <%} }%>
        </tr>
    </table>
    <div class="add">
        <p>Thêm mẫu</p>
    </div>
    <div class="addsample">
        <form action="ProcessAddSample" method="POST">
            <input type="text" name="name" placeholder="Name">
            <input type="text" name="content" placeholder="Content">
            <input type="text" name="summary" placeholder="Summary">
            <input type="text" name="label" placeholder="Label">
            <button class="them"type="submit">Submit</button>
        </form>
    </div>
        
            
</div>
<div class="footer">
    <hr class="hrColor" />
    <div class="table">
      <div class="table1">
        <h3 class="heading" style="font-size: 130%">
                        TÓM TẮT VĂN BẢN
        </h3>
        <div class="info">
           <div>
              Công cụ tóm tắt là tài nguyên hàng đầu để tạo tóm tắt trực tuyến cho bất kỳ bài báo nào bạn đọc. Trình tạo tóm tắt sẽ chỉ cung cấp cho người đọc những điểm quan trọng nhất mà họ cần biết về một bài báo mà không đưa ra quá nhiều chi tiết hoặc bao gồm những thông tin không cần thiết.
          </div>
          <br />
          <div>
             <b>Địa chỉ :</b> Số nhà 5A, ngõ 4, đường Lý Tự Trọng, Phường La Khê,
            Quận Hà Đông
          </div>
          <br />
          <div><b>Số điện thoại : </b>0366022305</div>
          <br />
         <div><b>Email :</b> lexuantan2k2@gmail.com</div>
          <br />
         <div>Thời gian làm việc: 8-17h</div>
          <br />
          <div class="icon-container">
            <div class="icon">
              <a href=""><i class="fa-brands fa-facebook-f"></i></a>
            </div>
            <div class="icon">
              <a href=""><i class="fa-brands fa-twitter"></i></a>
            </div>
            <div class="icon">
              <a><i class="fa-brands fa-google-plus-g"></i></a>
            </div>
            <div class="icon">
              <a href=""><i class="fa-brands fa-youtube"></i></a>
            </div>
            <div class="icon">
              <a href=""><i class="fa-brands fa-linkedin"></i></a>
            </div>
          </div>
        </div>
      </div>

      <div class="table2">
        <ul class="row_boxfooter2">
          <h3 class="heading" style="font-size: 130%">Tính năng khác</h3>
          <p><a href="">Văn bản động</a></p>
          <p><a href="">Văm bản uốn cong</a></p>
          <p><a href="">Công cụ chuyển đổi hình ảnh</a></p>
          <p><a href="">Cộng cụ chuyển đổi file</a></p>
          <p><a href="">Dịch văn bản</a></p>
        </ul>
      </div>

      <div class="table3">
        <div class="row boxfooter3">
          <h3 class="heading" style="font-size: 130%">MAP</h3>
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14902.090252383596!2d105.769882!3d20.97168!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313453262cb85207%3A0x2c3d48f455e506c!2zNCBMw70gVOG7sSBUcuG7jW5nLCBQLiBRdWFuZyBUcnVuZywgSMOgIMSQw7RuZywgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2sus!4v1678213773058!5m2!1svi!2sus"
            width="300"
            height="300"
            style="border: 0"
            allowfullscreen=""
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
          ></iframe>
        </div>
      </div>
    </div>
    <div class="copyright">
      <hr class="hrColor" />
      <p>Copyright © 2021 Lention All rights reserved.</p>
    </div>
</div>
        
        
    </body>
    <script>    
        let xhr = new XMLHttpRequest()
        xhr.open('POST', '/HTTM/ProcessGetAllSample', true)
        xhr.setRequestHeader('Content-Type', 'application/json')
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
              console.log(1111)
            }
          };
        xhr.send()
                
    </script>
</html>
