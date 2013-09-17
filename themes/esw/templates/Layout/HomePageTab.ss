<div id="wrapper">

<div id="content" class="typography">

<% if FeatureImage %>

<div class="interior-image" style="background: url(<% control FeatureImage.SetWidth(326) %>$Filename<% end_control %>) no-repeat 0px 0px;">
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

$Content

</div><!-- end content -->


<% include Sidebar %>




</div><!--end wrapper -->


