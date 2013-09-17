<div id="wrapper">

<div id="content" class="typography">

<% if NewsImage %>

<div class="interior-image" style="background: url(<% control NewsImage.SetWidth(400) %>$Filename<% end_control %>) no-repeat 0px 0px;">
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

<% if NewsLocation %>
<p class="location">$NewsLocation</p>
<% end_if %> 

<% if NewsDate %>
<p class="date">$NewsDate </p><br />
<% end_if %> 

$Content

</div><!-- end content -->


<div id="sidebar">




<div id="projects">

<h3><a href="http://sustainability.uiowa.edu/events"><span>Sustainability</span> News</a></h3>
<p><em>Events from the Office of Sustainability</em></p>
<ul>

<% control RSSFeedImport(3) %>
<li>
<h4><a href="$Link">$Title</a></h4>
<span class="external-link"><a href="$Link">Read More</a></span></li>
<% end_control %>
</ul>

</div>




</div><!--end sidebar -->



</div><!--end wrapper -->




