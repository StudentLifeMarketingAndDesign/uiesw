<div id="wrapper">

<div id="content" class="typography">


<h1>$Title</h1><br />
$Content

<ul class="projects-holder">
<% control AllChildren %>
<li class="position$Pos">
<% if FeatureImage %>

<div class="thumb-image" style="background: url(<% control FeatureImage.SetWidth(150) %>$Filename<% end_control %>) no-repeat 0px 0px;">
<div class="thumb-mask$Pos">
</div>
</div>

<% end_if %> 


<h2><a href="$Link">$Title</a></h2>
<p>$Content.LimitWordCount(5)</p>



<span class="more"><a href="$Link">Read More</a></span></li>

<% end_control %>
</ul>

</div><!-- end content -->


<% include Sidebar %>




</div><!--end wrapper -->






