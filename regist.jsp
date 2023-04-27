<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="regist.css">
    <title>注册</title>
</head>
<body>
    <form action="">
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
            <!-- 注册框 -->
            <div class="container">
                <div class="form">
                    <h2>注册</h2>
                    <form action="">
                        <div class="inputBox">
                            <input id="userName" type="text" onblur="check_userName()"placeholder="请输入账号" required>
                        </div>

                        <div class="inputBox">
                            <input id="password" type="password" onblur="check_password()" placeholder="请输入密码" required>
                        </div>

                        <div class="inputBox">
                            <input id="surePassword" type="password" onblur="check_surePassword()" placeholder="请确认密码" required>
                        </div>

                        <div class="sexDiv">
                            <span>&nbsp;性别:&nbsp;&nbsp;</span>
                            <label>
                            <input class="userSex" name="sex" value="boy" type="radio">&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp;
                            </label>
                            <label>
                        <input class="userSex" name="sex" value="girl" type="radio">&nbsp;&nbsp;女
                        </label>
                        </div>

                        <div class="inputBox">
                            <label>
                            <input id="mobile" type="mobile" placeholder="请输入电话号码" onblur="check_mobile()" required>
                            </label>
                        </div>
                        <div class="inputBox">
                            <input type="submit" class="button" onclick="window.location.href='login.jsp'" value="提交">
                            <input type="reset" class="button" value="重置">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <div id="footer">计本2003班 李洁 2031051308</div>
</form>
</body>
<script>
    /*
       表单验证
    */
    // 当鼠标不聚焦于用户名
    function check_userName()
    {
     // 判断用户名是否合法
        var userName = document.getElementById("userName").value;
        if ((userName.length < 8))
           {
               alert("用户名必须为8位以上");
           }
        return false;
    }   
    function check_password()
    {
     // 判断密码是否合法
        var password = document.getElementById("password").value;
        if ((password.length < 6))
           {
               alert("密码必须为6位以上");
           }
        return false;
    }   
    function check_surePassword()
    {
     // 判断确认密码是否合法
        var password = document.getElementById("password").value;
        var surePassword = document.getElementById("surePassword").value;
        if (surePassword != password)
           {
               alert("两次密码必须一致");
           }
        return false;
    }   
    function check_mobile()
    {
     // 判断电话号码是否合法
        var mobile = document.getElementById("mobile").value;
        if ((mobile.length != 11))
           {
               alert("电话号码必须为11位");
           }
        return false;
    }  
</script>
</html>