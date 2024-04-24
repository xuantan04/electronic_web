<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.Validate"%>
<!DOCTYPE html>
<html>
<head>
 <title>Trang chủ</title>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
 <link rel="stylesheet" href="fontawesome-free-6.3.0-web/css/all.min.css">
 <link rel="stylesheet" href="check.css">
 <script src="https://kit.fontawesome.com/6d254ad403.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="header">
        <div class="header_icon">
            <ul class="headericon">
                <li class="icon1">
                    <a href=""><i class="fa-brands fa-facebook" style="color:black"></i></a>
                </li>
                <li class="icon1">
                    <a href=""><i class="fa-brands fa-twitter" style="color:black"></i></a>
                </li>
                <li class="icon1">
                    <a href=""><i class="fa-brands fa-google-plus-g" style="color:black"></i></a>
                </li>
                <li class="icon1">
                    <a href=""><i class="fa-brands fa-youtube" style="color:black"></i></a>
                </li>
                <li class="icon1">
                    <a href=""><i class="fa-brands fa-linkedin-in" style="color:black"></i></a>
                </li>
    
            </ul>
        </div>
        <div class="header_item">
            <ul class="item_logo">
               <li class="logo">
                   <a href="@@@"> <img src="https://summary-tool.com/styles/images/logo.png"></a>
               </li>
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
            <ul class="item_icon">
                
                <p class="ten">Tài khoản</p>
                <button class="item__icon1">
                    <i class="fa-regular fa-user"style="color:black"></i></a>
                </button>
                
                  <div class="user-email"><%= Validate.StringUtil((String) session.getAttribute("email"))%></div> 
                   <%if (session.getAttribute("email")!=null){%>
                <div class="logout">
                    <a href="ProcessLogout">Sign out</a>
                </div>
                <%}%> 
                <div class="modal-form">
                    <div class="modal-overlay__form">

                    </div>
                    <div class="modal-form__body">
                        <div class="form-login">
                            <div class="form-login-header">
                               <h2>Đăng nhập</h2>
                               <button class="form-login-header__icon">
                                <i class="fa-solid fa-x"></i>
                               </button>                              
                            </div>
                            <div class="form-login-body">
                                <form action="ProcessLogin" method="post">
                                    <div class="form-group">
                                        <label for="username">
                                            Tài khoản
                                            <span class="required">*</span>
                                        </label>
                                        <input id="username" name="username" type="text" class="form-required">
                                    </div>
                                    <div class="form-group">
                                        <label for="passwordlogin">
                                            Mật khẩu
                                            <span class="required">*</span>
                                        </label>
                                        <input id="password" name="password" type="password" class="form-required">
                                    </div>
                    
                                    <button type = "submit" class="btn-submit">Đăng nhập </button>
                                    <a href="" class="btn-login-social btn-facebook">
                                        <i class="logo-facebook ti-facebook">Facebook</i>
                                    </a>
                                    <a href="" class="btn-login-social btn-google">
                                        <i class="ti-google">Google</i>
                                    </a>
                                    <div class="d-flex">
                                        <a class="form-register" href="register.html">
                                            <b>Đăng kí tài khoản mới</b>
                                        </a>
                                        <a class="form-forgot-password" href="">Quên mật khẩu?</a>
                                    </div>
                                    <input type="hidden" name="redirect" value>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
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
        <div class="slider">
            <div class="control prev"><i class="fa-sharp fa-solid fa-chevron-left"></i></div>
            <div class="control next"><i class="fa-sharp fa-solid fa-chevron-right"></i></div>
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
    <script src="slider.js"></script>
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
</body>
