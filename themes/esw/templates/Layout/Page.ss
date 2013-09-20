<div id="wrapper">

<div id="content" class="typography">

<% if ContentImage %>

<div class="interior-image" style="background: url(<% loop ContentImage.SetWidth(400) %>$Filename<% end_loop %>) no-repeat 0px 0px;">>
<div class="interior-mask">
<% if ImageCaption %>
<p>$ImageCaption.LimitWordCount(8)</p>
<% end_if %> 
</div><!--end interior mask-->
</div><!--end interior image-->

<% end_if %> 


<h1>$Title</h1><br />
$Form
$Content

</div><!-- end content -->


<% include Sidebar %>




</div><!--end wrapper -->





