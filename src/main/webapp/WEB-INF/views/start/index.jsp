<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
    <style>
        body{
            background: url("/resources/client/images/bkimg.jpg");
            background-size: cover;
            margin: 0px;
        }

        #welcomeText{
            color: rgb(222, 232, 236);
            margin: auto;
            text-align: center;
            font-size: 80px;
            font-family: 'Courgette', cursive;
            margin-top: 100px;
            margin-bottom: 200px;
        }
        

        #container{
            width: 800px;
            height: 200px;
            /* background-color: yellow; */
            margin: auto;
        }

        #container button{
            padding: 10px;
            font-size: 50px;
            font-family: 'Acme', sans-serif;
            background-color: rgb(94, 94, 107);
            color: rgb(170, 188, 201);
            border-radius: 8px;
            box-shadow: 0 8px 16px 0 rgba(117, 93, 93, 0.2), 0 6px 20px 0 rgba(0,0,0,0.19)

        }

        #btAdminPage{
            width: 250px;
            height: 130px;
        }

        #btClientPage{
            width: 250px;
            height: 130px;
            margin-left: 290px;
        }

    </style>
    <script>
        function init(){
            document.getElementById("btAdminPage").addEventListener("click", function(){
                location.href="/admin/login" //admin 페이지로 이동
            });
            
            document.getElementById("btClientPage").addEventListener("click", function(){
                location.href="/client/home" //client 페이지로 이동
            });

        };
        window.addEventListener("load", function(){
            init();
        });
    </script>
</head>
<body>
    <div id="wrapper">
        <h1 id="welcomeText">Welcome to BugDa Busters</h1>
        <br>
        <div id="container">
            <button id="btAdminPage">Admin</button>
            <button id="btClientPage">Member</button>
            
        </div>
    </div>
    
</body>
</html>