<!DOCTYPE html>
<html>
<head>
  {asset name="Head"}
</head>
<body id="{$BodyID}" class="{$BodyClass}">

<!-- BuySellAds Ad Code -->
{literal}
<script type="text/javascript">
(function(){
  var bsa = document.createElement('script');
     bsa.type = 'text/javascript';
     bsa.async = true;
     bsa.src = 'http://s3.buysellads.com/ac/bsa.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(bsa);
})();
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-37051853-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
{/literal}
<!-- End BuySellAds Ad Code -->

   <div id="Frame">
      <div class="Head" id="Head">
         <div class="Row">
            <strong class="SiteTitle"><a href="{link path="/"}">{logo}</a></strong>
            <div class="SiteSearch">
		<form action="search.php" method="POST" />
			<input type="radio" name="type" value="post" /> Post only
			<input type="radio" name="type" value="title" /> Title only
			<input id="Form_Search" class="InputBox" name="search" placeholder="Search" />
			<input id="Form_Go" class="Button" type="submit" value="Go" />
		</form>
	    </div>
            <ul class="SiteMenu">
               <!-- {dashboard_link} -->
               {discussions_link}
               {activity_link}
               <!-- {inbox_link} -->
               {custom_menu}
               <!-- {profile_link}
               {signinout_link}  -->
            </ul>
         </div>
      </div>
      <div id="Body">
         <div class="Row">
            <div class="Column PanelColumn" id="Panel">
               {module name="MeModule"}
               {asset name="Panel"}
            </div>
            <div class="Column ContentColumn">
            <div class="Tabs DiscussionTabs">{breadcrumbs} <span class="Breadcrumbs" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><span class="Crumb"> &rsaquo; </span><span itemprop="title">{$Title}</span></span></div>
			<div id="content">{asset name="Content"}</div>
			</div>
         </div>
      </div>
      <div id="Foot">
<ul style="display: inline;">
<li style="width: 600px; padding: 5px; text-align:left; float: left;">2008-2013 &copy LowEndBox. Powered by <a href="/web/20130502114727/http://vanillaforums.org/" rel="nofollow">Vanilla</a>. All date/time in UTC.</li>
<li style="width: 200px; float: right;"><iframe allowtransparency="true" frameborder="0" scrolling="no" src="http://platform.twitter.com/widgets/follow_button.1371247185.html#_=1371780736165&amp;id=twitter-widget-0&amp;lang=en&amp;screen_name=LowEndNetwork&amp;show_count=false&amp;show_screen_name=true&amp;size=m" class="twitter-follow-button twitter-follow-button" title="Twitter Follow Button" data-twttr-rendered="true" style="width: 165px; height: 20px;"></iframe>
</li>
<li style="clear: both;"></li></ul>
            {asset name="Foot"}
      </div>
   </div>
   {event name="AfterBody"}
{literal}
<script type="text/javascript">
adroll_adv_id = "QJSDIDC4UFEMBMV27GEVT4";
adroll_pix_id = "GMBHGZ3CGRFJLERGSOGDO4";
(function () {
var oldonload = window.onload;
window.onload = function(){
   __adroll_loaded=true;
   var scr = document.createElement("script");
   var host = (("https:" == document.location.protocol) ? "https://s.adroll.com" : "http://a.adroll.com");
   scr.setAttribute('async', 'true');
   scr.type = "text/javascript";
   scr.src = host + "/j/roundtrip.js";
   ((document.getElementsByTagName('head') || [null])[0] ||
    document.getElementsByTagName('script')[0].parentNode).appendChild(scr);
   if(oldonload){oldonload()}};
}());
</script>
{/literal}
</body>
</html>
