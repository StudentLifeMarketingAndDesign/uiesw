<div id="wrapper">

<div id="content" class="typography">



<h1>$Title</h1><br />
$Content

 
<ul class="news-holder">
<% loop allNews %>
<li>

<% if ProjectImage %>

<div class="news-thumb-image" style="background: url(<% loop NewsImage.SetWidth(200) %>$Filename<% end_loop %>) no-repeat 0px 0px;">
<div class="news-thumb-mask$Pos">
</div>
</div>

<% end_if %> 

<% if NewsLocation %>

<p class="location">$NewsLocation</p>

<% end_if %> 

<h2><a href="$Link">$Title</a></h2>
<% if NewsDate %>
<p class="date">$NewsDate</p>
<% end_if %>
$getSummaryHTML(Content, 34)
<% if ExternalLink %>
<span class="external-link"><a href="$ExternalLink">Read More</a></span>
<% else %>
<span class="more"><a href="$Link">Read More</a></span>
<% end_if %></li>
<% end_loop %>
</ul>

  <% if allNews.MoreThanOnePage %>
<p class="pageNumbers">
<% if allNews.PrevLink %>
<a href="$allNews.PrevLink"><< Prev</a> |
<% end_if %>

<% loop allNews.Pages %>
<% if CurrentBool %>
<strong>$PageNum</strong>
<% else %>
<a href="$Link" title="Go to page $PageNum">$PageNum</a>
<% end_if %>
<% end_loop %>

<% if allNews.NextLink %>
| <a href="$allNews.NextLink">Next >></a>
<% end_if %>
</p>
<% end_if %> 
<div class="clear"></div>
</div><!-- end content -->



<div id="sidebar">
<div id="projects">

<h3><a href="http://sustainability.uiowa.edu/events"><span>Sustainability</span> News</a></h3>
<p><em>Events from the Office of Sustainability</em></p>
<ul>

<% loop RSSFeedImport(3) %>
<li>
<h4><a href="$Link">$Title</a></h4>
<span class="external-link"><a href="$Link">Read More</a></span></li>
<% end_loop %>
</ul>

</div>
</div>



</div><!--end wrapper -->






