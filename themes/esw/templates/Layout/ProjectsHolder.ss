<div id="wrapper">

<div id="content" class="typography">


<h1>$Title</h1><br />
$Content

<ul class="projects-holder">
<% loop AllChildren %>
<li class="position$Pos">
<% if FeatureImage %>

<div class="thumb-image" style="background: url(<% loop FeatureImage.SetWidth(150) %>$Filename<% end_loop %>) no-repeat 0px 0px;">
<div class="thumb-mask$Pos">
</div>
</div>

<% end_if %> 


<h2><a href="$Link">$Title</a></h2>
<p>$Content.LimitWordCount(5)</p>



<span class="more"><a href="$Link">Read More</a></span></li>

<% end_loop %>
</ul>

</div><!-- end content -->


<% include Sidebar %>




</div><!--end wrapper -->






