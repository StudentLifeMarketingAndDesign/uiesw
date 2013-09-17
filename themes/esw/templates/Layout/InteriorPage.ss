<div id="wrapper">

<div id="content" class="typography interior">

<% if ContentImage %>

<div class="interior-image" style="background: url(<% control ContentImage.SetWidth(400) %>$Filename<% end_control %>) no-repeat 0px 0px;">
<div class="interior-mask">

<p>$Title</p>
 
</div><!--end interior mask-->
</div><!--end interior image-->

<% end_if %> 

<h1>$Title</h1><br />

<% if YoutubeLink %>

<div class="video">

<object width="336" height="205"><param name="movie" value="http://www.youtube.com/v/{$YoutubeLink}&hl=en_US&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/{$YoutubeLink}&hl=en_US&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="336" height="205"></embed></object>

<% if YoutubeLink %>
<p>$YoutubeCaption</p>
<% end_if %>

</div>

<% end_if %>

<% if InSection(about) %>
<div id="personnel" style="background: url('http://uiesw.org/assets/cheat.png');">
<div id="personnel_top"></div>
<ul class="projects-holder">
<% control ChildrenOf(our-leaders) %>
	<li>
	<div class="news_thumb" style="background: url(<% control ContentImage.SetWidth(130) %>$Filename<% end_control %>) no-repeat 13px 7px;">
	<div class="news_mask">
	</div>
	</div>
	<h2><a href="$Link">$Title</a></h2>
	<p><em>$PersonnelTitle</em></p>
	<p class="date"><a href="mailto:$PersonnelEmail">$PersonnelEmail</a></p>
	<span class="more"><a href="$Link">Read Bio</a></span></li>
	</li>
<% end_control %>
</ul>
<div class="clear"></div>
</div>

<!--
<div class="clear"></div>
<ul class="projects-holder">
<% control ChildrenOf(our-leaders) %>
<li class="position$Pos">

<% if ContentImage %>
<div class="thumb-image" style="background: url(<% control ContentImage.SetWidth(130) %>$Filename<% end_control %>) no-repeat 12px 15px;">
<div class="thumb-mask$Pos">
</div>
</div>
<% end_if %> 



<h2><a href="$Link">$Title</a></h2>
<p><em>$PersonnelTitle</em></p>
<p class="date"><a href="mailto:$PersonnelEmail">$PersonnelEmail</a></p>
<span class="more"><a href="$Link">Read Bio</a></span></li>
<% end_control %>
</ul>-->


<div class="clear"></div>
<% end_if %> 


$Content





</div><!-- end content -->


<% include Sidebar %>




</div><!--end wrapper -->





