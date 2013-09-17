<div id="sidebar">

<% if NotNewsPage %>

<div id="news">

<h3><a href="/news-and-events/"><span>News</span><strong> &amp;</strong> Events</a></h3>
<ul>

<% control News %>
<li>
<h4><a href="$Link">$Title</a></h4>
<% if NewsDate %>
<p class="date">$NewsDate</p>
<% end_if %>
$getSummaryHTML(Content, 10)
<% if ExternalLink %>
<span class="external-link"><a href="$ExternalLink">Read More</a></span>
<% else %>
<span class="more"><a href="$Link">Read More</a></span>
<% end_if %></li>
<% end_control %>
</ul>



</div><!--end news -->

<% end_if %>

<% if ClassName = NewsHolder %>


<div id="news">

<br />
<ul>

<% control NewsList %>
<li>
<h4><a href="$Link">$Title</a></h4>
<% if NewsDate %>
<p class="date">$NewsDate</p>
<% end_if %>
$getSummaryHTML(Content, 10)
<% if ExternalLink %>
<span class="external-link"><a href="$ExternalLink">Read More</a></span>
<% else %>
<span class="more"><a href="$Link">Read More</a></span>
<% end_if %></li>
<% end_control %>
</ul>

<p><a href="/news-and-events-list/">View a complete list of<br /> current and past events</a></p>



</div><!--end news -->

<% end_if %>






<% if ClassName = NewsPage %>


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



<% end_if %>


</div><!--end sidebar -->