<div id="wrapper">

<div id="content" class="typography">

<% if ContentImage %>

<div class="interior-image" style="background: url(<% control ContentImage.SetWidth(300) %>$Filename<% end_control %>) no-repeat 12px 5px;">
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
<p><em>$PersonnelTitle</em><br />
<a href="mailto:$PersonnelEmail">$PersonnelEmail</a></p>
$Content


</div><!-- end content -->


<% include Sidebar %>




</div><!--end wrapper -->

