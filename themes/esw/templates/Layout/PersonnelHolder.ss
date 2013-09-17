<div id="wrapper">

<div id="content" class="typography">




<h1>$Title</h1><br />
$Content



<ul class="news-holder">
<% control Children %>
<li class="personnel">

<% if ContentImage %>

<div class="news-thumb-image" style="background: url(<% control ContentImage.SetWidth(130) %>$Filename<% end_control %>) no-repeat 13px 7px;">
<div class="news-thumb-mask$Pos">
</div>
</div>

<% end_if %> 



<h2><a href="$Link">$Title</a></h2>
<p class="date">$PersonnelTitle</p>
<span class="more"><a href="mailto:$PersonnelEmail">$PersonnelEmail</a></span></li>
<% end_control %>
</ul>



</div><!-- end content -->


<% include Sidebar %>




</div><!--end wrapper -->

