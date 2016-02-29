<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
<% base_tag %>

<link rel="stylesheet" href="$ThemeDir/css/styles.css" type="text/css" media="print, projection, screen"/>
<link rel="stylesheet" href="$ThemeDir/css/ui.css" type="text/css" media="print, projection, screen"/>


<!--[if IE 7]><style type='text/css'>@import url($ThemeDir/css/ie7.css);</style><![endif]-->

<link rel="SHORTCUT ICON" href="$ThemeDir/images/favicon.ico" />

<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.0r4/build/reset/reset-min.css" /> 
<link href='http://fonts.googleapis.com/css?family=Josefin+Sans+Std+Light' rel='stylesheet' type='text/css'/>



<% if ClassName = HomePage %>

<link rel="stylesheet" type="text/css" href="$ThemeDir/css/ui.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script src="$BaseHref/mysite/code/javascript/ui_002.js" type="text/javascript"></script>
<script src="$BaseHref/mysite/code/javascript/ui.js" type="text/javascript"></script>
<script type="text/javascript">
            $(function() {
               $('#rotate > ul').tabs({ fx: { opacity: 'toggle' } }).tabs('rotate', 8000);
            });
        </script>  

<script type="text/javascript" src="$BaseHref/mysite/code/javascript/ui.tabs.js"></script>   
<style type="text/css">
#background-image {
background: url($BaseHref/themes/esw/images/background.jpg) repeat-x scroll 50% -17px;}
	</style>
<% end_if %>


<% if CurrentMember %>

<style type="text/css">
div.edit-box {
  margin: 0;
  font-size: 80% /*smaller*/;
  font-weight: bold;
  line-height: 1.1;
  text-align: center;
  position: fixed;
  top: 2em;
  left: auto;
  width: 8.5em;
  right: 2em;
}
div.edit-box p {
  margin: 0; 
  padding: 0.3em 0.4em;
  font-family: Arial, sans-serif;
  background: #900;
  border: thin outset #900;
  color: white;
}

div.edit-box a, div.edit-box em { display: block; margin: 0 0.5em }
div.edit-box a, div.edit-box em { border-top: 2px groove #900 }
div.edit-box a:first-child { border-top: none }
div.edit-box em { color: #CFC }

div.edit-box a:link { text-decoration: none; color: white }
div.edit-box a:visited { text-decoration: none; color: #CCC }
div.edit-box a:hover { background: black; color: white }
</style>

<% end_if %>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-426753-24']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</head>
<body>
<% if ClassName = HomePage %>
<div class="hidden"><a href="#rotate">Skip to main content</a></div>
<% else %>
<div class="hidden"><a href="#wrapper">Skip to main content</a></div>
<% end_if %>

<div id="container">
<div id="body">
<div id="division-wrapper">
<div id="division-header">
<p class="uiowa"><a href="http://www.uiowa.edu/">The University of Iowa</a></p>
<p class="ce"><a href="http://www.engineering.uiowa.edu/">College of Engineering</a></p>
<p class="esw"><a href="http://www.esustainableworld.org/">University of Iowa U.S. Green Building Council</a></p>
</div><!--end division header-->
</div><!--end division wrapper-->

<div id="background-image">

<div id="content-container">
<div id="header">
<h1 class="logo"><a href="/">UI Engineers for a Sustainable World</a></h1>
<div id="nav">

<% include Navigation %>

</div><!--end nav-->
</div><!--end header-->

</div><!--end content container-->

$Layout






</div><!--end body -->
<div class="clear"></div>
<div id="footer-wrapper">
<div id="footer">
<a title="Visit our Facebook page" href="http://www.facebook.com/group.php?gid=338349448876"><img class="right" src="$ThemeDir/images/facebook.png" alt="Facebook" longdesc="http://www.facebook.com/group.php?gid=338349448876" /></a>
<p class="footer-logo"><a href="/">UI Engineers for a Sustainable World"</a></p>

<div id="contact"><a href="http://www.uiowa.edu"><img src="$ThemeDir/images/uiowa-footer.png" width="192" height="31" alt="The University of Iowa" longdesc="http://www.uiowa.edu" /></a>
<p class="engineering"><a href="http://www.engineering.uiowa.edu/">College of Engineering</a></p>
<p>Iowa City, IA 52242<br />
Phone: (319) 335-5051<br />
Fax (319) 335-5660</p>
<br />
<p class="copywright">© <a href="http://www.uiowa.edu/">The University of Iowa</a> {$Now.Year}. All rights reserved.</p>
</div>
<!--end contact-->

  <ul class="menu">
       <% loop Menu(1) %>
                <li class="$URLSegment"><a href="$Link">$MenuTitle</a>
                 </li>
            <% end_loop %>
      </ul>

<!--- <a href="http://www.esustainableworld.org/"><img class="esw-img" src="$ThemeDir/images/esw2.png" alt="Engineers for a Sustainable World" longdesc="http://www.esustainableworld.org" /></a>--->


<!--end footer--></div>
<!--end footer wrapper--></div>
<!-- end container --></div>

<% if NotHomePage %>
</div>
<% end_if %> 

$BetterNavigator 

</body>
</html>







