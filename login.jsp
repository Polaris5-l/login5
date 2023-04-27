<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="login.css">

    <title>登录</title>
</head>
<body>
  <form action="login1.jsp" method="post">
  <section>
      <!-- 背景颜色 -->
      <div class="color"></div>
      <div class="color"></div>
      <div class="color"></div>
      <div class="box">
          <!-- 背景圆 -->
          <div class="circle" style="--x:0"></div>
          <div class="circle" style="--x:1"></div>
          <div class="circle" style="--x:2"></div>
          <div class="circle" style="--x:3"></div>
          <div class="circle" style="--x:4"></div>
          <!-- 登录框 -->
          <div class="container">
              <div class="form">
                  <h2>登录</h2>
                  <form>
                      <div class="inputBox">
                          <input id="username" type="text" placeholder="请输入账号" required>

                      </div>
                      <div class="inputBox">
                          <input id="password" type="password" placeholder="请输入密码" required>

                      </div>
                      <div class="inputBox">
                          <input id="sign_in" onclick="myFunction()" type="submit"  value="登录">

                      </div>
                      <p class="forget">忘记密码?<a href="#">
                              点击这里
                          </a></p>
                      <p class="forget">没有账户?<a href="regist.jsp" target="_blank">
                              注册
                          </a></p>
                  </form>
              </div>
          </div>
      </div>
  </section>
  <div id="footer">计本2003班 李洁 2031051308</div>
  </form>
</body>
<script>
  function myFunction() 
  {
    //判断是否登录成功
    if (document.getElementById("username").value == "2031051308") {
      if (document.getElementById("password").value == "123456") {
        location.href='login1.jsp';
      }
      else {
        alert("密码错误");
      }
    }
    else {
      alert("账号错误");
    }
  }
</script>
</html>