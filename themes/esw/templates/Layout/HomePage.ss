
<div id="rotate">

<% loop Home %>



<div <% if First %>class="ui-tabs-panel" <% else %> class="ui-tabs-panel ui-tabs-hide"<% end_if %> id="tab$Pos">


<div class="summary">
<% if ExternalLink %>
<h2><a href="$ExternalLink">$Title</a></h2><br />
<% else %>
<h2><a href="$Link">$Title</a></h2><br />
<% end_if %>
<p>$Content.LimitWordCount(25)</p>

<% if ExternalLink %>
<span class="external-link"><a href="$ExternalLink">Read More</a></span>
<% else %>
<span class="more"><a href="$Link">Read More</a></span>
<% end_if %>

</div><!--end summary-->

<div class="feature-image" style="background: url(<% loop FeatureImage.SetWidth(484) %>$Filename<% end_loop %>) no-repeat 0px 0px;">
<div class="feature-mask">
</div><!--end feature-image-->
</div><!--end feature mask-->



</div><!--end tab 1 -->
<% end_loop %>





<ul class="ui-tabs-nav">


<% loop Home %>

<li id="menu$Pos" <% if First %>class="ui-tabs-selected"<% end_if %>>
<div class="thumbnail" style="background: url(<% loop FeatureImage.SetWidth(160) %>$Filename<% end_loop %>) no-repeat 0px 0px;">
<div class="thumbnail-mask$Pos">
<p><a href="/#tab$Pos">$Title</a></p>
</div><!--end thumbnail-->
</div><!--end thumbnail mask -->

</li>
<% end_loop %>
</ul>


</div><!--end rotate feature -->
</div><!-- end background-image -->


<div id="subfeature-wrapper">
<div id="subfeature">

<div id="projects">
<h3><a href="/projects/"><span>Current</span> Projects</a></h3>

<ul>
<% loop Projects %>
<li class="position$Pos">
<h4><a href="$Link">$Title</a></h4>
<p class="date">$ProjectsScope</p>
<p>$Content.LimitWordCount(30)</p>
<% if ExternalLink %>
<span class="external-link"><a href="$ExternalLink">Read More</a></span>
<% else %>
<span class="more"><a href="$Link">Read More</a></span>
<% end_if %></li>

<% end_loop %>
</ul>


</div><!--end projects-->

<div id="join">
<h3><a href="$BaseHref/join-uiesw/"><span>Join</span> UI USGBC</a></h3>
<ul>
<li class="one"><p>Sign Up to the USGBC Email List</p></li>
<li class="two"><p>Come to a USGBC General Meeting </p></li>
<li class="three"><p>Join a Project </p></li>
</ul>

<p class="join"><a href="$BaseHref/join-uiesw/">Join UI USGBC</a></p>

</div><!--end join -->


<div id="news">

<h3><a href="/news-and-events/"><span>News</span><strong> &amp;</strong> Events</a></h3>
<ul>

<% loop News %>
<li>
<h4><a href="$Link">$Title</a></h4>
<% if NewsDate %>
<p class="date">$NewsDate</p>
<% end_if %>
$getSummaryHTML(Content, 6)
<% if ExternalLink %>
<span class="external-link"><a href="$ExternalLink">Read More</a></span>
<% else %>
<span class="more"><a href="$Link">Read More</a></span>
<% end_if %></li>
<% end_loop %>
</ul>



</div><!--end news -->

<div class="clear"></div>

</div><!-- end subfeature-->
</div><!--end subfeature wrapper-->
