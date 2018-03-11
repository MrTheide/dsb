<%--
  Created by IntelliJ IDEA.
  User: olive
  Date: 06-03-2018
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hangman</title>
    <link rel="stylesheet" href="ninja-slider2.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<%!
    public int login = 0;
    public String errorMessage(){
        if(login == 0)
        return "";
        else if(login == 1) return "Username or password is incorrect";
        else if(login == 2) return "Please enter username and password";
        else return "Connection to game server lost.";
    }

%>
<nav id="top">
    <ul>
        <li><a href="#login">Login</a></li>
        <li>·<a href="#rules">Rules</a></li>
        <li>·<a href="#projects">Pictures</a></li>
        <li>·<a href="#contact">Contact</a></li>
    </ul>
</nav>


<ul class="side" id="menubar">
    <li><a href="#top" id="upper">Home</a></li>
    <li><a href="#login">Login</a></li>
    <li><a href="#rules">Rules</a></li>
    <li><a href="#pictures">Pictures</a></li>
    <li><a href="#contact" id="lower">Contact</a></li>
</ul>

<h2>HANGMAN</h2>

<div id="ninja-slider">
    <div class="inner">
        <ul>
            <li><a class="ns-img" href="images/dsb.png"></a><div class="caption">·Jonas : 162690·</div></li>

            <li><a class="ns-img" href="images/words.png"></a><div class="caption">·Oliver : 164917·</div></li>

            <li><a class="ns-img" href="images/private.png"></a><div class="caption">·Lucas : 164924·</div></li>

        </ul>
    </div>
</div>
<br><br>
<br><br>
<br><br>
<br><br>
<h3 id="login">Login</h3>
<p class="c">
    Welcome to online Hangman.<br>
    Thanks for stopping by!<br><br>
    <span class="bold">Note: This is a work in progress!</span>
</p>

<div class="login-page">
    <div class="form">
        <form class="login-form">
            Username:
            <input type="text" name ="Username" placeholder="student number"/>
            Password:
            <input type="password" name ="Password" placeholder="password"/>
            <button onClick="location.href='#login'">login</button>
            <%
                String Username = request.getParameter("Username");
                String Password = request.getParameter("Password");
                System.out.println(Username);
                System.out.println(Password);
                if(Username == "s162690" && Password == "1234") {

                    login = 0;

                }
                else if(Username == "" || Password == ""){
                    login = 2;
                }
                else{
                    if(login == 0)
                        login = 1;
                    else if(login == 1) login = 0;
                }

                System.out.println(login);
                /*
                 *  if authorization connection is lost: "Connection to login server lost"
                 *  else if login is wrong: "Username or password is incorrect"
                 *  else : hide login div and display game div or go to different HTML.
                 * */
            %>
            <p class="message"><%=errorMessage()%></p>
        </form>

    </div>
</div>



<h3 id="rules">Rules</h3>

<table class="jobs">
    <tr>
        <td class="tit"></td><td>Guess the hidden word, by entering all the letters in<br>
        the word, one at a time in the text field. The word<br>
        will only contain letters. Everytime you enter a letter<br>
        which isn't a part of the word, a new bodypart of the <br>
        hangmans victim will be drawn. When all bodyparts has <br>
        been drawn you lose, and the hangman wins. So guess<br>
        the word with as few mistakes as possible, and save<br>
        the poor guy.<br><br>
    </td>
    </tr>
    <tr>
        <td class="tit">Tries</td><td><span class="bold">6 mistakes and you lose.</span> <br><span class="italic">You only have to guess each letter once.</span></td>
    </tr>
    <tr>
        <td class="tit">Word</td><td><span class="bold">New word each round.</span><br><span class="italic">The word will be created automatically by the game.</span></td>
    </tr>
</table>
<br><br><br><br>
<p class="c">
    <span class="bold">Highscore:</span> <br><br>
    Jonas - 53 words <br>
    Oliver - 52 words<br>
    Lucas - 1 word<br>
    <br><br>
</p>







<h3 id="pictures">Pictures</h3>


<p class="c">Hej Oliver :) Nibh phasellus quis, ipsum duis, pede et ut mattis leo sapien, metus
    qui facilisis ad mi odio quam, interdum cursus dis. Nulla luctus quisque,
    sodales tortor, venenatis vestibulum, dictumst fermentum. Suspendisse erat
    risus quis fringilla. Luctus eget donec nibh ut ut, dolor posuere dui.
    Blandit velit occaecat, phasellus arcu porttitor lacus, a ultrices,
    etus metus, ut nibh augue mattis potenti.Lorem ipsum dolor sit amet,
    aliquam tempor ipsum nonummy sit, ullamcorper.
    Nibh phasellus quis, ipsum duis, pede et ut mattis leo sapien, metus
    qui facilisis ad mi odio quam, interdum cursus dis. Nulla luctus quisque,
    sodales tortor, venenatis vestibulum, dictumst fermentum. Suspendisse erat
    risus quis fringilla. Luctus eget donec nibh ut ut, dolor posuere dui.
    Blandit velit occaecat, phasellus arcu porttitor lacus, a ultrices,
    etus metus, ut nibh augue mattis potenti.Lorem ipsum dolor sit amet,
    aliquam tempor ipsum nonummy sit, ullamcorper.</p>
<div class="content">
    <ul class="photo-grid">
        <li>
            <a href="aa.html" class="default_popup">
                <figure>
                    <img src="images/IMG_1341%20-%20Kopi.JPG" height="180" width="320" alt="Arc de Triomphe">
                    <figcaption><p>Daenerys Targaryen<br>Game of Thrones</p></figcaption>
                </figure>
            </a>
        </li>
        <li>
            <a href="images/IMG_1678.jpg" class="default_popup">
                <figure>
                    <img src="images/IMG_1678.jpg" height="180" width="320" alt="Eiffel Tower">
                    <figcaption><p>Scrat<br>Ice Age</p></figcaption>
                </figure>
            </a>
        </li>
        <li><a href="aaa.html" class="default_popup">
            <figure>
                <img src="images/Robb%20Stark.JPG" height="180" width="320" alt="Notre Dame">
                <figcaption><p>Robb Stark<br>Game of Thrones</p></figcaption>
            </figure>
        </a>
        </li>
        <li>
            <a href="aa.html" class="default_popup">
                <figure>
                    <img src="images/IMG_1341%20-%20Kopi.JPG" height="180" width="320" alt="Arc de Triomphe">
                    <figcaption><p>Daenerys Targaryen<br>Game of Thrones</p></figcaption>
                </figure>
            </a>
        </li>
        <li>
            <a href="images/IMG_1678.jpg" class="default_popup">
                <figure>
                    <img src="images/IMG_1678.jpg" height="180" width="320" alt="Eiffel Tower">
                    <figcaption><p>Scrat<br>Ice Age</p></figcaption>
                </figure>
            </a>
        </li>
        <li><a href="aaa.html" class="default_popup">
            <figure>
                <img src="images/Robb%20Stark.JPG" height="180" width="320" alt="Notre Dame">
                <figcaption><p>Robb Stark<br>Game of Thrones</p></figcaption>
            </figure>
        </a>
        </li>
    </ul>
</div>







<h3 id="contact">Contact</h3>


<table class="contactinfo">
    <tr>
        <td class="titel">Phone</td>
        <td class="venstre">+45 1234 5678</td>
    </tr>
    <tr>
        <td class="titel">E-mail</td>
        <td class="venstre">student@dtu.dk
            <a href="#contact" class="default_popup"><img src="images/logo/WHITEmail.png" class="mail" alt="mail icon" title="Send e-mail (currently not working)"/></a>
        </td>
    </tr>
    <tr>
        <td class="titel">Address</td>
        <td class="venstre">Lautrupvang 15<br>
            2750, Ballerup
        </td>
    </tr>
    <tr class="noborder">
        <td class="titel">Social</td>
        <td class="venstre">
            <a href="https://www.facebook.com/" class="upper" target="_blank"><img src="images/logo/WHITEfacebook.png" alt="#" class="sociallogo"/></a>
            <a href="https://twitter.com" class="upper" target="_blank"><img src="images/logo/WHITEtwitter.png" alt="#" class="sociallogo"/></a>
            <a href="#contact" class="upper" target="_blank"><img src="images/logo/WHITElinkedin.png" alt="#" class="sociallogo"/></a>
            <a href="https://instagram.com/" class="upper" target="_blank"><img src="images/logo/WHITEinstagram.png" alt="#" class="sociallogo"/></a>
            <a href="https://www.9gag.com" class="upper" target="_blank"><img src="images/logo/WHITEgoogleplus.png" alt="#" class="sociallogo"/></a>
        </td>
    </tr>
</table>


<br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>

<a href="#top" class="up"><img src="images/up.png" alt="up"/></a>



<script src="ninja-slider.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script src="script.js" type="text/javascript"></script>
<script src="jquery.popup.js"></script>