<!DOCTYPE html>
<!-- saved from url=(0061)https://www.cyberforum.ru/csharp-beginners/thread1787565.html -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="ru" class=" ya-page_js_yes"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script async="" src="./Создать класс Point - C# .NET 4_files/async-ads.js.загружено"></script><script async="" src="./Создать класс Point - C# .NET 4_files/tag.js.загружено"></script>
	<title>Создать класс Point - C# .NET 4.x - Киберфорум</title>
	<link rel="canonical" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html">
	
	<!--<base href="https://www.cyberforum.ru/">--><base href=".">


<meta name="keywords" content="C#, .NET 4.x, Создать класс Point">
<meta name="description" content="Создать класс Point C#, .NET 4.x Решение и ответ на вопрос 1787565">

<meta name="viewport" content="width=device-width">

<link rel="stylesheet" type="text/css" href="./Создать класс Point - C# .NET 4_files/cyberforum.css">
<link rel="stylesheet" type="text/css" href="./Создать класс Point - C# .NET 4_files/vbulletin_important.css">



<script type="text/javascript" async="" src="./Создать класс Point - C# .NET 4_files/f.txt"></script><script type="text/javascript" async="" charset="utf-8" src="./Создать класс Point - C# .NET 4_files/all.js.загружено"></script><script>
<!--
var SESSIONURL = "";
var SECURITYTOKEN = "1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e";
var IMGDIR_MISC = "//cyberstatic.net/images/misc";
var vb_disable_ajax = parseInt("0", 10);
// -->
</script><style type="text/css" id="operaUserStyle"></style>

<script src="./Создать класс Point - C# .NET 4_files/yahoo-dom-event.js.загружено"></script>
<script src="./Создать класс Point - C# .NET 4_files/connection-min.js.загружено"></script>
<script src="./Создать класс Point - C# .NET 4_files/jquery.min.js.загружено"></script>
<script src="./Создать класс Point - C# .NET 4_files/jquery.browser.min.js.загружено"></script>

<script src="./Создать класс Point - C# .NET 4_files/vbulletin_global.js.загружено"></script>

<script src="./Создать класс Point - C# .NET 4_files/vbulletin_menu.js.загружено"></script>
<script src="./Создать класс Point - C# .NET 4_files/vbulletin_vbpost.js.загружено"></script>

<script src="./Создать класс Point - C# .NET 4_files/vbulletin_post_loader.js.загружено"></script>




	<link rel="alternate" type="application/rss+xml" title="Форум программистов и сисадминов Киберфорум RSS Feed" href="https://www.cyberforum.ru/external.php?type=RSS2">
	
		<link rel="alternate" type="application/rss+xml" title="C# для начинающих - Киберфорум RSS" href="https://www.cyberforum.ru/external.php?type=RSS2&amp;forumids=91">
	

<link type="application/opensearchdescription+xml" rel="search" href="https://www.cyberforum.ru/opensearch.xml" title="CyberForum.ru">
<link rel="stylesheet" href="./Создать класс Point - C# .NET 4_files/geshi.css" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="./Создать класс Point - C# .NET 4_files/spoiler.css">
<script>
	var IMGDIR_BUTTON = "//cyberstatic.net/images/buttons";
</script>





<!-- Editor CSS automatically added by functions_editor.php at line 685 -->
<!-- Editor Styles -->
<style type="text/css" id="vbulletin_editor_css_dynamic">
<!--
@import url("//cyberstatic.net/clientscript/vbulletin_editor.css");

.vBulletin_editor {
	background: #E1E1E2;
	padding: 5px;
}
.imagebutton {
	background: #E1E1E2;
	color: #000000;
	padding: 1px;
	border: none;
}
.ocolor, .ofont, .osize, .osmilie, .osyscoloar, .smilietitle {
	background: #FFFFFF;
	color: #000000;
	border: 1px solid #FFFFFF;
}
.popup_pickbutton {
	border: 1px solid #FFFFFF;
}
.popup_feedback {
	background: #FFFFFF;
	color: #000000;
	border-right: 1px solid #FFFFFF;
}
.popupwindow {
	background: #FFFFFF;
}
#fontOut, #sizeOut, .popup_feedback div {
	background: #FFFFFF;
	color: #000000;
}
.alt_pickbutton {
	border-left: 1px solid #E1E1E2;
}
.popup_feedback input, .popup_feedback div
{
	border: 0px solid;
	padding: 0px 2px 0px 2px;
	cursor: default;
	font: 8pt tahoma;
	overflow: hidden;
}
-->
</style>
<!-- / Editor Styles -->
<style type="text/css">
.krqq_popupbutton {
background: url(//cyberstatic.net/clientscript/kr_scripts/quickquote/quote.png) no-repeat left;
background-color: #FFFFCC;
padding:3px 2px 3px 20px;
font-weight: bold; 
border: 1px solid #316AC5; 
z-index: 1000; 
cursor: pointer; 
position: absolute; 
visibility: hidden;
}
</style>
<script>
<!--
var krquoteit_insertnick_title = 'Ник в ответ',
krquoteit = 'Цитировать',
krquoteit_title = 'Цитировать выделенный текст',
krquoteit_bburl = 'https://www.cyberforum.ru',
krquoteit_displaytime = 2000,
krquoteit_ldisplaytime = 3000;
//-->
</script>
<script src="./Создать класс Point - C# .NET 4_files/krquickquote.min.js.загружено"></script><script src="./Создать класс Point - C# .NET 4_files/cse_element__ru.js.загружено" type="text/javascript"></script><link type="text/css" href="./Создать класс Point - C# .NET 4_files/default+ru.css" rel="stylesheet"><link type="text/css" href="./Создать класс Point - C# .NET 4_files/default.css" rel="stylesheet"><style type="text/css">#ya-site-form0,#ya-site-form0 .ya-site-form__form,#ya-site-form0 .ya-site-form__input,#ya-site-form0 .ya-site-form__input-text,#ya-site-form0 .ya-site-form__search-precise,#ya-site-form0 .ya-site-form__submit{font-size:12px!important;color:#000!important}#ya-site-form0 .ya-site-form__form-form{display:block;margin:0;padding:0}#ya-site-form0 .ya-site-form__input{margin:0;padding:0}#ya-site-form0 .ya-site-form__search-precise{margin:0}#ya-site-form0 .ya-site-form__search-precise__radio{padding:0}#ya-site-form0 .ya-site-form__gap,#ya-site-form0 .ya-site-form__gap-i,#ya-site-form0 .ya-site-form__logo-img{margin:0;padding:0}#ya-site-form0{margin:0!important;padding:0!important}#ya-site-form0 .ya-site-form__logo-wrap{width:65px;vertical-align:top;border-collapse:collapse}#ya-site-form0 .ya-site-form__logo{display:block;width:52px;margin:0;padding:0 6px 0 0;text-decoration:none}#ya-site-form0 .ya-site-form__logo-img{width:52px;height:21px;border:0!important}#ya-site-form0 .ya-site-form__search-wrap{border-collapse:collapse}#ya-site-form0 .ya-site-form__search{font-size:12px!important;width:100%}#ya-site-form0 .ya-site-form__search-input{padding:6px}#ya-site-form0 .ya-site-form__search-input-layout,#ya-site-form0 .ya-site-form__search-input-layout-l,#ya-site-form0 .ya-site-form__search-input-layout-r{font-size:12px!important;padding:0;vertical-align:middle;border:0;border-collapse:collapse}#ya-site-form0 .ya-site-form__search-input-layout,#ya-site-form0 .ya-site-form__search-input-layout-l{width:100%}#ya-site-form0 .ya-site-form__search-precise{padding:0 18px 5px 6px;text-align:left;vertical-align:top}#ya-site-form0 .ya-site-form__search-precise-i{white-space:nowrap}#ya-site-form0 .ya-site-form__search-precise__radio{width:auto;margin:0 .3em 0 0;vertical-align:middle;background:0 0}#ya-site-form0 .ya-site-form__search-precise__label{margin:0 .4em 0 0;padding:0;vertical-align:middle}#ya-site-form0 .ya-site-form__input-text{width:100%;margin:0!important;cursor:text;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;background-color:#fff;border:1px solid #7f9db9;outline-style:none;-webkit-appearance:textfield}#ya-site-form0 .ya-site-form__input-text_type_hint{background-repeat:no-repeat;background-position:.2em 50%}#ya-site-form0 .ya-site-form__submit{display:block;width:auto;margin:0 0 0 5px}#ya-site-form0 .ya-site-form__arrow-wrap{overflow:hidden;width:30px;padding:0;vertical-align:middle}#ya-site-form0 .ya-site-form__arrow{position:relative}#ya-site-form0 .ya-site-form__arrow-a{position:absolute;top:50%;right:0;width:0;height:0;margin-top:-59px;border:solid transparent;border-width:59px 0 59px 30px;-moz-border-end-style:dotted}#ya-site-form0 .ya-site-form__wrap{width:100%;table-layout:fixed;border-collapse:collapse}#ya-site-form0 .ya-site-form__gap{border:0}#ya-site-form0 .ya-site-form__gap-i{width:9em}#ya-site-form0.ya-site-form_arrow_yes .ya-site-form__search-input{padding-right:0}#ya-site-form0.ya-site-form_logo_left .ya-site-form__logo{margin-top:4px;margin-left:5px}#ya-site-form0.ya-site-form_logo_top .ya-site-form__logo{display:block;margin:6px 0 0 6px}#ya-site-form0 .ya-site-form__submit_type_image{width:19px;height:15px;outline:0;cursor:pointer;border:0}#ya-site-form0 .ya-site-form__submit_type_image { background: url(https://site.yandex.net/v2.0/i/search.png) no-repeat }#ya-site-form0 .ya-site-form__input-text_type_hint { background-image:url(https://site.yandex.net/v2.0/i/yandex-hint-rb.png) }#ya-site-form0 .ya-site-form__form * { font-size: 13px !important }#ya-site-form0 .ya-site-form__form .ya-site-form__input-text { font-style: normal!important }#ya-site-form0 .ya-site-form__form .ya-site-form__input-text { font-weight: normal!important }#ya-site-form0 .ya-site-form__form .ya-site-form__input-text { color: #000000!important }#ya-site-form0 .ya-site-form__form .ya-site-form__input-text { border-color: #7f9db9!important }#ya-site-form0 .ya-site-form__form .ya-site-form__input-text:focus { border-color: #7f9db9!important }#ya-site-form0 .ya-site-form__form .ya-site-form__input-text { background-color: #ffffff!important }#ya-site-form0 .ya-site-form__search, #ya-site-form0 .ya-site-form__search td, #ya-site-form0 .yaform__precise-i { background-color: transparent !important }#ya-site-form0 .ya-site-form__search-precise__label { color:#000000 !important }#ya-site-form0 .ya-site-form__arrow-a { border-left-color: transparent }</style><style type="text/css">.gsc-control-cse{font-family:arial, sans-serif}.gsc-control-cse .gsc-table-result{font-family:arial, sans-serif}.gsc-refinementsGradient{background:linear-gradient(to left,rgba(255,255,255,1),rgba(255,255,255,0))}.gsc-control-cse{border-color:#FFFFFF;background-color:#FFFFFF}input.gsc-input,.gsc-input-box,.gsc-input-box-hover,.gsc-input-box-focus{border-color:#D9D9D9}.gsc-search-button-v2,.gsc-search-button-v2:hover,.gsc-search-button-v2:focus{border-color:#666666;background-color:#CECECE;background-image:none;filter:none}.gsc-search-button-v2 svg{fill:#FFFFFF}.gsc-tabHeader.gsc-tabhActive,.gsc-refinementHeader.gsc-refinementhActive{color:#CCCCCC;border-color:#CCCCCC;background-color:#FFFFFF}.gsc-tabHeader.gsc-tabhInactive,.gsc-refinementHeader.gsc-refinementhInactive{color:#CCCCCC;border-color:#CCCCCC;background-color:#FFFFFF}.gsc-webResult.gsc-result,.gsc-results .gsc-imageResult{border-color:#FFFFFF;background-color:#FFFFFF}.gsc-webResult.gsc-result:hover{border-color:#FFFFFF;background-color:#FFFFFF}.gs-webResult.gs-result a.gs-title:link,.gs-webResult.gs-result a.gs-title:link b,.gs-imageResult a.gs-title:link,.gs-imageResult a.gs-title:link b{color:#000080}.gs-webResult.gs-result a.gs-title:visited,.gs-webResult.gs-result a.gs-title:visited b,.gs-imageResult a.gs-title:visited,.gs-imageResult a.gs-title:visited b{color:#0066FF}.gs-webResult.gs-result a.gs-title:hover,.gs-webResult.gs-result a.gs-title:hover b,.gs-imageResult a.gs-title:hover,.gs-imageResult a.gs-title:hover b{color:#0066FF}.gs-webResult.gs-result a.gs-title:active,.gs-webResult.gs-result a.gs-title:active b,.gs-imageResult a.gs-title:active,.gs-imageResult a.gs-title:active b{color:#0000CC}.gsc-cursor-page{color:#000080}a.gsc-trailing-more-results:link{color:#000080}.gs-webResult:not(.gs-no-results-result):not(.gs-error-result) .gs-snippet,.gs-fileFormatType{color:#000000}.gs-webResult div.gs-visibleUrl{color:#008000}.gs-webResult div.gs-visibleUrl-short{color:#008000}.gsc-cursor-box{border-color:#FFFFFF}.gsc-results .gsc-cursor-box .gsc-cursor-page{border-color:#CCCCCC;background-color:#FFFFFF;color:#CCCCCC}.gsc-results .gsc-cursor-box .gsc-cursor-current-page{border-color:#CCCCCC;background-color:#FFFFFF;color:#CCCCCC}.gsc-webResult.gsc-result.gsc-promotion{border-color:#336699;background-color:#FFFFFF}.gsc-completion-title{color:#000080}.gsc-completion-snippet{color:#000000}.gs-promotion a.gs-title:link,.gs-promotion a.gs-title:link *,.gs-promotion .gs-snippet a:link{color:#0000CC}.gs-promotion a.gs-title:visited,.gs-promotion a.gs-title:visited *,.gs-promotion .gs-snippet a:visited{color:#0000CC}.gs-promotion a.gs-title:hover,.gs-promotion a.gs-title:hover *,.gs-promotion .gs-snippet a:hover{color:#0000CC}.gs-promotion a.gs-title:active,.gs-promotion a.gs-title:active *,.gs-promotion .gs-snippet a:active{color:#0000CC}.gs-promotion .gs-snippet,.gs-promotion .gs-title .gs-promotion-title-right,.gs-promotion .gs-title .gs-promotion-title-right *{color:#000000}.gs-promotion .gs-visibleUrl,.gs-promotion .gs-visibleUrl-short{color:#008000}.gcsc-find-more-on-google{color:#000080}.gcsc-find-more-on-google-magnifier{fill:#000080}</style><style type="text/css">:root table[id^="post"] ~ div[style^="margin: 3px 0px"][style*="display"], :root div[data-type="_mgwidget"]:not(.eyeo), :root div[class*="publift-widget-"]:has(.fuse-slot-sticky), :root img[src*="top.mail.ru/counter?"], :root img[src*="//i.i.ua/r/"], :root img[src*="//counter.yadro.ru/"], :root img[onclick*="clustrmaps.com/counter/"], :root img[data-src="https://catalog.orbita.co.il/orbita.gif"], :root a[title="TopTracker.Ru - Рейтинг трекеров."], :root a[href^="http://click.hotlog.ru/"], :root [title="uWeb Counter"], :root body > div[class^="_"][class*=" _"][class$="_stBig"], :root body > iframe[style^="position"][style*="fixed"][id^="iFb"][src^="/?"], :root body > div[id^="dV"][style^="width"][style*="height"][style*="position"][style*="fixed"][style*="overflow"][style*="z-index"][style*="background"], :root a[href*="://news.mirtesen.ru/newdata/"], :root .app.blog-post-page .secondary-header-ad-block, :root .app.blog-post-page #blog-post-item-video-ad, :root #root > .app > .sticky-button, :root #root > .app .sportrecs, :root #root > .app .brand-widget__right-cl, :root #root > .app .adfox-top, :root #root > .app .adfox, :root #root > .app #very-right-column, :root body.has-brand .b-content__main > div[id]:not([class]):empty, :root body.has-brand .b-content__main .b-player a[href*="aHR0c"], :root div[style="width: 252px; height: 450px; position: fixed; right: 0px; top: 0px; overflow: hidden; z-index: 10000;"], :root thetruestory-widget-top, :root body > div[style="background-color: #FFF;height: 100px;position: fixed;bottom: 0px;width: 100%;max-width: 1200px;left: 50%;transform: translateX(-50%);z-index:2147483647"], :root object[data*="ads.com/clk.swf"], :root img[width="120"][height="600"], :root img[src^="/stat/"][width="88"][height="31"], :root img[src*="://cp.beget.com/promo_data/"], :root iframe[title="mixAd"], :root iframe[src*="tureckiy-serial.ru/"][src$=".php"], :root iframe[src*="trafic-media.ru"], :root iframe[src*="litres.ru/static/widgets"], :root iframe[src*="laim.tv/rotator/"], :root iframe[src*="fwdcdn.com/frame/partners/"], :root iframe[src*="://promo-bc.com/"], :root iframe[src*="://goodgame.ru/html/embed-player/dist/index.html?partner="], :root iframe[src*="://ab.adpro.com.ua/"], :root iframe[src*="/carta.ua/ajax/widget."], :root iframe[src*="/3647.tech"], :root iframe[id^="republer"], :root iframe[id^="marketgid_"], :root iframe[src*="utraff.com"], :root div[style*="am15.net/img/player_skins"], :root div[id^="zcbclk"], :root a[href^="http://hitcounter.ru/top/stat.php"], :root div[id^="yandex_rtb"], :root div[id^="smi2adblock_"], :root div[id^="rtn4p"], :root div[id^="republer_"], :root div[id^="news_nest_net_ru"], :root div[id^="news_nest_msk_ru"], :root div[id^="itizergroup_"], :root div[id^="infox_"], :root div[id^="gnezdo_ru_"], :root div[id^="criteo-"][style], :root div[id^="cpa_rotator_block"], :root div[id^="advertur_"], :root div[id^="admixer-"], :root div[id^="DIV_DA_"], :root div[id*="Teaser_Block"], :root div[data-adv-type="dfp"], :root iframe[src*="hd.gg33.top/"], :root div[class^="da-ya-widget"], :root div[class^="cnt32_"][id^="cnt_rb_"], :root div[class^="bidvol-widget-"], :root div[id^="bidvol-widget-"], :root div[class^="adfinity_block_"], :root div[class*="td-a-rec-id-"], :root div[class*="relap"][class*="-rec-item"], :root a[onclick*="trtkp.ru"], :root div[id^="news_2xclick_ru_"], :root a[onclick*="offergate-amigo"], :root a[onclick*="n284adserv.com"], :root a[href^="https://wcm-ru.frontend.weborama.fr/fcgi-bin/dispatch.fcgi?"], :root a[href^="https://msetup.pro"], :root a[href^="https://kshop"][href*=".com/"], :root a[href^="https://bongacams"][href*="com/track?"], :root a[href^="http://tds-2.ru"], :root a[href^="http://putanapartners.com/go."], :root a[href^="http://olivka.biz/"], :root a[href^="http://luckiestclick.com/goto."], :root a[href^="http://glprt.ru/affiliate/"], :root a[href^="http://datxxx.com"], :root a[href^="http://browserload.info/"], :root a[href^="http://amigodistr.ru/"], :root a[href^="/images/obmen/"][href$=".php"][target="_blank"], :root a[href^="/go/ufiler?"], :root a[href^="/go/ubar?"], :root a[href="http://advert.mirtesen.ru/"], :root a[href*="xxxrevpushclcdu.com"], :root a[href*="webdiana.ru/click"], :root a[href*="ultrabit.ws"], :root a[href*="twtn.ru/"], :root a[href*="tvks.ru"], :root a[href*="trtkp.ru"], :root a[href*="trklp.ru"], :root a[href*="trk-1.com"], :root a[href*="tptrk.ru"], :root a[href*="torrentum.ru"], :root div[id^="adpartner-jsunit-"], :root a[href*="sviruniversal.com/"], :root a[href*="shakespoint.com"], :root a[href*="shakescash.com"], :root iframe[src*="traffic-media.co"], :root a[href*="shakes.pro"], :root a[href*="sapmedia.ru"], :root a[href*="sandratand.ru"], :root a[href*="rexchange.begun.ru/rclick?"], :root a[href*="retagapp.com"], :root a[href*="tvroff.net"], :root a[href*="refpazus.top"], :root a[href*="re-directme.com"], :root a[href*="problogrus.ru"], :root a[href*="please-direct.com"], :root a[href*="octoclick.net"], :root a[href*="news-sphere.com"], :root a[href*="news"][href*="favid"], :root a[href*="netcrys.com"], :root a[href*="offhealth.ru"], :root a[href*="muz-loader.site"], :root a[href*="media-rotate.com"], :root a[href*="://gopremiumsoft.com/"], :root a[href*="makegreat.website"], :root a[href*="litewebbusiness.com"], :root a[href*="://tdsrotations.ru/"], :root a[href*="lifebloggersz.ru"], :root .min-width-normal > #popup_container ~ #fade, :root a[href*="kshop2.biz"], :root a[href*="kodielinktrust.ru"], :root a[href*="kma1.biz"], :root a[href*="://bubblevard.com/"], :root div[id^="ad-div-"], :root a[href*="kinqon.ru"], :root a[href^="https://prime.rambler.ru/promo/"], :root a[href*="herrabjec.pro"], :root a[href*="gocdn.ru"], :root a[href*="flylinks.pw"], :root a[href^="https://a-ads.com/"], :root a[href*="feellights.ru"], :root a[href*="/kshop3.biz"], :root a[href*="cpl1.ru"], :root a[href*="cpagetti1.com"], :root a[href^="https://startgaming.net/tienda/" i], :root a[href^="http://handgripvegetationhols.com/"], :root hl-adsense, :root a[href*="bestforexplmdb.com"], :root a[href*="awesomeredirector"], :root a[href*="amigo-biz.ru/ads/click"], :root a[href^="https://get.surfshark.net/aff_c?"][href*="&aff_id="] > img, :root a[href*="://clickstats.online/"], :root a[href*="advertwebgid.ru"], :root a[href*="://ya-cdn.ru/r/"], :root a[href^="https://www.mrskin.com/account/"], :root a[href*="://ya-browser.ru/r/"], :root a[href*="://www.meendoru.net/?partner="], :root a[href*="://segodnia.club/"], :root a[href*="://ufiler-pro.ru/"], :root img[title="bigmir)net TOP 100"], :root a[href^="https://lnkxt.bannerator.com/"], :root a[href*="://tlmnt"][href*="/tracker/?partner="], :root a[href*="://telamon"][href*="/tracker/?partner="], :root .player-wrap > #kt_player ~ .spot-box, :root a[href*="://tatarkoresh.ru"], :root a[href*="://getfiletds.ru/"], :root a[href*="://takenewsoft.ru/"], :root [href^="https://www.brighteonstore.com/products/"] img, :root amp-connatix-player, :root a[href*="://sdertjnbv.xyz/"], :root a[href^="https://t.ajump1.com/"], :root a[href*="://ruprivate.club/"], :root a[href*="://r.advmusic.com/"], :root [href*="pigiuqproxy.com"], :root a[href*="://profiledbase.com/"], :root a[href*="://lapina.best/"], :root a[href*="://ourbrowser.net"], :root [data-link*="/sb/clk/"], :root a[href*="://offergate-apps-phkr.com/"], :root a[href*="://loderkkis.ru"], :root a[href*="://kinobud.site/"], :root a[href*="://hypmag.ru/search/pereh.php"], :root a[href*="://gridsiali.com/"], :root a[href*="://gonewfiles.ru/"], :root a[href*="://go.click2bit.net/"], :root a[href*="ex.24smi.info"], :root a[href*="://go.btraffic.net/"], :root a[href*="://search-cdn.ru/r/"], :root a[href*="://getyousoft.ru/"], :root a[target="_blank"][onmousedown="this.href^='http://paid.outbrain.com/network/redir?"], :root a[href*="://getbrauzer.ru/"], :root body.has-brand .b-content__main > div[style^="height: 250px; overflow: hidden;"], :root a[href*="://filetaker.ru/"], :root a[href*="//febrare.ru/"], :root a[href*="://filesmytop.ru/"], :root a[href*="//offergate.pro/"], :root a[href*="://etcodes.com/"], :root a[href*="://et-cod.com/"], :root a[href*="://clickbytes.ru/"], :root a[href*="://click2soft.ru/"], :root a[href*="://bs.serving-sys.ru/"], :root a[href*="/universallnk.net/"], :root a[href*="/universal-lnk.net/"], :root .flex-promo-series > .left-col > :not(#players):not(.serial-series-info), :root [href^="https://cpa.10kfreesilver.com/"], :root a[href*="://riaccaw.com/"], :root a[href*="/u-loads.ru/"], :root a[href*="/sb/clk/"], :root a[href*="/rlink/simptizer/"], :root a[href*="/myuniversalnk.com/"], :root a[href*="/mosday.ru/ad/"], :root a[href*="//softboxik1.ru/"], :root a[href*="/uloads.ru/"], :root a[href*="/go.1k3.net/"], :root a[href*="/get-torrent.ru"], :root a[href^="https://adclick.g.doubleclick.net/"], :root a[href*="/fastvk.com"], :root a[href^="https://engine.phn.doublepimp.com/"], :root a[href*="/ber-ter.com"], :root a[href*="/afftraf.co/"], :root a[href*="/onvix.co/promo/"][target=_blank], :root a[href*="/advjump.com"], :root a[href*="//viruniversal.com/"], :root a[href*="//universalut.info/"], :root a[href*="//universalse.info/"], :root a[href*="//universalin.info/"], :root .ob_container .item-container-obpd, :root a[href*="//givemysoft.ru/"], :root a[href*="//universalies.info/"], :root a[href*="//universalie.info/"], :root a[href*="https://relap.io/r?"], :root a[href*="//ubar-pro"], :root body > div[style="position: fixed; z-index: 999999; width: 400px; height: 308px; right: 5px; bottom: 5px;"], :root a[href*="//tranqvilius.com/"], :root a[href^="http://partners.etoro.com/"], :root a[href^="https://www.liquidfire.mobi/"], :root a[href*="//refpaewsbc.top/"], :root a[href*="//refpabjgth.top/"], :root a[href*="://landingtracker.com/"], :root a[href*="//partners.house/"], :root a[href^="https://www.endorico.com/Smartlink/"], :root a[href*="mixadvert.com"], :root a[href*="://downloadcontent2.ru/"], :root a[href*="//parandeya.com/"], :root a[href*="://z.cdn.traffic"][href*="/load"], :root a[href*="//newbrowser.me/"], :root a[href^="https://italarizege.xyz/"], :root a[href^="https://www.adultempire.com/"][href*="?partner_id="], :root a[href*="//myblogshop.top/r/"], :root [data-ns-portal] div[class^="advLabel"], :root a[href*="://go.bundlebyte.net/r/"], :root a[href*="//loderla.online"], :root a[href^="https://gml-grp.com/"], :root a[href*="://softclicks.ru/"], :root a[href*="//historategory.com/"], :root a[href*="//go.webredir.net/r/"], :root [data-ez-name], :root a[href*="//gerocenius.com/"], :root a[href*="://lapina.xyz/"], :root a[href*="//loderna.ru"], :root a[href*="//ext-load.net"], :root a[href*="//dzen.ru"][href*="favid"], :root a[href*="//do-rod.com/"], :root a[href*="//dagamah.com/"], :root a[href*="//bestonewos.com/"], :root a[href*="//avertise.ru/"], :root div[id^="tizerws_"], :root a[href*="//advtise.ru/"], :root a[href*="://clickstats.fun/"], :root div[id^="ads_games_"], :root a[href*="//adretarget.net/"], :root a[href*="//adoffer.pro/"], :root [href^="https://www.targetingpartner.com/"], :root a[href*="/universalsrc.com/"], :root a[href*="//24smi."][href*="/top/"], :root a[href^="https://bodelen.com/"], :root a[href*="//12traffic.ru/"], :root a[href*=".braun634.com/"], :root a[href*="://dmtech05.com/"], :root a[href^="https://go.markets.com/visit/?bta="], :root [src*="mixadvert.com"], :root a[href*="://doxod24.online/"], :root [src*="://dynspt.com/"], :root [onclick*="//msetup.pro/"], :root a[data-href^="http://ads.trafficjunky.net/"], :root [onclick*=".twkv.ru"], :root iframe[src*="://rstbtmd.com/"], :root a[style="width:100%;height:100%;z-index:10000000000000000;position:absolute;top:0;left:0;"], :root [id^="unit_"] > a[href*="://mirtesen.ru"], :root [id^="relap-custom-iframe-rec"], :root div[data-id^="div-gpt-ad-"], :root a[href*="/vkout.ru"], :root div[id^="ads300_100-widget-"], :root a[href^="https://a.medfoodsafety.com/"], :root [id^="newPortal_informer_"], :root [href^="https://download.cdn.yandex.net/yandex-tag/weboffer/"], :root [href*="postlnk.com"], :root img[src*="cycounter"][width="88"][height="31"], :root [href*="driverpack.io/"], :root a[href*="//ufiler-pro2.ru"], :root [href*="driftawayforfun.com"], :root div[id^="M"][id*="Composite"], :root [data-type="ad-vertical"], :root a[href*="://superiortds.ru/"], :root [href*="://shopblogger.top/"], :root [href*="://drp.su/"], :root a[href*="top.24smi.info"], :root [href*="://clickpzk.com/"], :root [onclick*="/sb/clk/"], :root [href*="://click.1k3pub.com/"], :root [href*="://browseit.ru/"], :root a[href*="://clickstats.pw/"], :root [href*="/uni-tds.com/"], :root a[href*="://newbrowserme.ru/"], :root [href*="//loadbrowser.ru/"], :root a[href*="/installpack.net"], :root [data-url*="://installpack.net"], :root [data-link*="://topclicks.club/"], :root div[class^="block_fortress"], :root [data-link*="//sub"][data-link*="bubblesmedia."], :root [data-la-show-block-id], :root [data-la-block], :root a[href*="//ubar.pro"], :root iframe[src*="//refpakglscpj."], :root [data-href^="https://download.cdn.yandex.net/yandex-tag/weboffer/"], :root [class^="fpm_"][class*="_modal"], :root [class^="flat_"][class*="_out"], :root div[id^="beroll_rotator"], :root [class^="flat_"][class*="_modal"], :root a[href*="//universalini.info/"], :root DIV[id^="DIV_NNN_"], :root a[href*="//restofarian.com"], :root a[href*="://lobar.site/r/"], :root .pip-video-wrapper > .pip-video-label, :root .novelty-banner ~ .dle_b_help > a[target="_blank"], :root a[href*="://vpnbrowser.ru/"], :root [href^="https://wct.link/click?"], :root div[id^="optidigital-adslot"], :root .base-page_left-side > #left_ban, :root a[href^="https://ads.betfair.com/redirect.aspx?"], :root [href^="https://goldcometals.com/clk.trk"], :root .base-page_container > .banerRight, :root a[href*="beauty-list.ru"], :root #adv_unisound ~ #ad_module_cont > [id^="ad_module"], :root #adv_kod_frame ~ #gotimer, :root a[href^="https://www.sugarinstant.com/?partner_id="], :root #PopWin[onmousemove], :root a[href*="thor-media.ru/click/"], :root a[href*="goext.info"], :root #BlWrapper > .b-temp_rbc, :root span[id^="ezoic-pub-ad-placeholder-"], :root a[href*="://parandaya.com"], :root ins.adsbygoogle[data-ad-slot], :root a[href*="traflabs.xyz"], :root guj-ad, :root a[href*="shakesin.com"], :root a[href^="https://playnano.online/offerwalls/?ref="], :root div[id^="zergnet-widget"], :root img[src*="://r.i.ua/"], :root div[id^="yandex_ad"], :root a[href*="://101partners-stat2.com/"], :root a[href^="https://sexynearme.com/"], :root div[id^="taboola-stream-"], :root a[href*="tdstrk.ru"], :root div[id^="pa_sticky_ad_box_middle_"], :root div[id^="lazyad-"], :root div[id^="div-ads-"], :root div[id^="advads_ad_"], :root a[href*="//loderls.ru"], :root a[href*="/jump/next.php?r="], :root div[id^="adspot-"], :root [class^="s2nPlayer"], :root [class^="fpm_"][class*="_out"], :root div[id^="ads250_250-widget-"], :root div[id^="adngin-"], :root div[id^="ad_position_"], :root a[href*="filebase.me"], :root [href^="https://rapidgator.net/article/premium/ref/"], :root a[href^="https://fastestvpn.com/lifetime-special-deal?a_aid="], :root div[id*="ScriptRoot"], :root a[href^="https://juicyads.in/"], :root div[id*="MarketGid"], :root a[href*="/rapidtor.site"], :root div[data-native_ad], :root div[data-mini-ad-unit], :root div[id^="crt-"][style], :root div[data-insertion], :root a[href*="films.ws"], :root div[data-id-advertdfpconf], :root a[href*="://go.progfile.space/r/"], :root div[data-alias="300x250 Ad 2"], :root a[href*="fortedrow.pro"], :root a[href^="https://aweptjmp.com/"], :root div[data-adzone], :root a[href*=".ufiler.pro/"], :root [data-testid="ad_testID"], :root div[id^="gpt_ad_"], :root div[data-adunit], :root a[href^="https://s.optzsrv.com/"], :root div[data-adunit-path], :root a[href^="https://clickadilla.com/"], :root div[data-ad-wrapper], :root div[data-ad-targeting], :root a[href*="cpl11.ru"], :root div[data-ad-placeholder], :root a[href*="://refpamjeql.top/"], :root div[class^="Display_displayAd"], :root div[aria-label="Ads"], :root display-ads, :root citrus-ad-wrapper, :root a[href*="://getyoursoft.ru/"], :root a[href*="/loaderu.ru/"], :root bottomadblock, :root a[href*="://cozibaneco.com/"], :root a[href*="://searchlnk.ru/r/"], :root a[href^="https://join.sexworld3d.com/track/"], :root aside[id^="adrotate_widgets-"], :root a[href^="https://ak.hauchiwu.com/"], :root app-large-ad, :root a[href*="//reruniversal.com/"], :root img[style*="//counter.yadro.ru/"], :root app-advertisement, :root a[href*="://ruonline.bar/"], :root app-ad, :root amp-embed[type="taboola"], :root a[href*="//universalice.info/"], :root amp-ad-custom, :root [href*="://click.1k3web.net/"], :root amp-ad, :root a[href*="/rapidtor.ru"], :root a[href^="https://go.xlviirdr.com"], :root [href^="https://shiftnetwork.infusionsoft.com/go/"] > img, :root div[class^="Adstyled__AdWrapper-"], :root a[onmousedown^="this.href='https://paid.outbrain.com/network/redir?"][target="_blank"] + .ob_source, :root a[onmousedown^="this.href='http://paid.outbrain.com/network/redir?"][target="_blank"], :root a[href^="https://www.mypornstarcams.com/landing/click/"], :root a[href*="gpclick.ru"], :root a[href^="https://www.highperformancecpmgate.com/"], :root a[href*="amgfile.ru"], :root noindex > .search_result[class*="search_result_"], :root a[href^="https://syndicate.contentsserved.com/"], :root a[href^="https://go.skinstrip.net"][href*="?campaignId="], :root [id^="n4p_"], :root a[href^="https://www.nudeidols.com/cams/"], :root a[href*="://dafeb.ru/"], :root a[href*="//spishi.vip/"], :root a[href*="nhebd.xyz"], :root a[href^="https://www.highcpmrevenuenetwork.com/"], :root a[href^="https://landing.brazzersnetwork.com/"], :root a[href^="https://www.goldenfrog.com/vyprvpn?offer_id="][href*="&aff_id="], :root #slashboxes > .deals-rail, :root [title="uCoz Counter"], :root a[href^="https://www.financeads.net/tc.php?"], :root ad-slot, :root a[href*="go.ad2up.com"], :root a[href*="//top.mail.ru/jump?"], :root [href^="https://mypatriotsupply.com/"] > img, :root a[href*="/rating/"] > img[width="88"][height="31"], :root [class^="fpm_"][class*="_crss"], :root a[href^="https://www.dating-finder.com/signup/?ai_d="], :root .base-page_center > .banerBottom, :root a[href^="https://www.bet365.com/"][href*="affiliate="], :root iframe[src*="://mark-media.com.ua"], :root div[data-adname], :root a[href^="https://activate-game.com/"], :root a[href^="https://go.etoro.com/"] > img, :root a[href^="https://www.adxsrve.com/"], :root a[href^="https://www.adskeeper.com"], :root a[href^="https://www.purevpn.com/"][href*="&utm_source=aff-"], :root a[href*="//yojlf.com"], :root a[href^="https://witnessjacket.com/"], :root .min-width-normal > #popup_container, :root a[href^="https://twinrdsrv.com/"], :root a[href^="https://turnstileunavailablesite.com/"], :root a[href^="https://www.mrskin.com/tour"], :root a[href^="https://kiksajex.com/"], :root a[href^="https://track.wg-aff.com"], :root a[href^="https://track.totalav.com/"], :root a[href^="https://track.afcpatrk.com/"], :root [data-src^="https://news.te.ua/widget/"], :root a[href^="https://www.bang.com/?aff="], :root a[href*="cosmolot.me/"][href*="banner"], :root a[href^="https://tm-offers.gamingadult.com/"], :root a[href^="https://tatrck.com/"], :root a[href^="https://t.hrtye.com/"], :root a[href^="https://www.infowarsstore.com/"] > img, :root a[href^="https://ngineet.cfd/"], :root a[href^="https://streamate.com/landing/click/"], :root a[href*="linkmyc.com"], :root a[href^="https://static.fleshlight.com/images/banners/"], :root a[href^="http://www.mrskin.com/tour"], :root a[href^="https://t.aslnk.link/"], :root a[href^="https://syndication.exoclick.com/"], :root a[href^="https://snowdayonline.xyz/"], :root [href^="https://join.playboyplus.com/track/"], :root [href^="https://affiliate.fastcomet.com/"] > img, :root a[href^="https://syndication.dynsrvtbg.com/"], :root [data-ad-manager-id], :root a[href*="turbotraf.com"], :root a[href*="://tracker.partnersmelbet.ru/"], :root a[href^="http://eaplay.ru/"], :root a[href^="https://dl-protect.net/"], :root .base-page_center > .banerTop, :root a[href^="https://safesurfingtoday.com/"][href*="?skip="], :root a[href^="https://a.medfoodhome.com/"], :root a[href*="/advertisesimple.info"], :root a[href^="https://prf.hn/click/"][href*="/creativeref:"] > img, :root a[href^="https://www.dql2clk.com/"], :root [data-ad-module], :root a[href^="https://pb-front.com/"], :root a[href^="https://paid.outbrain.com/network/redir?"], :root [href^="http://mypillow.com/"] > img, :root a[href^="https://financeads.net/tc.php?"], :root a[href^="https://ndt5.net/"], :root a[href^="https://natour.naughtyamerica.com/track/"], :root a[href*="/onvix.tv/promo/"][target=_blank], :root a[href^="https://myclick-2.com/"], :root a[href^="https://m.do.co/c/"] > img, :root a[href^="https://lobimax.com/"], :root [href^="https://mypillow.com/"] > img, :root a[href^="https://www.googleadservices.com/pagead/aclk?"], :root a[href*="//loderlx.ru"], :root a[href^="https://t.ajrkm1.com/"], :root a[href^="https://quotationfirearmrevision.com/"], :root [data-id^="div-gpt-ad"], :root a[href^="https://porntubemate.com/"], :root a[href^="https://play1ad.shop/"], :root div[class^="mixadvert"], :root a[href^="http://fly-shops.ru"], :root a[href^="https://linkboss.shop/"], :root div[class^="native-ad-"], :root a[href^="https://losingoldfry.com/"], :root a[href^="https://leg.xyz/?track="], :root a[href^="https://a2.adform.net/"], :root a[href*="://fast2click.ru/"], :root a[href*="/yfiles1.ru"], :root [alt="Rambler's Top100"], :root [data-adshim], :root [href^="https://join3.bannedsextapes.com"], :root a[href^="https://lead1.pl/"], :root a[href*="://yadistr.ru/"], :root a[href^="https://engine.flixtrial.com/"], :root a[href^="https://pubads.g.doubleclick.net/"], :root a[href*="://shusnarmuk.com/"], :root a[href^="https://landing1.brazzersnetwork.com"], :root a[href*="://topsofto.ru/"], :root a[href*="://techdmn.com/"], :root div[id^="vuukle-ad-"], :root a[href^="https://join.virtualtaboo.com/track/"], :root a[href^="https://join.virtuallust3d.com/"], :root [href*="://simpalsid.com/ad/click?id"], :root iframe[src*="://partner-widget.vsesdal.com/"], :root a[href^="https://jaxofuna.com/"], :root a[href*="//sub"][href*="bubblesmedia."], :root a[href^="https://prf.hn/click/"][href*="/camref:"] > img, :root [data-template-type="nativead"], :root a[href^="https://mmwebhandler.aff-online.com/"], :root a[href^="https://itubego.com/video-downloader/?affid="], :root iframe[src*="ads.exosrv.com"], :root [data-name="adaptiveConstructorAd"], :root a[href^="https://a.bestcontentweb.top/"], :root [href*="//takenewsofts.ru/"], :root a[href^="https://ismlks.com/"], :root [onclick*="msetup"][onclick*="partner"][onclick*="utm_"], :root a[href*=".g2afse.com/"], :root zeus-ad, :root a[href^="http://revolvemockerycopper.com/"], :root a[href^="https://syndication.optimizesrv.com/"], :root a#mobtop[title^="Рейтинг мобильных сайтов"], :root div[id^="Crt-"][style], :root a[href*="://adv-views.com"], :root a[href^="https://iqbroker.com/"][href*="?aff="], :root #root > .app .partner-block-wrapper, :root a[href*=".orgsales.ru"], :root body > div[style="position: fixed; z-index: 999999; width: 400px; height: 308px; left: 5px; bottom: 5px;"], :root a[href^="https://intenseaffiliates.com/redirect/"], :root img[src^="https://images.purevpnaffiliates.com"], :root a[href*="//webbrowser.club/"], :root a[href^="https://in.rabbtrk.com/"], :root a[href^="https://tracking.avapartner.com/"], :root a[href^="https://hot-growngames.life/"], :root a[href*="/sarimsolus.com/"], :root a[href*="//appt12mn.com/"], :root a[href^="https://golinks.work/"], :root a[href^="https://tc.tradetracker.net/"] > img, :root a[href^="https://ads.ad4game.com/"], :root a[href^="https://go.xxxjmp.com"], :root object[data^="blob"], :root a[href^="https://go.xxxijmp.com"], :root a[href^="https://go.xxxiijmp.com"], :root a[href^="https://serve.awmdelivery.com/"], :root a[href^="https://go.xtbaffiliates.com/"], :root #MT_overroll ~ div[class][style="left:0px;top:0px;height:480px;width:650px;"], :root a[href^="https://lijavaxa.com/"], :root div[id^="dfp-ad-"], :root a[href^="https://go.xlirdr.com"], :root a[href*="://topclicks.club/"], :root a[href*="browser-ru.site"], :root a[href^="https://go.trackitalltheway.com/"], :root div[id^="trafmag_"], :root a[href^="https://clickins.slixa.com/"], :root div[id^="_vdo_ads_player_ai_"], :root div[id^="admixer_"], :root a[href^="https://tracker.loropartners.com/"], :root a[href^="https://go.admjmp.com"], :root a[href^="https://disobediencecalculatormaiden.com/"], :root a[href^="https://go.tmrjmp.com"], :root a[href^="https://www.privateinternetaccess.com/"] > img, :root a[href^="https://go.nordvpn.net/aff"] > img, :root a[href^="//s.st1net.com/splash.php"], :root a[href^="https://go.mnaspm.com/"], :root div[id^="join_informer_"], :root div[data-server-rendered="true"] > div[id^="la-"], :root a[href*="//fofuvipibo.com/"], :root div[id^="div-gpt-"], :root ark-top-ad, :root div[class^="kiwi-ad-wrapper"], :root a[href^="https://track.adform.net/"], :root a[href^="https://pb-track.com/"], :root a[href^="https://go.dmzjmp.com"], :root a[href*="/myuniversalnk.net/"], :root a[href^="https://go.cmtaffiliates.com/"], :root [id^="div-gpt-ad"], :root a[href^="https://slkmis.com/"], :root a[href^="https://kshop"][href*=".pro/"], :root a[href*="://installpack.ru"], :root [class^="flat_"][class*="_crss"], :root a[href*="/api/redirect?offerid="], :root a[href^="https://fc.lc/ref/"], :root DFP-AD, :root a[href*="://downloadbrowsernew.com/"], :root [href^="https://go.xlrdr.com"], :root a[href^="https://maymooth-stopic.com/"], :root a[href^="https://eergortu.net/"], :root a[href^="https://www.friendlyduck.com/AF_"], :root amp-fx-flying-carpet, :root a[href^="https://ctjdwm.com/"], :root a[href^="https://gamingadlt.com/?offer="], :root .grid > .container > #aside-promotion, :root gpt-ad, :root a[href^="https://clixtrac.com/"], :root a[href^="http://www.h4trck.com/"], :root a[href*="joycasino.com/?partner="], :root a[href^="https://ad.kubiccomps.icu/"], :root a[href*="//tdsrotate.ru/"], :root a[href^="https://hotplaystime.life/"], :root a[href^="https://clicks.pipaffiliates.com/"], :root a[href^="https://go.xxxvjmp.com/"], :root a[href^="https://get-link.xyz/"], :root [onclick*="trklp.ru"], :root a[href*="://ufiler-download.ru/"], :root a[href^="https://click.linksynergy.com/fs-bin/"] > img, :root [id^="ad-wrap-"], :root a[href^="https://s.zlink3.com/"], :root .header-banner > #moneyback[target="_blank"], :root a[href^="https://claring-loccelkin.com/"], :root a[href*=".adsrv.eacdn.com/"], :root a[href^="https://chaturbate.com/in/?"], :root #leader-companion > a[href], :root a[href*="shakesclick.com"], :root a[href*="://elgrur.com/"], :root a[href^="http://cam4com.go2cloud.org/aff_c?"], :root a[href^="https://camfapr.com/landing/click/"], :root a[href^="https://join.dreamsexworld.com/"], :root a[href^="http://kshop.biz/"], :root a[href^="https://banners.livepartners.com/"], :root a[href*="ads2-adnow.com"], :root [data-link*="//ufiler-pro2.ru"], :root .content_rb[id^="content_rb_"], :root [id^="ad_sky"], :root div[data-google-query-id], :root a[href^="https://www.dating-finder.com/?ai_d="], :root .ob_dual_right > .ob_ads_header ~ .odb_div, :root a[href^="http://annulmentequitycereals.com/"], :root a[href*="navaxudoru.com"], :root a[href^="https://www.geekbuying.com/dynamic-ads/"], :root [data-la-show-id], :root a[href^="https://ausoafab.net/"], :root a[href^="https://auesk.cfd/"], :root a[href^="https://adultfriendfinder.com/go/"], :root a[onmousedown^="this.href='http://paid.outbrain.com/network/redir?"][target="_blank"] + .ob_source, :root [data-testid="adBanner-wrapper"], :root [href^="https://track.aftrk1.com/"], :root .nya-slot[style], :root .vid-present > .van_vid_carousel__padding, :root [href="https://www.masstortfinancing.com/"] > img, :root a[href^="https://bngpt.com/"], :root a[href^="https://ad.zanox.com/ppc/"] > img, :root atf-ad-slot, :root a[href*="//clickdome.online/"], :root a[href*=".adsbid.ru"], :root a[href*="trafgid.xyz"], :root a[href^="http://com-1.pro/"], :root [data-freestar-ad][id], :root div[id^="ezoic-pub-ad-"], :root a[href*="://new.torrent-pack.ru/"], :root a[href^="https://go.strpjmp.com/"], :root a[href^="https://click.candyoffers.com/"], :root a[href*="://yourlnk.ru/r/"], :root a[onmousedown^="this.href='https://paid.outbrain.com/network/redir?"][target="_blank"], :root a[href^="https://go.hpyjmp.com"], :root .base-page_center > .banerTopOver, :root [href="https://masstortfinancing.com"] img, :root a[href^="https://trk.sportsflix4k.club/"], :root a[href*="tvkw.ru"], :root a[href^="https://go.bushheel.com/"], :root [data-dynamic-ads], :root [href^="https://turtlebids.irauctions.com/"] img, :root a[href^="https://billing.purevpn.com/aff.php"] > img, :root [data-membrana-container], :root a[href^="https://a.adtng.com/"], :root #adv_unisound ~ #main > #slidercontentContainer, :root ps-connatix-module, :root a[href^="https://getvideoz.click/"], :root a-ad, :root [href^="https://v.investologic.co.uk/"], :root a[href^="https://81ac.xyz/"], :root a[href^="http://www.iyalc.com/"], :root a[href*="wow-partners.com/click.php"], :root [href^="https://join.girlsoutwest.com/"], :root a[href^="https://svb-analytics.trackerrr.com/"], :root div[id^="adfox_"], :root div[data-alias="300x250 Ad 1"], :root a[href^="https://relap.io/"][href*="promo_ad_link"], :root a[data-widget-outbrain-redirect^="http://paid.outbrain.com/network/redir?"], :root [href^="https://ilovemyfreedoms.com/landing-"], :root a[href^="https://ads.planetwin365affiliate.com/"], :root div[id^="adrotate_widgets-"], :root div[id^="CGCandy"], :root a[href*="&maxads="], :root a[href^="http://www.friendlyduck.com/AF_"], :root a[href^="https://datewhisper.life/"], :root a[href^="https://bngprm.com/"], :root a[href^="http://stickingrepute.com/"], :root a[href^="https://mediaserver.gvcaffiliates.com/renderBanner.do?"], :root a[href*="://bestnewsoft.ru/"], :root a[href^="https://vo2.qrlsx.com/"], :root [data-advadstrackid], :root [href^="https://routewebtk.com/"], :root a[href*="://womens-journal.ru/"], :root a[href^="http://troopsassistedstupidity.com/"], :root [href^="https://mylead.global/stl/"] > img, :root a[href*="://gertadv.ru/"], :root a[href^="http://naggingirresponsible.com/"], :root [href*="://click.1k3web.com/"], :root a[href^="https://torguard.net/aff.php"] > img, :root a[href^="https://black77854.com/"], :root a[href^="https://pb-imc.com/"], :root a[href^="http://eighteenderived.com/"], :root a[href^="https://ad.doubleclick.net/"], :root a[href*="://betahit.click/"], :root a[href^="http://li.blogtrottr.com/click?"], :root a[class*="button"][href^="//"][href*="yandex"][onclick*="dnl"][onclick*="knopka"], :root a[href^="http://traderstart.mirtesen.ru"], :root a[href*="://ref.studwork.ru/"], :root div[id^="sticky_ad_"], :root display-ad-component, :root a[href^="http://muzzlematrix.com/"], :root a[class*="button"][href^="/go/"][href*="visitid"][onclick*="dnl"], :root a[href^="http://dragnag.com/"], :root [href="https://ourgoldguy.com/contact/"] img, :root a[href^="http://avthelkp.net/"], :root a[href*="://analyticsq.com"], :root a[href*="/clubleads.ru"], :root div[class^="da-widget-"], :root a[href*=".foxqck.com/"], :root a[href*="m1cpl.ru"], :root a[href*="//jjgirls.com/sex/Chaturbate"], :root a[href*="://r.advg.agency/"], :root a[href^="https://tour.mrskin.com/"], :root a[href^="https://go.xlviiirdr.com"], :root a[href^="https://www.brazzersnetwork.com/landing/"], :root [class^="tile-picker__CitrusBannerContainer-sc-"], :root div[data-content="Advertisement"], :root img[width="728"][height="90"], :root a[href^="http://premonitioninventdisagree.com/"], :root [href^="http://www.mypillow.com/"] > img, :root a[href*=".engine.adglare.net/"], :root a[href^="http://reals-story.ru/"], :root a[href^="https://ctosrd.com/"], :root a[href^="https://click.dtiserv2.com/"], :root a[href^=" https://www.friendlyduck.com/AF_"], :root a[href*=".cfm?domain="][href*="&fp="], :root a[href^="http://adultfriendfinder.com/go/"], :root [class^="flat_"][class*="_cross"], :root [href*=".drp.su/"], :root a[href^="https://6-partner.com/"], :root [href="https://jdrucker.com/gold"] > img, :root a[href*="//tekaners.com/"], :root a[href^="https://getmatchedlocally.com/"], :root a[href*="/ogclick.com/api/redirect"], :root a[href^="http://deskfrontfreely.com/"], :root a[href^="https://ads.leovegas.com/"], :root div[id^="smi_teaser_"], :root a[href^="http://www.adultdvdempire.com/?partner_id="][href*="&utm_"], :root a[href^="https://www.nutaku.net/signup/landing/"], :root a[data-href*="recreativ.ru"], :root [href^="https://www.cloudways.com/en/?id"], :root a[href^="https://cams.imagetwist.com/in/?track="], :root a[data-url^="http://paid.outbrain.com/network/redir?"] + .author, :root a[href*="//tiruniversal.com/"], :root [href^="https://noqreport.com/"] > img, :root span[data-ez-ph-id], :root a[data-oburl^="https://paid.outbrain.com/network/redir?"], :root .\[\&_\.gdprAdTransparencyCogWheelButton\]\:\!pjra-z-\[5\], :root [onclick*="content.ad/"], :root a[href^="https://www.toprevenuegate.com/"], :root [href^="https://www.reimageplus.com/"], :root a[href*=".pokupkins.ru"], :root [data-rc-widget], :root iframe[src^="https://a.adtng.com/"], :root a[href^="http://guestblackmail.com/"], :root [id^="section-ad-banner"], :root #kt_player > div[style="position: absolute; inset: 0px; z-index: 170;"], :root a[href^="https://go.grinsbest.com/"], :root [href="//sexcams.plus/"], :root a[href*="/onvix.me/promo/"][target=_blank], :root a[href*="://yasearchcdn.ru/r/"], :root [id^="ad_slider"], :root a[href*="/eversaree.bid"], :root .mywidget__col > .mywidget__link_advert, :root [onclick*="traffic-media.co"], :root a[href^="http://trk.globwo.online/"], :root [href*="/vaigowoa.com"], :root a[onclick*="/link-fes.ru"], :root [href^="https://zone.gotrackier.com/"], :root a[href*="idealmedia.io"], :root a[href^="https://go.hpyrdr.com/"], :root [onclick^="location.href='https://1337x.vpnonly.site/"], :root a[href*="bgrndi.com"], :root [class^="div-gpt-ad"], :root ad-shield-ads, :root [href^="https://www.restoro.com/"], :root a[href^="https://cam4com.go2cloud.org/"], :root div[id*="ScriptRoot"]:not(.eyeo), :root [onclick*="mixadvert.com"], :root [href^="https://antiagingbed.com/discount/"] > img, :root [href^="https://www.mypillow.com/"] > img, :root div[id^="traffim-widget"], :root [data-ad-name], :root div[id^="google_dfp_"], :root [href^="https://www.hostg.xyz/"] > img, :root div[class^="yandex_rtb"], :root [class^="fpm_"][class*="_cross"], :root a[href^="https://s.ma3ion.com/"], :root a[href^="https://click.hoolig.app/"], :root a[href*="please-direct.me"], :root a[href*="katuhus.com"], :root [data-ad-width], :root [href^="https://www.herbanomic.com/"] > img, :root a[href^="https://bc.game/"], :root a[href^="//startgaming.net/tienda/" i], :root [href^="http://clicks.totemcash.com/"], :root [data-d-ad-id], :root [data-adblockkey], :root a[href*="ftpglst.com"], :root [data-revive-zoneid] > iframe, :root [href^="https://www.profitablegatecpm.com/"], :root a[href^="https://homyanus.com"], :root .scroll-fixable.rail-right > .deals-rail, :root a[href^="https://mediaserver.entainpartners.com/renderBanner.do?"], :root [data-block-type="ad"], :root a[href*="//1xbetlk.site/"], :root [href^="https://freecourseweb.com/"] > .sitefriend, :root div[id^="rc-widget-"], :root a[href^="https://trk.softonixs.xyz/"], :root a[href*="://edugrampromo.com/"], :root [href^="https://optimizedelite.com/"] > img, :root a[href*="://viewfilesup.ru/"], :root a[href*="://mysoftrotate.ru/"], :root a[href^="https://bongacams10.com/track?"], :root a[href^="https://ak.psaltauw.net/"], :root [href*="://morelnk.ru/"], :root a[href^="//go.eabids.com/"], :root topadblock, :root a[data-obtrack^="http://paid.outbrain.com/network/redir?"], :root a[href^="http://dragfault.com/"], :root a[href^="https://ak.oalsauwy.net/"], :root #mgb-container > #mgb, :root a[href*="://folltiz.site/"], :root iframe[data-src*="fwdcdn.com/frame/partners/"], :root div[id^="ad-position-"], :root a[href^="https://trk.nfl-online-streams.club/"], :root a[data-redirect^="https://paid.outbrain.com/network/redir?"], :root a[href^="https://t.acam.link/"], :root a[href^="https://www.sheetmusicplus.com/"][href*="?aff_id="], :root a[href*="ads-provider.com"], :root a[href^="https://ab.advertiserurl.com/aff/"], :root a[href^="https://softwa.cfd/"], :root a[href*="://extlinka.ru/"], :root [href*="://edgrmtracking.com/"], :root [href^="https://glersakr.com/"], :root [data-la-custom-block], :root [data-la-block-show-id], :root div[class*="spklw"][data-type="ad"], :root div[data-native-ad], :root [class^="amp-ad-"], :root [data-mobile-ad-id], :root img[src*="://c.bigmir.net/"], :root a[href^="https://track.ultravpn.com/"], :root [href^="https://ad.admitad.com/"], :root a[href^="http://eslp34af.click/"], :root a[href*="://vse-sdal.com/promo/"], :root a[href*="://clickfrm.com/"], :root a[href^="https://zirdough.net/"], :root a[href*="zdravo-med.ru"], :root a[href*="//utimg.ru/"], :root a[href^="//s.zlinkd.com/"], :root a[href*="cmsmodnews.com"], :root a[href*="land-gooods.ru"], :root a[href*="://clickrpk.com/"], :root [href^="https://www.avantlink.com/click.php"] img, :root [class^="adDisplay-module"], :root [href^="https://www.mypatriotsupply.com/"] > img, :root a[href^="https://postback1win.com/"], :root [href^="https://mystore.com/"] > img, :root a[href*="/uni-lnk.com/"], :root a[href^="https://t.adating.link/"], :root div[id^="b_tz_"], :root [data-role="tile-ads-module"], :root a[href*="adpool.bet/"], :root iframe[src*="/mixadv_"], :root a[href^="https://a.bestcontentfood.top/"], :root iframe[src*="://partner-widget.vse-sdal.com/"], :root a[href*="/universalsrc.net/"], :root AD-SLOT, :root AD-TRIPLE-BOX, :root a[href^="https://bs.serving-sys.com"], :root [id^="unit_"] > a[href*="smi2."], :root a[href*="://premiumredir.ru/"], :root img[width="160"][height="600"], :root [data-adbridg-ad-class], :root a[href^="https://l.hyenadata.com/"], :root a[href*="://ya-distrib.ru/r/"], :root a[href*=".twkv.ru"], :root a[href^="https://land.brazzersnetwork.com/landing/"], :root a[href^="https://go.goaserv.com/"], :root [id^="unit_"] > a[href*="://vrf.ru"], :root .OUTBRAIN[data-widget-id^="FMS_REELD_"], :root a[href^="https://www.juicer.io?referrer="], :root a[href^="https://1betandgonow.com/"], :root [href^="https://clicks.affstrack.com/"] > img, :root a[href^="http://bongacams.com/track?"], :root a[href*="://sugisatomi.com/"], :root a[href^="https://bongacams2.com/track?"], :root [data-ad-cls], :root a[href^="https://www.onlineusershielder.com/"], :root [src^="//am15.net/?"], :root a[href^="https://offhandpump.com/"], :root [data-wpas-zoneid], :root [data-link*="://ubar-pro"], :root a[href*="//portakamus.com/"], :root a[href^="https://go.xlvirdr.com"], :root a[href^="http://www.adultempire.com/unlimited/promo?"][href*="&partner_id="], :root iframe[src*="://vidroll.ru/"], :root a[href^="https://awptjmp.com/"], :root [name^="google_ads_iframe"], :root a[href*="goodtrack.ru"], :root [data-css-class="dfp-inarticle"], :root a[href^="https://www.kingsoffetish.com/tour?partner_id="], :root iframe[src*="zhitomir.info/price"], :root a[href*="/newbrowser.club/"], :root a[href^="https://go.xlivrdr.com"], :root a[href^="http://trafmaster.com"], :root a[href*="://chikidiki.ru"], :root a[href^="https://voluum.prom-xcams.com/"], :root AMP-AD, :root a[href*="clickscloud.net"], :root a[href*="://tele.gg/"], :root [href^="https://zstacklife.com/"] img, :root a[href^="https://xbet-4.com/"], :root div[id^="ads300_250-widget-"], :root a[href^="https://combodef.com/"], :root a[href^="https://a.bestcontentoperation.top/"], :root a[href*="intovarro.ru"], :root a[href^="https://chaturbate.jjgirls.com/?track="], :root a[href*="slovosil.com"], :root a[href*="://reidancis.com/"], :root #kt_player > a[target="_blank"], :root a[href*="//getmybrowser.ru/"], :root .section-subheader > .section-hotel-prices-header, :root a[href^="https://engine.blueistheneworanges.com/"], :root a[href^="https://datingoffers30.info/"], :root [data-m-ad-id], :root a[href^="https://track.1234sd123.com/"], :root [href^="https://istlnkcl.com/"], :root a[href*="://manysoftlink.ru/"], :root div[data-dfp-id], :root div[data-contentexchange-widget], :root [data-desktop-ad-id], :root [href^="https://awbbjmp.com/"], :root a[href^="http://tc.tradetracker.net/"] > img, :root a[href^="https://www.get-express-vpn.com/offer/"], :root [href^="https://track.fiverr.com/visit/"] > img, :root [data-la-refresh-timeout], :root a[href^="http://apytrc.com/click/"], :root a[href^="https://prf.hn/click/"][href*="/adref:"] > img, :root a[href*="lifenews24x7.ru"] { display: none !important; }
:root a[href^="https://traffdaq.com/"], :root a[href*="homework.ru/?partnerId="], :root [href^="https://charmingdatings.life/"] { display: none !important; }</style><style type="text/css">.ya-share2,.ya-share2 *{line-height:normal}.ya-share2 :link:hover,.ya-share2 :visited:hover{color:#000 !important}.ya-share2 input{color:inherit;font:inherit;margin:0;line-height:normal}.ya-share2__messenger-frame{display:none}.ya-share2__container.ya-share2__container_color-scheme_blackwhite .ya-share2__badge,.ya-share2__container.ya-share2__container_color-scheme_blackwhite .ya-share2__mobile-popup-badge{background-color:#000}.ya-share2__container.ya-share2__container_color-scheme_whiteblack .ya-share2__badge,.ya-share2__container.ya-share2__container_color-scheme_whiteblack .ya-share2__mobile-popup-badge{background-color:#fff}.ya-share2__container.ya-share2__container_color-scheme_whiteblack .ya-share2__popup-body .ya-share2__mobile-popup-badge{background-color:#f2f2f2}.ya-share2__container_shape_round .ya-share2__badge{border-radius:50px}.ya-share2__container_shape_round .ya-share2__icon{background-position:center}.ya-share2__container_size_l{font-size:20px}.ya-share2__container_size_l .ya-share2__badge .ya-share2__icon{height:48px;width:48px;background-size:48px 48px}.ya-share2__container_shape_round.ya-share2__container_size_l .ya-share2__badge .ya-share2__icon:not(.ya-share2__icon_messenger-contact):not(.ya-share2__icon_more):not(.ya-share2__icon_copy){background-size:40px 40px}.ya-share2__container_size_l .ya-share2__item_copy .ya-share2__icon_copy,.ya-share2__container_size_l .ya-share2__item_more .ya-share2__icon_more{background-size:32px 32px}.ya-share2__container_size_l .ya-share2__title{line-height:48px}.ya-share2__container_size_l .ya-share2__badge + .ya-share2__title{margin-left:16px}.ya-share2__container_size_l .ya-share2__popup:not(.ya-share2__popup_mobile){border-radius:16px;box-shadow:0 16px 48px rgba(0,0,0,0.18),0 0 8px rgba(0,0,0,0.1)}.ya-share2__container_size_l .ya-share2__popup:not(.ya-share2__popup_mobile) .ya-share2__item,.ya-share2__container_size_l.ya-share2__container_as-popup .ya-share2__item{padding:2px 16px}.ya-share2__container_size_l .ya-share2__popup:not(.ya-share2__popup_mobile) > :first-child:not(:empty),.ya-share2__container_size_l.ya-share2__container_as-popup > :first-child:not(:empty),.ya-share2__container_size_l .ya-share2__popup:not(.ya-share2__popup_mobile) > :first-child:empty + :last-child:not(:empty):not(.ya-share2__copied-tooltip),.ya-share2__container_size_l.ya-share2__container_as-popup > :first-child:empty + :last-child:not(:empty):not(.ya-share2__copied-tooltip){padding-top:8px}.ya-share2__container_size_l .ya-share2__popup:not(.ya-share2__popup_mobile) > :last-child:not(:empty):not(.ya-share2__copied-tooltip),.ya-share2__container_size_l.ya-share2__container_as-popup > :last-child:not(:empty):not(.ya-share2__copied-tooltip){padding-bottom:8px}.ya-share2__container_size_l .ya-share2__popup_direction_bottom{top:56px}.ya-share2__container_size_l .ya-share2__popup_direction_top{bottom:56px}.ya-share2__container_size_l.ya-share2__container_alone .ya-share2__popup_direction_bottom,.ya-share2__container_size_l .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__popup_direction_bottom{top:72px}.ya-share2__container_size_l.ya-share2__container_alone .ya-share2__popup_direction_top,.ya-share2__container_size_l .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__popup_direction_top{bottom:72px}.ya-share2__container_size_l .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more{padding:8px 32px 8px 16px;font-size:22px}.ya-share2__container_size_l .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more.ya-share2__link_more-button-type_short{padding:8px;border:none;background:rgba(0,0,0,0.07)}.ya-share2__container_size_l .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more .ya-share2__title{margin-left:6px}.ya-share2__container_size_l .ya-share2__messenger-contacts{margin-bottom:12px}.ya-share2__container_size_l .ya-share2__messenger-contacts::before{width:16px;height:16px;bottom:-7px;left:32px}.ya-share2__container_size_m{font-size:13px}.ya-share2__container_size_m .ya-share2__badge .ya-share2__icon{height:24px;width:24px;background-size:24px 24px}.ya-share2__container_shape_round.ya-share2__container_size_m .ya-share2__badge .ya-share2__icon:not(.ya-share2__icon_messenger-contact):not(.ya-share2__icon_more):not(.ya-share2__icon_copy){background-size:20px 20px}.ya-share2__container_size_m .ya-share2__item_copy .ya-share2__icon_copy,.ya-share2__container_size_m .ya-share2__item_more .ya-share2__icon_more{background-size:16px 16px}.ya-share2__container_size_m .ya-share2__title{line-height:24px}.ya-share2__container_size_m .ya-share2__badge + .ya-share2__title{margin-left:10px}.ya-share2__container_size_m .ya-share2__popup:not(.ya-share2__popup_mobile){border-radius:8px;box-shadow:0 8px 24px rgba(0,0,0,0.18),0 0 4px rgba(0,0,0,0.1)}.ya-share2__container_size_m .ya-share2__popup:not(.ya-share2__popup_mobile) .ya-share2__item,.ya-share2__container_size_m.ya-share2__container_as-popup .ya-share2__item{padding:2px 8px}.ya-share2__container_size_m .ya-share2__popup:not(.ya-share2__popup_mobile) > :first-child:not(:empty),.ya-share2__container_size_m.ya-share2__container_as-popup > :first-child:not(:empty),.ya-share2__container_size_m .ya-share2__popup:not(.ya-share2__popup_mobile) > :first-child:empty + :last-child:not(:empty):not(.ya-share2__copied-tooltip),.ya-share2__container_size_m.ya-share2__container_as-popup > :first-child:empty + :last-child:not(:empty):not(.ya-share2__copied-tooltip){padding-top:8px}.ya-share2__container_size_m .ya-share2__popup:not(.ya-share2__popup_mobile) > :last-child:not(:empty):not(.ya-share2__copied-tooltip),.ya-share2__container_size_m.ya-share2__container_as-popup > :last-child:not(:empty):not(.ya-share2__copied-tooltip){padding-bottom:8px}.ya-share2__container_size_m .ya-share2__popup_direction_bottom{top:28px}.ya-share2__container_size_m .ya-share2__popup_direction_top{bottom:28px}.ya-share2__container_size_m.ya-share2__container_alone .ya-share2__popup_direction_bottom,.ya-share2__container_size_m .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__popup_direction_bottom{top:36px}.ya-share2__container_size_m.ya-share2__container_alone .ya-share2__popup_direction_top,.ya-share2__container_size_m .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__popup_direction_top{bottom:36px}.ya-share2__container_size_m .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more{padding:4px 16px 4px 8px;font-size:15px}.ya-share2__container_size_m .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more.ya-share2__link_more-button-type_short{padding:4px;border:none;background:rgba(0,0,0,0.07)}.ya-share2__container_size_m .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more .ya-share2__title{margin-left:2px}.ya-share2__container_size_m .ya-share2__messenger-contacts{margin-bottom:6px}.ya-share2__container_size_m .ya-share2__messenger-contacts::before{width:10px;height:10px;bottom:-4px;left:15px}.ya-share2__container_size_s{font-size:12px}.ya-share2__container_size_s .ya-share2__badge .ya-share2__icon{height:18px;width:18px;background-size:18px 18px}.ya-share2__container_shape_round.ya-share2__container_size_s .ya-share2__badge .ya-share2__icon:not(.ya-share2__icon_messenger-contact):not(.ya-share2__icon_more):not(.ya-share2__icon_copy){background-size:16px 16px}.ya-share2__container_size_s .ya-share2__item_copy .ya-share2__icon_copy,.ya-share2__container_size_s .ya-share2__item_more .ya-share2__icon_more{background-size:12px 12px}.ya-share2__container_size_s .ya-share2__title{line-height:18px}.ya-share2__container_size_s .ya-share2__badge + .ya-share2__title{margin-left:6px}.ya-share2__container_size_s .ya-share2__popup:not(.ya-share2__popup_mobile){border-radius:6px;box-shadow:0 6px 18px rgba(0,0,0,0.18),0 0 3px rgba(0,0,0,0.1)}.ya-share2__container_size_s .ya-share2__popup:not(.ya-share2__popup_mobile) .ya-share2__item,.ya-share2__container_size_s.ya-share2__container_as-popup .ya-share2__item{padding:2px 6px}.ya-share2__container_size_s .ya-share2__popup:not(.ya-share2__popup_mobile) > :first-child:not(:empty),.ya-share2__container_size_s.ya-share2__container_as-popup > :first-child:not(:empty),.ya-share2__container_size_s .ya-share2__popup:not(.ya-share2__popup_mobile) > :first-child:empty + :last-child:not(:empty):not(.ya-share2__copied-tooltip),.ya-share2__container_size_s.ya-share2__container_as-popup > :first-child:empty + :last-child:not(:empty):not(.ya-share2__copied-tooltip){padding-top:6px}.ya-share2__container_size_s .ya-share2__popup:not(.ya-share2__popup_mobile) > :last-child:not(:empty):not(.ya-share2__copied-tooltip),.ya-share2__container_size_s.ya-share2__container_as-popup > :last-child:not(:empty):not(.ya-share2__copied-tooltip){padding-bottom:6px}.ya-share2__container_size_s .ya-share2__popup_direction_bottom{top:21px}.ya-share2__container_size_s .ya-share2__popup_direction_top{bottom:21px}.ya-share2__container_size_s.ya-share2__container_alone .ya-share2__popup_direction_bottom,.ya-share2__container_size_s .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__popup_direction_bottom{top:27px}.ya-share2__container_size_s.ya-share2__container_alone .ya-share2__popup_direction_top,.ya-share2__container_size_s .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__popup_direction_top{bottom:27px}.ya-share2__container_size_s .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more{padding:3px 12px 3px 6px;font-size:14px}.ya-share2__container_size_s .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more.ya-share2__link_more-button-type_short{padding:3px;border:none;background:rgba(0,0,0,0.07)}.ya-share2__container_size_s .ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more .ya-share2__title{margin-left:1px}.ya-share2__container_size_s .ya-share2__messenger-contacts{margin-bottom:4.5px}.ya-share2__container_size_s .ya-share2__messenger-contacts::before{width:8px;height:8px;bottom:-3px;left:11px}.ya-share2__container_mobile .ya-share2__icon{background-position:center;background-repeat:no-repeat}.ya-share2__container_mobile.ya-share2__container_size_l .ya-share2__icon{height:56px;width:56px}.ya-share2__container_mobile.ya-share2__container_size_l .ya-share2__title{line-height:56px}.ya-share2__container_mobile.ya-share2__container_size_m .ya-share2__icon{height:32px;width:32px}.ya-share2__container_mobile.ya-share2__container_size_m .ya-share2__title{line-height:32px}.ya-share2__container_mobile.ya-share2__container_size_s .ya-share2__icon{height:24px;width:24px}.ya-share2__container_mobile.ya-share2__container_size_s .ya-share2__title{line-height:24px}.ya-share2__list.ya-share2__list_direction_horizontal{margin-top:-2px}.ya-share2__list.ya-share2__list_direction_horizontal > .ya-share2__item{display:inline-block;vertical-align:top;padding:0;margin:2px 4px 0 0}.ya-share2__list.ya-share2__list_direction_horizontal > .ya-share2__item:last-child{margin-right:0}.ya-share2__list.ya-share2__list_direction_horizontal > .ya-share2__item > .ya-share2__link > .ya-share2__title{display:none}.ya-share2__list.ya-share2__list_direction_vertical > .ya-share2__item{display:block;margin:4px 0}.ya-share2__list.ya-share2__list_direction_vertical > .ya-share2__item:first-child{margin-top:0}.ya-share2__list.ya-share2__list_direction_vertical > .ya-share2__item:last-child{margin-bottom:0}.ya-share2__popup{position:absolute;display:none;z-index:9999;background-color:#fff}.ya-share2__popup_visible{display:block}.ya-share2__popup_direction_auto{visibility:hidden}.ya-share2__popup_direction_bottom,.ya-share2__popup_direction_top{visibility:visible}.ya-share2__popup_list-direction_horizontal{right:0}.ya-share2__popup_list-direction_vertical{left:0}.ya-share2__popup_x-direction_left{right:0;left:auto}.ya-share2__popup_x-direction_right{left:0;right:auto}.ya-share2__popup,.ya-share2__container_as-popup{text-align:left}.ya-share2__popup .ya-share2__list .ya-share2__item,.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item,.ya-share2__container_as-popup .ya-share2__list .ya-share2__item,.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item{margin:0}.ya-share2__popup .ya-share2__list .ya-share2__item:hover,.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:hover,.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:hover,.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:hover,.ya-share2__popup .ya-share2__list .ya-share2__item:focus,.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:focus,.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:focus,.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:focus{background:rgba(0,0,0,0.03)}.ya-share2__popup .ya-share2__list .ya-share2__item:active,.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:active,.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:active,.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:active{background:rgba(0,0,0,0.05)}.ya-share2__popup .ya-share2__list .ya-share2__item:hover,.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:hover,.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:hover,.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:hover,.ya-share2__popup .ya-share2__list .ya-share2__item:focus,.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:focus,.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:focus,.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:focus,.ya-share2__popup .ya-share2__list .ya-share2__item:active,.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:active,.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:active,.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:active{opacity:1}.ya-share2__container_color-scheme_whiteblack.ya-share2__popup .ya-share2__list .ya-share2__item:hover .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:hover .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:hover .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:hover .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__popup .ya-share2__list .ya-share2__item:focus .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:focus .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:focus .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:focus .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__popup .ya-share2__list .ya-share2__item:active .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:active .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:active .ya-share2__badge,.ya-share2__container_color-scheme_whiteblack.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:active .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__popup .ya-share2__list .ya-share2__item:hover.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:hover.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:hover.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:hover.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__popup .ya-share2__list .ya-share2__item:focus.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:focus.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:focus.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:focus.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__popup .ya-share2__list .ya-share2__item:active.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:active.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__container_as-popup .ya-share2__list .ya-share2__item:active.ya-share2__item_copy .ya-share2__badge,.ya-share2__container_color-scheme_normal.ya-share2__container_as-popup .ya-share2__messenger-contacts-list_desktop .ya-share2__item:active.ya-share2__item_copy .ya-share2__badge{background:transparent}.ya-share2__container .ya-share2__messenger-contacts_desktop{background-color:#f5f5f5;position:relative}.ya-share2__container .ya-share2__messenger-contacts_desktop:empty{display:none}.ya-share2__container .ya-share2__messenger-contacts_desktop::before{content:'';transform:rotate(45deg);position:absolute;background-color:#f5f5f5}.ya-share2__container .ya-share2__messenger-contacts_desktop .ya-share2__messenger-contacts-list{margin:0;padding-left:0}.ya-share2__container .ya-share2__messenger-contacts_desktop .ya-share2__item{display:block}.ya-share2__container .ya-share2__messenger-contacts_desktop .ya-share2__badge{background:none}.ya-share2__container .ya-share2__messenger-contacts_desktop .ya-share2__icon{border-radius:50px}.ya-share2__container .ya-share2__messenger-contacts_desktop + .ya-share2__list{display:block}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider{height:97px;overflow:hidden;padding-bottom:16px}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider .ya-share2__messenger-contacts_mobile{overflow-x:scroll}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider .ya-share2__messenger-contacts_mobile:empty{display:none}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider .ya-share2__messenger-contacts_mobile .ya-share2__messenger-contacts-list{white-space:nowrap;height:97px}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider + .ya-share2__header{border-top:1px solid rgba(0,0,0,0.1)}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider ~ .ya-share2__scroll-hider .ya-share2__popup-tile-wrapper{overflow-x:scroll}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider ~ .ya-share2__scroll-hider .ya-share2__popup-tile-wrapper .ya-share2__popup-tile{white-space:nowrap;height:97px}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider .ya-share2__mobile-popup-badge{width:56px;height:56px;border-radius:28px}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider .ya-share2__messenger-contacts-list .ya-share2__mobile-popup-badge{background:none}.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider .ya-share2__item{width:23%}@media (min-width:460px){.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider .ya-share2__item{width:18.6%}}@media (min-width:600px){.ya-share2__container.ya-share2__container_mobile .ya-share2__scroll-hider .ya-share2__item{width:15.6%}}.ya-share2__popup.ya-share2__popup_mobile.ya-share2__popup_visible{position:fixed;top:0;right:0;bottom:0;left:0;margin:0;padding:0;border:0;background:transparent;color:rgba(0,0,0,0.8)}.ya-share2__popup.ya-share2__popup_mobile.ya-share2__popup_visible .ya-share2__popup-overlay{position:absolute;z-index:1;top:0;left:0;width:100%;height:100%;background-color:rgba(0,0,0,0.3);animation:overlayAppearance .2s cubic-bezier(.42,0,1,1) forwards}.ya-share2__popup.ya-share2__popup_mobile.ya-share2__popup_visible .ya-share2__popup-content{display:flex;position:absolute;padding:0;z-index:2;bottom:0;box-sizing:border-box;flex-direction:column;width:100%;max-height:70%;animation:popupAppearance .2s forwards}.ya-share2__popup-content .ya-share2__popup-header{display:flex;align-items:center;min-height:40px;padding:14px 12px 14px 16px;border-bottom:1px solid rgba(0,0,0,0.1);border-radius:16px 16px 0 0;background-color:#fff}.ya-share2__popup-content .ya-share2__popup-header .ya-share2__og-image,.ya-share2__popup-content .ya-share2__popup-header .ya-share2__icon_og-image-stub,.ya-share2__popup-content .ya-share2__popup-header .ya-share2__icon_closing-cross{flex-shrink:0}.ya-share2__popup-content .ya-share2__popup-header .ya-share2__popup-description{flex:1;hyphens:auto;align-self:center;display:-webkit-box;max-height:34px;margin:0 8px 0 14px;overflow:hidden;font-size:15px;line-height:17px;text-overflow:ellipsis;word-break:break-word;-webkit-line-clamp:2;-webkit-box-orient:vertical}.ya-share2__popup-content .ya-share2__popup-body{overflow:auto;background-color:#fff}.ya-share2__popup-content .ya-share2__popup-body .ya-share2__header{font-weight:500;font-size:18px;line-height:20px;padding:18px 16px 0;margin:0}.ya-share2__popup-content .ya-share2__messenger-contacts-list,.ya-share2__popup-content .ya-share2__popup-tile{padding:20px 12px 0;margin:0}.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__item,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__item{width:25%;padding:0;margin:0 0 20px}@media (min-width:460px){.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__item,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__item{width:20%}}@media (min-width:600px){.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__item,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__item{width:16.66%}}.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__item .ya-share2__link,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__item .ya-share2__link{width:100%;height:100%;color:rgba(0,0,0,0.8)}.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__item .ya-share2__native-share-fake-link,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__item .ya-share2__native-share-fake-link{display:inline-block;width:100%;height:100%}.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__mobile-popup-badge,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__mobile-popup-badge{display:block;width:52px;height:52px;margin:0 auto;border-radius:26px}.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__mobile-popup-badge .ya-share2__icon,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__mobile-popup-badge .ya-share2__icon{width:100%;height:100%;background-size:32px;background-clip:content-box}.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__mobile-popup-badge .ya-share2__icon_messenger-contact,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__mobile-popup-badge .ya-share2__icon_messenger-contact{background-size:56px;border-radius:50%}.ya-share2__popup-content .ya-share2__messenger-contacts-list .ya-share2__mobile-popup-service-title,.ya-share2__popup-content .ya-share2__popup-tile .ya-share2__mobile-popup-service-title{max-height:15px;margin-top:10px;padding:0 4px;overflow:hidden;font-size:13px;line-height:15px;text-align:center;text-overflow:ellipsis}.ya-share2__popup-content .ya-share2__icon{background-size:auto}.ya-share2__popup-content .ya-share2__icon.ya-share2__og-image,.ya-share2__popup-content .ya-share2__icon.ya-share2__icon_og-image-stub{box-sizing:border-box;width:36px;height:36px;border-radius:6px}.ya-share2__popup-content .ya-share2__icon.ya-share2__og-image{background-position:center;background-size:cover}.ya-share2__popup-content .ya-share2__icon.ya-share2__icon_og-image-stub{padding:6px;background-color:rgba(0,0,0,0.05);background-image:url("data:image/svg+xml,%3Csvg%20width=%2724%27%20height=%2725%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M10.94%208.838a3%203%200%20000%204.242%201%201%200%2001-1.414%201.415%205%205%200%20010-7.071l3.535-3.536a5%205%200%20017.071%207.071l-1.092%201.093a1%201%200%2001-1.415-1.415l1.093-1.092a3%203%200%2010-4.243-4.243L10.94%208.838zm2.12%206.363a3%203%200%20000-4.243%201%201%200%20111.415-1.414%205%205%200%20010%207.07l-3.5%203.501a5%205%200%2001-7.071-7.071l1.025-1.025a1%201%200%20011.414%201.414l-1.025%201.025a3%203%200%20004.243%204.243l3.5-3.5z%27%20fill=%27%23000%27%20fill-opacity=%27.3%27/%3E%3C/svg%3E")}.ya-share2__popup-content .ya-share2__icon.ya-share2__icon_closing-cross{box-sizing:border-box;cursor:pointer;width:40px;height:40px;padding:10px;background-image:url("data:image/svg+xml,%3Csvg%20width=%2720%27%20height=%2720%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M10%2020c5.523%200%2010-4.477%2010-10S15.523%200%2010%200%200%204.477%200%2010s4.477%2010%2010%2010zM5.403%205.403a1%201%200%20011.414%200L10%208.586l3.183-3.183a1%201%200%20111.414%201.414L11.414%2010l3.183%203.183a1%201%200%2001-1.414%201.414L10%2011.414l-3.183%203.183a1%201%200%2001-1.414-1.414L8.586%2010%205.403%206.817a1%201%200%20010-1.414z%27%20fill=%27%23000%27%20fill-opacity=%27.2%27/%3E%3C/svg%3E")}.ya-share2__popup-content .ya-share2__icon.ya-share2__icon_closing-cross:hover{opacity:.8}.ya-share2__popup-content .ya-share2__icon.ya-share2__icon_closing-cross:active{opacity:.6}.ya-share2__popup-content .ya-share2__item.ya-share2__item_copy.ya-share2__item_copy-link-button .ya-share2__icon_copy-icon{width:15px;height:14px;opacity:1;background-image:url("data:image/svg+xml,%3Csvg%20width=%2715%27%20height=%2714%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M3.758%201a1%201%200%20001%201h7.5a.5.5%200%2001.5.5v7.497a1%201%200%20002%200V2.5a2.5%202.5%200%2000-2.5-2.5h-7.5a1%201%200%2000-1%201zm-1.5%202h8a1.5%201.5%200%20011.5%201.5v8a1.5%201.5%200%2001-1.5%201.5h-8a1.5%201.5%200%2001-1.5-1.5v-8a1.5%201.5%200%20011.5-1.5zm.5%202v7h7V5h-7z%27%20fill=%27%23000%27%20fill-opacity=%27.3%27/%3E%3C/svg%3E")}.ya-share2__popup-content .ya-share2__mobile-popup-badge.ya-share2__mobile-popup-badge_native-share{border:1px solid rgba(0,0,0,0.15);background:#fff;box-sizing:border-box}.ya-share2__popup-content .ya-share2__mobile-popup-badge.ya-share2__mobile-popup-badge_native-share .ya-share2__icon{background-image:url("data:image/svg+xml,%3Csvg%20width=%2722%27%20height=%2722%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M4.583%2012.604a1.604%201.604%200%20100-3.208%201.604%201.604%200%20000%203.208zm12.834%200a1.604%201.604%200%20100-3.208%201.604%201.604%200%20000%203.208zM12.604%2011a1.604%201.604%200%2011-3.208%200%201.604%201.604%200%20013.208%200z%27%20fill=%27%23000%27%20fill-opacity=%27.3%27/%3E%3C/svg%3E")}.ya-share2__popup-content .ya-share2__mobile-popup-copy-link .ya-share2__item.ya-share2__item_copy.ya-share2__item_copy-link-button{display:flex;align-items:center;margin:8px auto 32px;padding:12px 20px;border:1px solid rgba(0,0,0,0.15);border-radius:12px;background-color:#fff;font-size:15px;line-height:20px;color:#000}.ya-share2__popup-content .ya-share2__mobile-popup-copy-link .ya-share2__item.ya-share2__item_copy.ya-share2__item_copy-link-button .ya-share2__link-title{padding-left:8px}.ya-share2__copied-tooltip{display:none;z-index:9999;position:fixed;bottom:6px;left:50%;padding:12px 20px;transform:translateX(-50%);border-radius:22px;background:#fff;box-shadow:0 4px 12px rgba(0,0,0,0.15),0 0 2px rgba(0,0,0,0.05);color:rgba(0,0,0,0.8);font-size:15px;line-height:20px;white-space:nowrap}.ya-share2__copied-tooltip_shown{display:block;animation:tooltipAppearance 2s ease-out forwards}@media (min-width:721px){.ya-share2__popup.ya-share2__popup_mobile.ya-share2__popup_visible{display:flex;justify-content:center;align-items:center}.ya-share2__popup.ya-share2__popup_mobile.ya-share2__popup_visible .ya-share2__popup-content{width:720px;min-height:310px;padding:20px 0;bottom:auto}.ya-share2__popup.ya-share2__popup_mobile.ya-share2__popup_visible .ya-share2__popup-content .ya-share2__popup-body{border-radius:0 0 16px 16px}}@-moz-keyframes tooltipAppearance{0%{transform:translate(-50%,0);opacity:0}8%{transform:translate(-50%,-10px);opacity:1}92%{transform:translate(-50%,-10px);opacity:1}100%{transform:translate(-50%,0);opacity:0}}@-webkit-keyframes tooltipAppearance{0%{transform:translate(-50%,0);opacity:0}8%{transform:translate(-50%,-10px);opacity:1}92%{transform:translate(-50%,-10px);opacity:1}100%{transform:translate(-50%,0);opacity:0}}@-o-keyframes tooltipAppearance{0%{transform:translate(-50%,0);opacity:0}8%{transform:translate(-50%,-10px);opacity:1}92%{transform:translate(-50%,-10px);opacity:1}100%{transform:translate(-50%,0);opacity:0}}@keyframes tooltipAppearance{0%{transform:translate(-50%,0);opacity:0}8%{transform:translate(-50%,-10px);opacity:1}92%{transform:translate(-50%,-10px);opacity:1}100%{transform:translate(-50%,0);opacity:0}}@-moz-keyframes overlayAppearance{from{opacity:0}to{opacity:1}}@-webkit-keyframes overlayAppearance{from{opacity:0}to{opacity:1}}@-o-keyframes overlayAppearance{from{opacity:0}to{opacity:1}}@keyframes overlayAppearance{from{opacity:0}to{opacity:1}}@-moz-keyframes popupAppearance{from{transform:translateY(100%)}to{transform:translateY(0)}}@-webkit-keyframes popupAppearance{from{transform:translateY(100%)}to{transform:translateY(0)}}@-o-keyframes popupAppearance{from{transform:translateY(100%)}to{transform:translateY(0)}}@keyframes popupAppearance{from{transform:translateY(100%)}to{transform:translateY(0)}}.ya-share2__container,.ya-share2__container .ya-share2__item{font-family:'YS Text',Arial,sans-serif}.ya-share2__list,.ya-share2__badge,.ya-share2__icon{display:inline-block;vertical-align:top}.ya-share2__title{display:inline-block;vertical-align:bottom}.ya-share2__list{padding:0;margin:0;list-style-type:none}.ya-share2__link{display:block}.ya-share2__item{display:inline-block;font-family:'YS Text',Arial,sans-serif}.ya-share2__item:not(.ya-share2__item_more):hover,.ya-share2__item.ya-share2__item_more > .ya-share2__link:hover,.ya-share2__item:not(.ya-share2__item_more):focus,.ya-share2__item.ya-share2__item_more > .ya-share2__link:focus{cursor:pointer;opacity:.85}.ya-share2__item:not(.ya-share2__item_more):active,.ya-share2__item.ya-share2__item_more > .ya-share2__link:active{opacity:.7}.ya-share2__link{text-decoration:none;white-space:nowrap}.ya-share2__badge{border-radius:4px;color:#fff;overflow:hidden;position:relative}.ya-share2__container_mobile .ya-share2__badge{border-radius:50%}.ya-share2__title{color:#000}.ya-share2__item_more{position:relative}.ya-share2__item_more .ya-share2__link_more .ya-share2__title{display:none}.ya-share2__item_more .ya-share2__icon_more{background-image:url("data:image/svg+xml,%3Csvg%20width=%2716%27%20height=%2716%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M1%208a1.5%201.5%200%20113%200%201.5%201.5%200%2001-3%200zm5.5%200a1.5%201.5%200%20113%200%201.5%201.5%200%2001-3%200zm7-1.5a1.5%201.5%200%20100%203%201.5%201.5%200%20000-3z%27%20fill=%27%23999%27/%3E%3C/svg%3E")}.ya-share2__container_color-scheme_blackwhite .ya-share2__item_more .ya-share2__icon_more{background-image:url("data:image/svg+xml,%3Csvg%20width=%2716%27%20height=%2716%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M1%208a1.5%201.5%200%20113%200%201.5%201.5%200%2001-3%200zm5.5%200a1.5%201.5%200%20113%200%201.5%201.5%200%2001-3%200zm7-1.5a1.5%201.5%200%20100%203%201.5%201.5%200%20000-3z%27%20fill=%27%23fff%27/%3E%3C/svg%3E")}.ya-share2__container_color-scheme_whiteblack .ya-share2__item_more .ya-share2__icon_more{background-image:url("data:image/svg+xml,%3Csvg%20width=%2716%27%20height=%2716%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M1%208a1.5%201.5%200%20113%200%201.5%201.5%200%2001-3%200zm5.5%200a1.5%201.5%200%20113%200%201.5%201.5%200%2001-3%200zm7-1.5a1.5%201.5%200%20100%203%201.5%201.5%200%20000-3z%27%20fill=%27%23000%27/%3E%3C/svg%3E")}.ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__icon_more{background-image:url("data:image/svg+xml,%3Csvg%20width=%2716%27%20height=%2716%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20d=%27M14.6%202.9a2.7%202.7%200%2001-4.554%201.963L5.303%207.28a2.702%202.702%200%20010%201.44l4.743%202.417a2.7%202.7%200%2011-.834%201.708l-5.05-2.575a2.7%202.7%200%20110-4.54l5.05-2.575A2.7%202.7%200%201114.6%202.9z%27%20fill=%27%23000%27/%3E%3C/svg%3E")}.ya-share2__item_more .ya-share2__badge,.ya-share2__item_copy .ya-share2__badge{background:rgba(0,0,0,0.03)}.ya-share2__item_more .ya-share2__icon,.ya-share2__item_copy .ya-share2__icon{background-position:center;background-repeat:no-repeat}.ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more{background:rgba(0,0,0,0.03);border:1px solid rgba(0,0,0,0.15);border-radius:50px}.ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more:not(.ya-share2__link_more-button-type_short):hover,.ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more:not(.ya-share2__link_more-button-type_short):focus{border-color:rgba(0,0,0,0.25);opacity:1}.ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more:not(.ya-share2__link_more-button-type_short):active{border-color:rgba(0,0,0,0.4);opacity:1}.ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__link_more:not(.ya-share2__link_more-button-type_short) .ya-share2__title{display:inline-block}.ya-share2__item_more.ya-share2__item_has-pretty-view .ya-share2__badge_more{background:transparent}.ya-share2__item_copy .ya-share2__icon{background-image:url("data:image/svg+xml,%3Csvg%20width=%2716%27%20height=%2716%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M4%202a1%201%200%20001%201h7.5a.5.5%200%2001.5.5v7.497a1%201%200%20002%200V3.5A2.5%202.5%200%200012.5%201H5a1%201%200%2000-1%201zM2.5%204h8A1.5%201.5%200%200112%205.5v8a1.5%201.5%200%2001-1.5%201.5h-8A1.5%201.5%200%20011%2013.5v-8A1.5%201.5%200%20012.5%204zM3%206v7h7V6H3z%27%20fill=%27%23999%27/%3E%3C/svg%3E")}.ya-share2__container_color-scheme_blackwhite .ya-share2__item_copy .ya-share2__icon{background-image:url("data:image/svg+xml,%3Csvg%20width=%2716%27%20height=%2716%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M4%202a1%201%200%20001%201h7.5a.5.5%200%2001.5.5v7.497a1%201%200%20002%200V3.5A2.5%202.5%200%200012.5%201H5a1%201%200%2000-1%201zM2.5%204h8A1.5%201.5%200%200112%205.5v8a1.5%201.5%200%2001-1.5%201.5h-8A1.5%201.5%200%20011%2013.5v-8A1.5%201.5%200%20012.5%204zM3%206v7h7V6H3z%27%20fill=%27%23fff%27/%3E%3C/svg%3E")}.ya-share2__container_color-scheme_whiteblack .ya-share2__item_copy .ya-share2__icon{background-image:url("data:image/svg+xml,%3Csvg%20width=%2716%27%20height=%2716%27%20fill=%27none%27%20xmlns=%27http://www.w3.org/2000/svg%27%3E%3Cpath%20fill-rule=%27evenodd%27%20clip-rule=%27evenodd%27%20d=%27M4%202a1%201%200%20001%201h7.5a.5.5%200%2001.5.5v7.497a1%201%200%20002%200V3.5A2.5%202.5%200%200012.5%201H5a1%201%200%2000-1%201zM2.5%204h8A1.5%201.5%200%200112%205.5v8a1.5%201.5%200%2001-1.5%201.5h-8A1.5%201.5%200%20011%2013.5v-8A1.5%201.5%200%20012.5%204zM3%206v7h7V6H3z%27%20fill=%27%23000%27/%3E%3C/svg%3E")}.ya-share2__item_copy .ya-share2__input_copy{display:none}.ya-share2__item_copy .ya-share2__link_copy{display:inline-block}
.ya-share2__item_service_blogger .ya-share2__badge,
.ya-share2__item_service_blogger .ya-share2__mobile-popup-badge
{
    background-color: #fb8f3d;
}

.ya-share2__item_service_blogger .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M19.896 14.833A5.167 5.167 0 0114.729 20H9.166A5.167 5.167 0 014 14.833V9.167A5.166 5.166 0 019.166 4h2.608a5.167 5.167 0 015.167 5.167l.002.011c.037.536.484.96 1.03.96l.018-.002h.872c.57 0 1.034.463 1.034 1.034l-.001 3.663zM9.038 10.176h2.926a.993.993 0 000-1.987H9.038a.994.994 0 000 1.987zm5.867 3.83H9.032a.94.94 0 000 1.879h5.873a.94.94 0 100-1.88z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_blogger .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M19.896 14.833A5.167 5.167 0 0114.729 20H9.166A5.167 5.167 0 014 14.833V9.167A5.166 5.166 0 019.166 4h2.608a5.167 5.167 0 015.167 5.167l.002.011c.037.536.484.96 1.03.96l.018-.002h.872c.57 0 1.034.463 1.034 1.034l-.001 3.663zM9.038 10.176h2.926a.993.993 0 000-1.987H9.038a.994.994 0 000 1.987zm5.867 3.83H9.032a.94.94 0 000 1.879h5.873a.94.94 0 100-1.88z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_delicious .ya-share2__badge,
.ya-share2__item_service_delicious .ya-share2__mobile-popup-badge
{
    background-color: #31a9ff;
}

.ya-share2__item_service_delicious .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M4 12h8v8H4zm8-8h8v8h-7.984z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_delicious .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M4 12h8v8H4zm8-8h8v8h-7.984z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_digg .ya-share2__badge,
.ya-share2__item_service_digg .ya-share2__mobile-popup-badge
{
    background-color: #000;
}

.ya-share2__item_service_digg .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M5.555 10.814V14.1h.96s.18.005.18-.222v-3.287h-.96s-.18-.006-.18.222zm8.032 3.065v-3.287h-.96s-.18-.006-.18.222V14.1h.96s.18.006.18-.222zm-5.306 1.32c0 .227-.18.222-.18.222H4V9.497c0-.227.18-.222.18-.222h2.514V7.222c0-.227.18-.222.18-.222h1.408l-.001 8.199zm2.065 0c0 .227-.18.221-.18.221H8.761V9.496c0-.226.18-.221.18-.221h1.406v5.924zm0-7.103c0 .227-.18.222-.18.222H8.76V7.222c0-.227.18-.222.18-.222h1.408l-.001 1.096zm4.827 9.21c0 .228-.18.223-.18.223h-4.1v-1.096c0-.227.18-.222.18-.222h2.513v-.79h-2.694V9.497c0-.227.18-.222.18-.222l4.102.003v8.029zm4.826 0c0 .228-.18.223-.18.223h-4.1v-1.096c0-.227.18-.222.18-.222h2.514v-.79h-2.695V9.497c0-.227.18-.222.18-.222L20 9.279v8.028zm-1.585-3.427v-3.287h-.96s-.18-.006-.18.222V14.1h.96s.18.006.18-.222z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_digg .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M5.555 10.814V14.1h.96s.18.005.18-.222v-3.287h-.96s-.18-.006-.18.222zm8.032 3.065v-3.287h-.96s-.18-.006-.18.222V14.1h.96s.18.006.18-.222zm-5.306 1.32c0 .227-.18.222-.18.222H4V9.497c0-.227.18-.222.18-.222h2.514V7.222c0-.227.18-.222.18-.222h1.408l-.001 8.199zm2.065 0c0 .227-.18.221-.18.221H8.761V9.496c0-.226.18-.221.18-.221h1.406v5.924zm0-7.103c0 .227-.18.222-.18.222H8.76V7.222c0-.227.18-.222.18-.222h1.408l-.001 1.096zm4.827 9.21c0 .228-.18.223-.18.223h-4.1v-1.096c0-.227.18-.222.18-.222h2.513v-.79h-2.694V9.497c0-.227.18-.222.18-.222l4.102.003v8.029zm4.826 0c0 .228-.18.223-.18.223h-4.1v-1.096c0-.227.18-.222.18-.222h2.514v-.79h-2.695V9.497c0-.227.18-.222.18-.222L20 9.279v8.028zm-1.585-3.427v-3.287h-.96s-.18-.006-.18.222V14.1h.96s.18.006.18-.222z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_evernote .ya-share2__badge,
.ya-share2__item_service_evernote .ya-share2__mobile-popup-badge
{
    background-color: #24d666;
}

.ya-share2__item_service_evernote .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M6.277 7.109h1.517c.08 0 .16-.08.16-.16V5.313c0-.28.08-.559.159-.758l.04-.12L5.2 7.348l.16-.08c.239-.12.558-.16.917-.16zm11.654-.28c-.12-.638-.479-.917-.838-1.037-.36-.12-.718-.28-1.676-.4-.759-.08-1.557-.12-2.116-.12-.16-.438-.399-.917-1.317-1.156-.638-.16-1.796-.12-2.155-.08-.559.08-.758.319-.918.479-.16.16-.28.598-.28.878v1.556c0 .48-.318.838-.877.838H6.397c-.32 0-.559.04-.758.12-.16.12-.32.28-.4.4-.2.279-.239.598-.239.957 0 0 0 .28.08.798.04.4.479 3.033.878 3.911.16.36.28.48.599.639.718.32 2.354.639 3.152.758.759.08 1.278.32 1.557-.279 0 0 .04-.16.12-.36a6.3 6.3 0 00.28-1.915c0-.04.079-.04.079 0 0 .36-.08 1.557.838 1.876.36.12 1.118.24 1.876.32.678.079 1.197.358 1.197 2.114 0 1.078-.24 1.238-1.397 1.238-.958 0-1.317.04-1.317-.759 0-.598.599-.558 1.078-.558.2 0 .04-.16.04-.52 0-.398.24-.598 0-.598-1.557-.04-2.475 0-2.475 1.956 0 1.796.679 2.115 2.914 2.115 1.756 0 2.354-.04 3.073-2.275.16-.439.479-1.796.678-4.03.16-1.478-.12-5.788-.319-6.866zm-3.033 4.75c-.2 0-.32 0-.519.04h-.08s-.04 0-.04-.04v-.04c.08-.4.28-.878.878-.878.639.04.799.599.799 1.038v.04c0 .04-.04.04-.04.04-.04 0-.04 0-.04-.04-.28-.08-.599-.12-.958-.16z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_evernote .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M6.277 7.109h1.517c.08 0 .16-.08.16-.16V5.313c0-.28.08-.559.159-.758l.04-.12L5.2 7.348l.16-.08c.239-.12.558-.16.917-.16zm11.654-.28c-.12-.638-.479-.917-.838-1.037-.36-.12-.718-.28-1.676-.4-.759-.08-1.557-.12-2.116-.12-.16-.438-.399-.917-1.317-1.156-.638-.16-1.796-.12-2.155-.08-.559.08-.758.319-.918.479-.16.16-.28.598-.28.878v1.556c0 .48-.318.838-.877.838H6.397c-.32 0-.559.04-.758.12-.16.12-.32.28-.4.4-.2.279-.239.598-.239.957 0 0 0 .28.08.798.04.4.479 3.033.878 3.911.16.36.28.48.599.639.718.32 2.354.639 3.152.758.759.08 1.278.32 1.557-.279 0 0 .04-.16.12-.36a6.3 6.3 0 00.28-1.915c0-.04.079-.04.079 0 0 .36-.08 1.557.838 1.876.36.12 1.118.24 1.876.32.678.079 1.197.358 1.197 2.114 0 1.078-.24 1.238-1.397 1.238-.958 0-1.317.04-1.317-.759 0-.598.599-.558 1.078-.558.2 0 .04-.16.04-.52 0-.398.24-.598 0-.598-1.557-.04-2.475 0-2.475 1.956 0 1.796.679 2.115 2.914 2.115 1.756 0 2.354-.04 3.073-2.275.16-.439.479-1.796.678-4.03.16-1.478-.12-5.788-.319-6.866zm-3.033 4.75c-.2 0-.32 0-.519.04h-.08s-.04 0-.04-.04v-.04c.08-.4.28-.878.878-.878.639.04.799.599.799 1.038v.04c0 .04-.04.04-.04.04-.04 0-.04 0-.04-.04-.28-.08-.599-.12-.958-.16z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_linkedin .ya-share2__badge,
.ya-share2__item_service_linkedin .ya-share2__mobile-popup-badge
{
    background-color: #0083be;
}

.ya-share2__item_service_linkedin .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M4.246 8.954h3.41v10.281h-3.41zm1.725-4.935c-1.167 0-1.929.769-1.929 1.776 0 .987.74 1.777 1.884 1.777h.022c1.19 0 1.93-.79 1.93-1.777-.023-1.007-.74-1.776-1.907-1.776zm10.052 4.715c-1.81 0-2.62.997-3.073 1.698V8.976H9.54c.045.965 0 10.281 0 10.281h3.41v-5.742c0-.307.022-.614.112-.834.246-.613.807-1.25 1.75-1.25 1.233 0 1.727.944 1.727 2.325v5.501h3.41v-5.896c0-3.158-1.683-4.627-3.926-4.627z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_linkedin .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M4.246 8.954h3.41v10.281h-3.41zm1.725-4.935c-1.167 0-1.929.769-1.929 1.776 0 .987.74 1.777 1.884 1.777h.022c1.19 0 1.93-.79 1.93-1.777-.023-1.007-.74-1.776-1.907-1.776zm10.052 4.715c-1.81 0-2.62.997-3.073 1.698V8.976H9.54c.045.965 0 10.281 0 10.281h3.41v-5.742c0-.307.022-.614.112-.834.246-.613.807-1.25 1.75-1.25 1.233 0 1.727.944 1.727 2.325v5.501h3.41v-5.896c0-3.158-1.683-4.627-3.926-4.627z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_lj .ya-share2__badge,
.ya-share2__item_service_lj .ya-share2__mobile-popup-badge
{
    background-color: #0d425a;
}

.ya-share2__item_service_lj .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3e%3cpath fill-rule='evenodd' clip-rule='evenodd' d='M17.815 13.3c.223 1.074.443 2.146.663 3.218.214 1.039.427 2.078.643 3.118.037.178-.148.385-.334.311-1.544-.565-3.063-1.135-4.585-1.706l-1.425-.534a.625.625 0 01-.318-.23l-7.39-8.903c-.067-.082-.082-.215-.06-.32.312-1.23.72-2.143 1.752-3.019C7.799 4.36 8.779 4.1 10.047 4.004c.156-.015.223.014.312.133l1.351 1.625v.001c1.968 2.367 3.935 4.733 5.897 7.099.109.124.18.275.208.438zM6.175 8.462c.69-1.795 2.3-3.004 3.835-3.301l-.185-.223a4.242 4.242 0 00-3.85 3.272l.2.252zm.504.601c.727-1.758 2.107-2.945 3.851-3.271l.89 1.06c-1.536.305-3.049 1.522-3.836 3.302l-.905-1.091zM9.364 8.9l3.926 4.719h-.002c.564.682-.014 2.656-.303 3.041l-4.89-5.89A6.12 6.12 0 019.364 8.9zm4.23 4.481L9.647 8.633c.69-.601 1.484-1.009 2.277-1.165l4.756 5.72c-.63.52-2.641.735-3.086.193zm3.36.298l.001-.001h-.001zm-2.93.526c1.03.208 2.32-.067 2.93-.526l.43 2.091.35 1.692c-.371.156-.69.386-.913.764l-1.528-.564-1.885-.712c.52-.853.69-1.922.616-2.745z' fill='%23FFF'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_lj .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3e%3cpath fill-rule='evenodd' clip-rule='evenodd' d='M17.815 13.3c.223 1.074.443 2.146.663 3.218.214 1.039.427 2.078.643 3.118.037.178-.148.385-.334.311-1.544-.565-3.063-1.135-4.585-1.706l-1.425-.534a.625.625 0 01-.318-.23l-7.39-8.903c-.067-.082-.082-.215-.06-.32.312-1.23.72-2.143 1.752-3.019C7.799 4.36 8.779 4.1 10.047 4.004c.156-.015.223.014.312.133l1.351 1.625v.001c1.968 2.367 3.935 4.733 5.897 7.099.109.124.18.275.208.438zM6.175 8.462c.69-1.795 2.3-3.004 3.835-3.301l-.185-.223a4.242 4.242 0 00-3.85 3.272l.2.252zm.504.601c.727-1.758 2.107-2.945 3.851-3.271l.89 1.06c-1.536.305-3.049 1.522-3.836 3.302l-.905-1.091zM9.364 8.9l3.926 4.719h-.002c.564.682-.014 2.656-.303 3.041l-4.89-5.89A6.12 6.12 0 019.364 8.9zm4.23 4.481L9.647 8.633c.69-.601 1.484-1.009 2.277-1.165l4.756 5.72c-.63.52-2.641.735-3.086.193zm3.36.298l.001-.001h-.001zm-2.93.526c1.03.208 2.32-.067 2.93-.526l.43 2.091.35 1.692c-.371.156-.69.386-.913.764l-1.528-.564-1.885-.712c.52-.853.69-1.922.616-2.745z' fill='%23000'/%3e%3c/svg%3e");
}

.ya-share2__item_service_messenger .ya-share2__badge,
.ya-share2__item_service_messenger .ya-share2__mobile-popup-badge
{
    background-color: #03CECE;
}

.ya-share2__item_service_messenger .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M19.643 11.415L7.723 4.636a.703.703 0 00-1.048.62v1.826s3.961 1.542 4.284 1.662a.457.457 0 01.343.54c-.058.144-.18.128-.533.042-.352-.085-5.505-1.368-5.505-1.368a.62.62 0 00-.715.847l1.077 2.563s6.949.29 7.199.305c.247.015.393.134.397.327-.004.194-.15.312-.397.327-.25.014-7.199.305-7.199.305L4.55 15.196a.62.62 0 00.715.846s5.153-1.283 5.505-1.368c.353-.086.475-.102.533.042a.457.457 0 01-.343.54c-.323.12-4.284 1.663-4.284 1.663v1.825a.703.703 0 001.048.62l11.92-6.78a.658.658 0 000-1.169z' fill='%23FFF'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_messenger .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M19.643 11.415L7.723 4.636a.703.703 0 00-1.048.62v1.826s3.961 1.542 4.284 1.662a.457.457 0 01.343.54c-.058.144-.18.128-.533.042-.352-.085-5.505-1.368-5.505-1.368a.62.62 0 00-.715.847l1.077 2.563s6.949.29 7.199.305c.247.015.393.134.397.327-.004.194-.15.312-.397.327-.25.014-7.199.305-7.199.305L4.55 15.196a.62.62 0 00.715.846s5.153-1.283 5.505-1.368c.353-.086.475-.102.533.042a.457.457 0 01-.343.54c-.323.12-4.284 1.663-4.284 1.663v1.825a.703.703 0 001.048.62l11.92-6.78a.658.658 0 000-1.169z' fill='%23000'/%3e%3c/svg%3e");
}

.ya-share2__item_service_moimir .ya-share2__badge,
.ya-share2__item_service_moimir .ya-share2__mobile-popup-badge
{
    background-color: #168de2;
}

.ya-share2__item_service_moimir .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M8.889 9.667a1.333 1.333 0 100-2.667 1.333 1.333 0 000 2.667zm6.222 0a1.333 1.333 0 100-2.667 1.333 1.333 0 000 2.667zm4.77 6.108l-1.802-3.028a.879.879 0 00-1.188-.307.843.843 0 00-.313 1.166l.214.36a6.71 6.71 0 01-4.795 1.996 6.711 6.711 0 01-4.792-1.992l.217-.364a.844.844 0 00-.313-1.166.878.878 0 00-1.189.307l-1.8 3.028a.844.844 0 00.312 1.166.88.88 0 001.189-.307l.683-1.147a8.466 8.466 0 005.694 2.18 8.463 8.463 0 005.698-2.184l.685 1.151a.873.873 0 001.189.307.844.844 0 00.312-1.166z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_moimir .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M8.889 9.667a1.333 1.333 0 100-2.667 1.333 1.333 0 000 2.667zm6.222 0a1.333 1.333 0 100-2.667 1.333 1.333 0 000 2.667zm4.77 6.108l-1.802-3.028a.879.879 0 00-1.188-.307.843.843 0 00-.313 1.166l.214.36a6.71 6.71 0 01-4.795 1.996 6.711 6.711 0 01-4.792-1.992l.217-.364a.844.844 0 00-.313-1.166.878.878 0 00-1.189.307l-1.8 3.028a.844.844 0 00.312 1.166.88.88 0 001.189-.307l.683-1.147a8.466 8.466 0 005.694 2.18 8.463 8.463 0 005.698-2.184l.685 1.151a.873.873 0 001.189.307.844.844 0 00.312-1.166z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_odnoklassniki .ya-share2__badge,
.ya-share2__item_service_odnoklassniki .ya-share2__mobile-popup-badge
{
    background-color: #f70;
}

.ya-share2__item_service_odnoklassniki .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M14.83 10.77a3.951 3.951 0 0 1-5.604 0 3.951 3.951 0 0 1 0-5.604 3.95 3.95 0 0 1 5.604 0 3.951 3.951 0 0 1 0 5.604Zm-2.802-4.615c-.494 0-.942.2-1.271.53a1.79 1.79 0 0 0 0 2.542 1.789 1.789 0 0 0 2.543 0 1.789 1.789 0 0 0 0-2.543 1.839 1.839 0 0 0-1.272-.53Zm4.168 5.792 1.166 1.59c.059.082.047.188-.036.247-.977.8-2.119 1.33-3.308 1.613l2.249 4.332c.059.13-.024.271-.165.271H13.7a.206.206 0 0 1-.176-.118l-1.496-3.579-1.507 3.567a.181.181 0 0 1-.176.118H7.943c-.141 0-.224-.153-.165-.27l2.249-4.321a8.262 8.262 0 0 1-3.308-1.613c-.071-.06-.095-.177-.036-.248l1.166-1.589c.07-.094.188-.106.27-.035 1.096.93 2.45 1.542 3.898 1.542s2.79-.6 3.897-1.542c.094-.07.223-.06.282.035Z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_odnoklassniki .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M14.83 10.77a3.951 3.951 0 0 1-5.604 0 3.951 3.951 0 0 1 0-5.604 3.95 3.95 0 0 1 5.604 0 3.951 3.951 0 0 1 0 5.604Zm-2.802-4.615c-.494 0-.942.2-1.271.53a1.79 1.79 0 0 0 0 2.542 1.789 1.789 0 0 0 2.543 0 1.789 1.789 0 0 0 0-2.543 1.839 1.839 0 0 0-1.272-.53Zm4.168 5.792 1.166 1.59c.059.082.047.188-.036.247-.977.8-2.119 1.33-3.308 1.613l2.249 4.332c.059.13-.024.271-.165.271H13.7a.206.206 0 0 1-.176-.118l-1.496-3.579-1.507 3.567a.181.181 0 0 1-.176.118H7.943c-.141 0-.224-.153-.165-.27l2.249-4.321a8.262 8.262 0 0 1-3.308-1.613c-.071-.06-.095-.177-.036-.248l1.166-1.589c.07-.094.188-.106.27-.035 1.096.93 2.45 1.542 3.898 1.542s2.79-.6 3.897-1.542c.094-.07.223-.06.282.035Z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_pinterest .ya-share2__badge,
.ya-share2__item_service_pinterest .ya-share2__mobile-popup-badge
{
    background-color: #c20724;
}

.ya-share2__item_service_pinterest .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M6 9.742c0 1.58.599 2.986 1.884 3.51.21.087.4.003.46-.23.043-.16.144-.568.189-.738.06-.23.037-.31-.133-.512-.37-.436-.608-1.001-.608-1.802 0-2.322 1.74-4.402 4.53-4.402 2.471 0 3.829 1.508 3.829 3.522 0 2.65-1.174 4.887-2.917 4.887-.963 0-1.683-.795-1.452-1.77.276-1.165.812-2.421.812-3.262 0-.752-.405-1.38-1.24-1.38-.985 0-1.775 1.017-1.775 2.38 0 .867.293 1.454.293 1.454L8.69 16.406c-.352 1.487-.053 3.309-.028 3.492.015.11.155.136.22.054.09-.119 1.262-1.564 1.66-3.008.113-.409.647-2.526.647-2.526.32.61 1.254 1.145 2.248 1.145 2.957 0 4.964-2.693 4.964-6.298C18.4 6.539 16.089 4 12.576 4 8.204 4 6 7.13 6 9.742z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_pinterest .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M6 9.742c0 1.58.599 2.986 1.884 3.51.21.087.4.003.46-.23.043-.16.144-.568.189-.738.06-.23.037-.31-.133-.512-.37-.436-.608-1.001-.608-1.802 0-2.322 1.74-4.402 4.53-4.402 2.471 0 3.829 1.508 3.829 3.522 0 2.65-1.174 4.887-2.917 4.887-.963 0-1.683-.795-1.452-1.77.276-1.165.812-2.421.812-3.262 0-.752-.405-1.38-1.24-1.38-.985 0-1.775 1.017-1.775 2.38 0 .867.293 1.454.293 1.454L8.69 16.406c-.352 1.487-.053 3.309-.028 3.492.015.11.155.136.22.054.09-.119 1.262-1.564 1.66-3.008.113-.409.647-2.526.647-2.526.32.61 1.254 1.145 2.248 1.145 2.957 0 4.964-2.693 4.964-6.298C18.4 6.539 16.089 4 12.576 4 8.204 4 6 7.13 6 9.742z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_pocket .ya-share2__badge,
.ya-share2__item_service_pocket .ya-share2__mobile-popup-badge
{
    background-color: #ee4056;
}

.ya-share2__item_service_pocket .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M17.9 5c1.159 0 2.1.948 2.1 2.117v5.862c0 .108-.008.215-.024.32.016.156.024.314.024.473 0 3.36-3.582 6.085-8 6.085s-8-2.724-8-6.085c0-.159.008-.317.024-.473a2.148 2.148 0 01-.024-.32V7.117C4 5.948 4.94 5 6.1 5h11.8zM8.596 9.392L12 12.795l3.404-3.403a1.063 1.063 0 011.502 1.502l-4.132 4.131c-.21.21-.486.314-.76.311a1.062 1.062 0 01-.788-.31l-4.132-4.132a1.063 1.063 0 011.502-1.502z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_pocket .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M17.9 5c1.159 0 2.1.948 2.1 2.117v5.862c0 .108-.008.215-.024.32.016.156.024.314.024.473 0 3.36-3.582 6.085-8 6.085s-8-2.724-8-6.085c0-.159.008-.317.024-.473a2.148 2.148 0 01-.024-.32V7.117C4 5.948 4.94 5 6.1 5h11.8zM8.596 9.392L12 12.795l3.404-3.403a1.063 1.063 0 011.502 1.502l-4.132 4.131c-.21.21-.486.314-.76.311a1.062 1.062 0 01-.788-.31l-4.132-4.132a1.063 1.063 0 011.502-1.502z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_qzone .ya-share2__badge,
.ya-share2__item_service_qzone .ya-share2__mobile-popup-badge
{
    background-color: #f5b53c;
}

.ya-share2__item_service_qzone .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M17.367 14.463s-.105.148-.457.299l-.553.222.597 3.273c.062.282.25.983-.082 1.062-.17.04-.307-.067-.395-.121l-.769-.445-2.675-1.545c-.204-.122-.78-.546-1.093-.489-.205.038-.336.127-.483.216l-.77.445-2.39 1.386-.883.508c-.123.06-.301.058-.394-.025-.07-.063-.09-.253-.063-.388l.19-1.004.572-3.02c.047-.2.237-.975.166-1.137-.048-.107-.173-.196-.261-.267l-.61-.565-2.13-1.983c-.189-.153-.345-.345-.533-.496l-.235-.216c-.062-.078-.165-.235-.09-.369.142-.248.974-.218 1.335-.28l2.682-.31.82-.09c.146-.024.299-.004.413-.063.239-.123.51-.809.636-1.087l1.31-2.714c.151-.297.286-.603.431-.896.075-.15.133-.308.305-.356.162-.045.257.105.312.178.177.235.325.685.451.973l1.29 2.853c.104.238.363.964.54 1.074.266.166.858.108 1.227.172l2.841.292c.355.062 1.245.01 1.36.267.076.17-.072.314-.152.394l-.864.814-1.983 1.868c-.185.164-.77.637-.833.858-.04.14.02.414.088.722a95.62 95.62 0 01-1.182-.029c-.63-.007-2.616-.17-2.713-.178l-.84-.076c-.14-.023-.326.012-.4-.076v-.02c1.727-1.168 3.407-2.416 5.142-3.578l-.006-.044c-.146-.072-.359-.059-.54-.095-.385-.077-.79-.078-1.208-.147-.75-.124-1.59-.114-2.434-.114-1.172 0-2.329.03-3.35.21-.45.079-.894.095-1.309.197-.172.042-.358.03-.49.108l.007.012c.1.027.253.02.381.02l.928.019.808.025.813.032.591.032c.486.075 1.007.036 1.475.114.404.068.804.065 1.182.14.113.022.245.015.33.064v.006c-.039.094-.336.255-.432.318l-1.055.743-2.256 1.62-1.417.992c.003.048.024.035.045.061 1.15.167 2.52.258 3.77.262 1.298.005 2.465-.094 3.118-.193.561-.086 1.082-.147 1.653-.287.325-.08.521-.148.521-.148z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_qzone .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M17.367 14.463s-.105.148-.457.299l-.553.222.597 3.273c.062.282.25.983-.082 1.062-.17.04-.307-.067-.395-.121l-.769-.445-2.675-1.545c-.204-.122-.78-.546-1.093-.489-.205.038-.336.127-.483.216l-.77.445-2.39 1.386-.883.508c-.123.06-.301.058-.394-.025-.07-.063-.09-.253-.063-.388l.19-1.004.572-3.02c.047-.2.237-.975.166-1.137-.048-.107-.173-.196-.261-.267l-.61-.565-2.13-1.983c-.189-.153-.345-.345-.533-.496l-.235-.216c-.062-.078-.165-.235-.09-.369.142-.248.974-.218 1.335-.28l2.682-.31.82-.09c.146-.024.299-.004.413-.063.239-.123.51-.809.636-1.087l1.31-2.714c.151-.297.286-.603.431-.896.075-.15.133-.308.305-.356.162-.045.257.105.312.178.177.235.325.685.451.973l1.29 2.853c.104.238.363.964.54 1.074.266.166.858.108 1.227.172l2.841.292c.355.062 1.245.01 1.36.267.076.17-.072.314-.152.394l-.864.814-1.983 1.868c-.185.164-.77.637-.833.858-.04.14.02.414.088.722a95.62 95.62 0 01-1.182-.029c-.63-.007-2.616-.17-2.713-.178l-.84-.076c-.14-.023-.326.012-.4-.076v-.02c1.727-1.168 3.407-2.416 5.142-3.578l-.006-.044c-.146-.072-.359-.059-.54-.095-.385-.077-.79-.078-1.208-.147-.75-.124-1.59-.114-2.434-.114-1.172 0-2.329.03-3.35.21-.45.079-.894.095-1.309.197-.172.042-.358.03-.49.108l.007.012c.1.027.253.02.381.02l.928.019.808.025.813.032.591.032c.486.075 1.007.036 1.475.114.404.068.804.065 1.182.14.113.022.245.015.33.064v.006c-.039.094-.336.255-.432.318l-1.055.743-2.256 1.62-1.417.992c.003.048.024.035.045.061 1.15.167 2.52.258 3.77.262 1.298.005 2.465-.094 3.118-.193.561-.086 1.082-.147 1.653-.287.325-.08.521-.148.521-.148z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_reddit .ya-share2__badge,
.ya-share2__item_service_reddit .ya-share2__mobile-popup-badge
{
    background-color: #ff4500;
}

.ya-share2__item_service_reddit .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M16.542 10.63c-1.105-.636-2.494-1.033-4.025-1.118l.808-2.393 2.182.637c0 .963.78 1.742 1.743 1.742.964 0 1.758-.779 1.758-1.742C19.008 6.78 18.214 6 17.25 6c-.609 0-1.148.326-1.459.793l-2.65-.764a.482.482 0 00-.61.311l-1.063 3.172c-1.516.085-2.905.482-4.01 1.119a1.987 1.987 0 00-1.46-.623A1.995 1.995 0 004 12.004c0 .75.425 1.403 1.035 1.742-.029.17-.043.34-.043.51 0 2.62 3.146 4.744 7.015 4.744 3.855 0 7-2.124 7-4.744 0-.17-.013-.34-.042-.51A1.974 1.974 0 0020 12.004a1.995 1.995 0 00-1.998-1.996 2.01 2.01 0 00-1.46.623zM9.499 12.5a1.01 1.01 0 011.006 1.006.998.998 0 01-1.006.991.986.986 0 01-.992-.991.997.997 0 01.992-1.006zm5.002 0a.998.998 0 00-.992 1.006c0 .552.44.991.992.991a.998.998 0 001.006-.991 1.01 1.01 0 00-1.006-1.006zm-5.3 3.597a.484.484 0 01-.085-.694c.156-.226.482-.255.694-.085.567.44 1.474.68 2.197.68.709 0 1.616-.24 2.197-.68a.484.484 0 01.694.085.496.496 0 01-.085.694c-.737.58-1.885.907-2.806.907-.935 0-2.07-.326-2.806-.907zm8.05-7.59a.757.757 0 01-.752-.75c0-.426.34-.752.751-.752s.752.326.752.751c0 .41-.34.75-.752.75z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_reddit .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M16.542 10.63c-1.105-.636-2.494-1.033-4.025-1.118l.808-2.393 2.182.637c0 .963.78 1.742 1.743 1.742.964 0 1.758-.779 1.758-1.742C19.008 6.78 18.214 6 17.25 6c-.609 0-1.148.326-1.459.793l-2.65-.764a.482.482 0 00-.61.311l-1.063 3.172c-1.516.085-2.905.482-4.01 1.119a1.987 1.987 0 00-1.46-.623A1.995 1.995 0 004 12.004c0 .75.425 1.403 1.035 1.742-.029.17-.043.34-.043.51 0 2.62 3.146 4.744 7.015 4.744 3.855 0 7-2.124 7-4.744 0-.17-.013-.34-.042-.51A1.974 1.974 0 0020 12.004a1.995 1.995 0 00-1.998-1.996 2.01 2.01 0 00-1.46.623zM9.499 12.5a1.01 1.01 0 011.006 1.006.998.998 0 01-1.006.991.986.986 0 01-.992-.991.997.997 0 01.992-1.006zm5.002 0a.998.998 0 00-.992 1.006c0 .552.44.991.992.991a.998.998 0 001.006-.991 1.01 1.01 0 00-1.006-1.006zm-5.3 3.597a.484.484 0 01-.085-.694c.156-.226.482-.255.694-.085.567.44 1.474.68 2.197.68.709 0 1.616-.24 2.197-.68a.484.484 0 01.694.085.496.496 0 01-.085.694c-.737.58-1.885.907-2.806.907-.935 0-2.07-.326-2.806-.907zm8.05-7.59a.757.757 0 01-.752-.75c0-.426.34-.752.751-.752s.752.326.752.751c0 .41-.34.75-.752.75z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_renren .ya-share2__badge,
.ya-share2__item_service_renren .ya-share2__mobile-popup-badge
{
    background-color: #1760a7;
}

.ya-share2__item_service_renren .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.019 15.562l-.001-.003-.018.002a.055.055 0 00.019.001zM7.71 12.398l.146-.68c.048-.205.03-.452.03-.692V9.812L7.88 8c-.139 0-.278.043-.393.076-.358.102-.666.201-.962.352-1.158.59-2.022 1.565-2.387 2.944-.343 1.297-.007 2.652.522 3.507.118.19.269.48.44.61.135-.02.272-.15.375-.217a6.06 6.06 0 00.622-.452l.24-.229c.63-.506 1.075-1.346 1.373-2.193zm4.276 3.164h.02a.382.382 0 00-.019-.003v.003zm-3.01-.888l-.258-.575-.088-.264h-.01l-.264.498c-.176.288-.358.574-.557.839a6.5 6.5 0 01-.85.944l-.517.422.012.024.287.14c.206.091.43.173.657.235.788.217 1.811.177 2.545-.053.178-.055.643-.194.739-.305v-.017c-.177-.092-.324-.254-.47-.381a5.573 5.573 0 01-1.225-1.507zm10.884-3.302c-.365-1.379-1.23-2.354-2.387-2.944a5.277 5.277 0 00-.962-.352c-.115-.033-.254-.077-.393-.076l-.005 1.812v1.214c0 .24-.019.487.029.692l.147.68c.297.847.741 1.687 1.372 2.193l.24.23c.196.164.402.309.622.45.103.067.24.198.375.218.171-.13.322-.42.44-.61.529-.855.865-2.21.522-3.507zm-3.66 3.8c-.2-.265-.381-.55-.557-.839l-.264-.498h-.011l-.088.264-.258.575a5.576 5.576 0 01-1.226 1.507c-.145.127-.292.29-.469.38v.018c.096.111.561.25.739.305.734.23 1.757.27 2.545.053a4.85 4.85 0 00.657-.234l.287-.141a1.31 1.31 0 00.012-.024l-.516-.422a6.5 6.5 0 01-.85-.944zm-1.653-2.727c.068-.192.097-.402.146-.61.05-.21.024-.484.024-.727V9.753l-.006-1.741c-.015-.008-.02-.01-.047-.012-.197.047-.326.05-.592.14-.357.102-.685.275-.985.44-.289.16-.53.388-.78.587-.097.077-.199.19-.308.312l.01.01a1.19 1.19 0 00-.01.012l.36.47c.232.359.445.763.581 1.213.326 1.079.182 2.411-.235 3.273a4.9 4.9 0 01-.445.75l-.258.323a.018.018 0 01-.003.007c.004.007.01.016.012.022h.008c.395-.215.686-.574 1.027-.844.189-.15.354-.35.504-.54.404-.514.755-1.046.997-1.73zm-2.55 3.085l-.259-.323a4.903 4.903 0 01-.445-.75c-.417-.862-.561-2.194-.235-3.273.136-.45.35-.854.58-1.214L12 9.501l-.01-.011.01-.01a2.791 2.791 0 00-.308-.313c-.25-.2-.491-.427-.78-.586-.3-.166-.628-.339-.985-.44-.266-.09-.395-.094-.592-.141a.083.083 0 00-.047.012l-.006 1.741v1.355c0 .243-.026.517.024.727.049.208.078.418.146.61.242.684.593 1.216.997 1.73.15.19.315.39.505.54.34.27.63.629 1.026.844h.008c.001-.006.008-.015.012-.022a.019.019 0 01-.003-.007z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_renren .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.019 15.562l-.001-.003-.018.002a.055.055 0 00.019.001zM7.71 12.398l.146-.68c.048-.205.03-.452.03-.692V9.812L7.88 8c-.139 0-.278.043-.393.076-.358.102-.666.201-.962.352-1.158.59-2.022 1.565-2.387 2.944-.343 1.297-.007 2.652.522 3.507.118.19.269.48.44.61.135-.02.272-.15.375-.217a6.06 6.06 0 00.622-.452l.24-.229c.63-.506 1.075-1.346 1.373-2.193zm4.276 3.164h.02a.382.382 0 00-.019-.003v.003zm-3.01-.888l-.258-.575-.088-.264h-.01l-.264.498c-.176.288-.358.574-.557.839a6.5 6.5 0 01-.85.944l-.517.422.012.024.287.14c.206.091.43.173.657.235.788.217 1.811.177 2.545-.053.178-.055.643-.194.739-.305v-.017c-.177-.092-.324-.254-.47-.381a5.573 5.573 0 01-1.225-1.507zm10.884-3.302c-.365-1.379-1.23-2.354-2.387-2.944a5.277 5.277 0 00-.962-.352c-.115-.033-.254-.077-.393-.076l-.005 1.812v1.214c0 .24-.019.487.029.692l.147.68c.297.847.741 1.687 1.372 2.193l.24.23c.196.164.402.309.622.45.103.067.24.198.375.218.171-.13.322-.42.44-.61.529-.855.865-2.21.522-3.507zm-3.66 3.8c-.2-.265-.381-.55-.557-.839l-.264-.498h-.011l-.088.264-.258.575a5.576 5.576 0 01-1.226 1.507c-.145.127-.292.29-.469.38v.018c.096.111.561.25.739.305.734.23 1.757.27 2.545.053a4.85 4.85 0 00.657-.234l.287-.141a1.31 1.31 0 00.012-.024l-.516-.422a6.5 6.5 0 01-.85-.944zm-1.653-2.727c.068-.192.097-.402.146-.61.05-.21.024-.484.024-.727V9.753l-.006-1.741c-.015-.008-.02-.01-.047-.012-.197.047-.326.05-.592.14-.357.102-.685.275-.985.44-.289.16-.53.388-.78.587-.097.077-.199.19-.308.312l.01.01a1.19 1.19 0 00-.01.012l.36.47c.232.359.445.763.581 1.213.326 1.079.182 2.411-.235 3.273a4.9 4.9 0 01-.445.75l-.258.323a.018.018 0 01-.003.007c.004.007.01.016.012.022h.008c.395-.215.686-.574 1.027-.844.189-.15.354-.35.504-.54.404-.514.755-1.046.997-1.73zm-2.55 3.085l-.259-.323a4.903 4.903 0 01-.445-.75c-.417-.862-.561-2.194-.235-3.273.136-.45.35-.854.58-1.214L12 9.501l-.01-.011.01-.01a2.791 2.791 0 00-.308-.313c-.25-.2-.491-.427-.78-.586-.3-.166-.628-.339-.985-.44-.266-.09-.395-.094-.592-.141a.083.083 0 00-.047.012l-.006 1.741v1.355c0 .243-.026.517.024.727.049.208.078.418.146.61.242.684.593 1.216.997 1.73.15.19.315.39.505.54.34.27.63.629 1.026.844h.008c.001-.006.008-.015.012-.022a.019.019 0 01-.003-.007z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_sinaWeibo .ya-share2__badge,
.ya-share2__item_service_sinaWeibo .ya-share2__mobile-popup-badge
{
    background-color: #c53220;
}

.ya-share2__item_service_sinaWeibo .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M10.266 14.696c-.103.421.55.447.64.063.037-.191-.103-.332-.282-.332-.167 0-.333.128-.358.269zm-.128.945c.102-.498-.307-.869-.793-.843-.46.038-.843.358-.92.754-.115.511.307.882.793.844.46-.026.843-.345.92-.755zm3.797-3.157c-1.586-.997-3.707-1.01-5.42-.447-.857.28-1.764.818-2.301 1.495-.627.793-.882 1.815-.23 2.8.958 1.431 3.413 2.033 5.675 1.508 1.33-.307 2.749-1.048 3.35-2.326.562-1.177-.052-2.378-1.074-3.03zm-3.17.498c.945.167 1.7.755 1.827 1.739.243 1.854-2.173 3.336-4.026 2.327a1.933 1.933 0 01-.742-2.723c.435-.767 1.266-1.266 2.148-1.355a2.75 2.75 0 01.793.012zm6.11-.37c-.268-.18-.538-.281-.856-.383-.308-.103-.359-.154-.243-.46.076-.218.14-.41.166-.666.14-1.15-.793-1.495-1.854-1.406-.498.039-.92.167-1.355.307-.281.09-.806.384-.92.205-.064-.09.013-.23.038-.32.166-.626.23-1.496-.384-1.88-.447-.28-1.227-.204-1.7-.038-2.556.87-6.455 4.552-5.663 7.479.18.664.55 1.163.908 1.521 1.061 1.061 2.71 1.65 4.231 1.866 1.112.154 2.263.14 3.375-.064 1.815-.332 3.554-1.15 4.679-2.607.754-.972.997-2.352 0-3.235a3.334 3.334 0 00-.422-.319zm1.623-3.682c.652 1.483-.064 2.148.166 2.66.192.421.767.46 1.023.14.191-.243.294-.959.307-1.278a4.193 4.193 0 00-1.125-3.12c-.984-1.073-2.276-1.444-3.694-1.303-.256.025-.46.064-.601.217-.332.358-.166.882.294.959.384.063 1.342-.23 2.416.396.498.307.971.792 1.214 1.33zm-3.45-.562c-.282.345-.078.87.408.856.294-.012.358-.05.677.051.307.103.626.448.64.857.025.268-.282.895.32 1.061a.523.523 0 00.536-.166c.115-.128.166-.371.192-.575.089-.857-.333-1.598-1.01-2.02-.384-.23-1.445-.46-1.764-.064z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_sinaWeibo .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M10.266 14.696c-.103.421.55.447.64.063.037-.191-.103-.332-.282-.332-.167 0-.333.128-.358.269zm-.128.945c.102-.498-.307-.869-.793-.843-.46.038-.843.358-.92.754-.115.511.307.882.793.844.46-.026.843-.345.92-.755zm3.797-3.157c-1.586-.997-3.707-1.01-5.42-.447-.857.28-1.764.818-2.301 1.495-.627.793-.882 1.815-.23 2.8.958 1.431 3.413 2.033 5.675 1.508 1.33-.307 2.749-1.048 3.35-2.326.562-1.177-.052-2.378-1.074-3.03zm-3.17.498c.945.167 1.7.755 1.827 1.739.243 1.854-2.173 3.336-4.026 2.327a1.933 1.933 0 01-.742-2.723c.435-.767 1.266-1.266 2.148-1.355a2.75 2.75 0 01.793.012zm6.11-.37c-.268-.18-.538-.281-.856-.383-.308-.103-.359-.154-.243-.46.076-.218.14-.41.166-.666.14-1.15-.793-1.495-1.854-1.406-.498.039-.92.167-1.355.307-.281.09-.806.384-.92.205-.064-.09.013-.23.038-.32.166-.626.23-1.496-.384-1.88-.447-.28-1.227-.204-1.7-.038-2.556.87-6.455 4.552-5.663 7.479.18.664.55 1.163.908 1.521 1.061 1.061 2.71 1.65 4.231 1.866 1.112.154 2.263.14 3.375-.064 1.815-.332 3.554-1.15 4.679-2.607.754-.972.997-2.352 0-3.235a3.334 3.334 0 00-.422-.319zm1.623-3.682c.652 1.483-.064 2.148.166 2.66.192.421.767.46 1.023.14.191-.243.294-.959.307-1.278a4.193 4.193 0 00-1.125-3.12c-.984-1.073-2.276-1.444-3.694-1.303-.256.025-.46.064-.601.217-.332.358-.166.882.294.959.384.063 1.342-.23 2.416.396.498.307.971.792 1.214 1.33zm-3.45-.562c-.282.345-.078.87.408.856.294-.012.358-.05.677.051.307.103.626.448.64.857.025.268-.282.895.32 1.061a.523.523 0 00.536-.166c.115-.128.166-.371.192-.575.089-.857-.333-1.598-1.01-2.02-.384-.23-1.445-.46-1.764-.064z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_skype .ya-share2__badge,
.ya-share2__item_service_skype .ya-share2__mobile-popup-badge
{
    background-color: #00aff0;
}

.ya-share2__item_service_skype .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M19.537 13.698c.115-.52.176-1.06.176-1.614 0-4.155-3.415-7.524-7.63-7.524-.444 0-.88.038-1.304.11A4.444 4.444 0 008.425 4C5.981 4 4 5.954 4 8.364c0 .805.222 1.56.608 2.207a7.428 7.428 0 00-.155 1.513c0 4.156 3.416 7.4 7.63 7.4.477 0 .944-.044 1.397-.126.623.33 1.335.642 2.092.642 2.444 0 4.425-1.953 4.425-4.364a4.3 4.3 0 00-.46-1.938zm-3.974 1.457c-.294.418-.725.747-1.293.984-.567.238-1.239.356-2.016.356-.933 0-1.702-.162-2.308-.486a2.986 2.986 0 01-1.047-.934c-.268-.39-.403-.768-.403-1.137 0-.213.08-.395.242-.547a.855.855 0 01.615-.229.76.76 0 01.512.178c.14.119.26.294.358.527.12.278.25.51.39.695.139.185.336.34.589.46.254.12.587.18 1 .18.566 0 1.027-.12 1.382-.364.354-.243.532-.547.532-.91a.919.919 0 00-.287-.702 1.88 1.88 0 00-.741-.412 13.21 13.21 0 00-1.216-.303c-.678-.146-1.247-.318-1.703-.513-.458-.196-.822-.463-1.09-.8-.269-.34-.403-.759-.403-1.26 0-.48.142-.904.426-1.275.283-.372.693-.658 1.23-.858.537-.2 1.17-.299 1.895-.299.58 0 1.082.066 1.505.198.423.133.774.309 1.053.528.28.22.484.45.612.691.13.24.194.477.194.705 0 .21-.08.4-.241.567a.8.8 0 01-.603.252c-.22 0-.386-.05-.5-.151-.114-.101-.237-.266-.37-.495a2.27 2.27 0 00-.618-.768c-.241-.184-.627-.276-1.16-.276-.494 0-.893.1-1.196.3-.303.199-.455.44-.455.72 0 .173.053.324.155.45.103.128.245.235.426.326.18.091.363.162.547.214.185.052.49.126.916.225a15.47 15.47 0 011.446.38c.432.138.8.307 1.103.503.302.198.54.45.709.752.17.302.255.673.255 1.111 0 .525-.148.998-.442 1.417z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_skype .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M19.537 13.698c.115-.52.176-1.06.176-1.614 0-4.155-3.415-7.524-7.63-7.524-.444 0-.88.038-1.304.11A4.444 4.444 0 008.425 4C5.981 4 4 5.954 4 8.364c0 .805.222 1.56.608 2.207a7.428 7.428 0 00-.155 1.513c0 4.156 3.416 7.4 7.63 7.4.477 0 .944-.044 1.397-.126.623.33 1.335.642 2.092.642 2.444 0 4.425-1.953 4.425-4.364a4.3 4.3 0 00-.46-1.938zm-3.974 1.457c-.294.418-.725.747-1.293.984-.567.238-1.239.356-2.016.356-.933 0-1.702-.162-2.308-.486a2.986 2.986 0 01-1.047-.934c-.268-.39-.403-.768-.403-1.137 0-.213.08-.395.242-.547a.855.855 0 01.615-.229.76.76 0 01.512.178c.14.119.26.294.358.527.12.278.25.51.39.695.139.185.336.34.589.46.254.12.587.18 1 .18.566 0 1.027-.12 1.382-.364.354-.243.532-.547.532-.91a.919.919 0 00-.287-.702 1.88 1.88 0 00-.741-.412 13.21 13.21 0 00-1.216-.303c-.678-.146-1.247-.318-1.703-.513-.458-.196-.822-.463-1.09-.8-.269-.34-.403-.759-.403-1.26 0-.48.142-.904.426-1.275.283-.372.693-.658 1.23-.858.537-.2 1.17-.299 1.895-.299.58 0 1.082.066 1.505.198.423.133.774.309 1.053.528.28.22.484.45.612.691.13.24.194.477.194.705 0 .21-.08.4-.241.567a.8.8 0 01-.603.252c-.22 0-.386-.05-.5-.151-.114-.101-.237-.266-.37-.495a2.27 2.27 0 00-.618-.768c-.241-.184-.627-.276-1.16-.276-.494 0-.893.1-1.196.3-.303.199-.455.44-.455.72 0 .173.053.324.155.45.103.128.245.235.426.326.18.091.363.162.547.214.185.052.49.126.916.225a15.47 15.47 0 011.446.38c.432.138.8.307 1.103.503.302.198.54.45.709.752.17.302.255.673.255 1.111 0 .525-.148.998-.442 1.417z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_surfingbird .ya-share2__badge,
.ya-share2__item_service_surfingbird .ya-share2__mobile-popup-badge
{
    background-color: #30baff;
}

.ya-share2__item_service_surfingbird .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M17.315 8.49l-.214 1.987-3.436 3.382h-1.826l-.698 1.826v2.523l-2.47-.698 2.846-5.1L4 8.167l5.638.752L6.899 5l7.463 4.027 2.202-2.47h1.02L20 7.631z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_surfingbird .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M17.315 8.49l-.214 1.987-3.436 3.382h-1.826l-.698 1.826v2.523l-2.47-.698 2.846-5.1L4 8.167l5.638.752L6.899 5l7.463 4.027 2.202-2.47h1.02L20 7.631z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_telegram .ya-share2__badge,
.ya-share2__item_service_telegram .ya-share2__mobile-popup-badge
{
    background-color: #64a9dc;
}

.ya-share2__item_service_telegram .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M18.92 6.089L4.747 11.555c-.967.388-.962.928-.176 1.168l3.534 1.104 1.353 4.146c.164.454.083.634.56.634.368 0 .53-.168.736-.368.13-.127.903-.88 1.767-1.719l3.677 2.717c.676.373 1.165.18 1.333-.628l2.414-11.374c.247-.99-.378-1.44-1.025-1.146zM8.66 13.573l7.967-5.026c.398-.242.763-.112.463.154l-6.822 6.155-.265 2.833-1.343-4.116z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_telegram .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M18.92 6.089L4.747 11.555c-.967.388-.962.928-.176 1.168l3.534 1.104 1.353 4.146c.164.454.083.634.56.634.368 0 .53-.168.736-.368.13-.127.903-.88 1.767-1.719l3.677 2.717c.676.373 1.165.18 1.333-.628l2.414-11.374c.247-.99-.378-1.44-1.025-1.146zM8.66 13.573l7.967-5.026c.398-.242.763-.112.463.154l-6.822 6.155-.265 2.833-1.343-4.116z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_tencentWeibo .ya-share2__badge,
.ya-share2__item_service_tencentWeibo .ya-share2__mobile-popup-badge
{
    background-color: #53a9d7;
}

.ya-share2__item_service_tencentWeibo .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M8.813 6.01a4.397 4.397 0 00-4.326 6.121c.087.199.312.29.511.2a.382.382 0 00.206-.51 3.566 3.566 0 01-.286-1.668A3.616 3.616 0 018.76 6.79a3.615 3.615 0 013.366 3.84 3.615 3.615 0 01-4.65 3.218.39.39 0 00-.486.263.394.394 0 00.262.485c.315.093.647.152.977.174a4.397 4.397 0 004.677-4.087A4.398 4.398 0 008.813 6.01zm-1.348 5.658a1.67 1.67 0 10-.46-.655c-.274.27-.565.59-.854.966-1.022 1.315-2.224 3.694-2.148 7.007.006.204.157.484.355.497l.04.002c.213.015.394-.301.391-.516-.064-2.458.6-4.662 1.955-6.423.242-.316.488-.626.72-.878zm12.388 4.106c-1.307-.48-2.302-1.27-2.95-2.352a4.873 4.873 0 01-.354-.71.819.819 0 00.337-.36.829.829 0 00-.395-1.098.822.822 0 00-1.098.392.822.822 0 00.724 1.177c.091.237.218.516.39.81.483.812 1.431 1.912 3.196 2.558a.226.226 0 00.278-.113c0-.006.005-.01.007-.022a.224.224 0 00-.135-.282zm-3.767-1.676a2.04 2.04 0 01-1.707-3.042 2.039 2.039 0 012.784-.787 2.04 2.04 0 01.786 2.783 1.92 1.92 0 01-.268.378.223.223 0 00.014.314c.09.082.234.074.313-.016a2.489 2.489 0 10-4.017-2.89 2.493 2.493 0 002.08 3.708.224.224 0 00.015-.448z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_tencentWeibo .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M8.813 6.01a4.397 4.397 0 00-4.326 6.121c.087.199.312.29.511.2a.382.382 0 00.206-.51 3.566 3.566 0 01-.286-1.668A3.616 3.616 0 018.76 6.79a3.615 3.615 0 013.366 3.84 3.615 3.615 0 01-4.65 3.218.39.39 0 00-.486.263.394.394 0 00.262.485c.315.093.647.152.977.174a4.397 4.397 0 004.677-4.087A4.398 4.398 0 008.813 6.01zm-1.348 5.658a1.67 1.67 0 10-.46-.655c-.274.27-.565.59-.854.966-1.022 1.315-2.224 3.694-2.148 7.007.006.204.157.484.355.497l.04.002c.213.015.394-.301.391-.516-.064-2.458.6-4.662 1.955-6.423.242-.316.488-.626.72-.878zm12.388 4.106c-1.307-.48-2.302-1.27-2.95-2.352a4.873 4.873 0 01-.354-.71.819.819 0 00.337-.36.829.829 0 00-.395-1.098.822.822 0 00-1.098.392.822.822 0 00.724 1.177c.091.237.218.516.39.81.483.812 1.431 1.912 3.196 2.558a.226.226 0 00.278-.113c0-.006.005-.01.007-.022a.224.224 0 00-.135-.282zm-3.767-1.676a2.04 2.04 0 01-1.707-3.042 2.039 2.039 0 012.784-.787 2.04 2.04 0 01.786 2.783 1.92 1.92 0 01-.268.378.223.223 0 00.014.314c.09.082.234.074.313-.016a2.489 2.489 0 10-4.017-2.89 2.493 2.493 0 002.08 3.708.224.224 0 00.015-.448z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_tumblr .ya-share2__badge,
.ya-share2__item_service_tumblr .ya-share2__mobile-popup-badge
{
    background-color: #547093;
}

.ya-share2__item_service_tumblr .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.72 7.7h3.699v2.857h-3.7v4.102c0 .928-.01 1.463.087 1.726.098.262.343.534.61.69.355.213.758.32 1.214.32.81 0 1.616-.264 2.417-.79v2.522c-.683.322-1.302.55-1.857.678a7.94 7.94 0 01-1.798.195 4.905 4.905 0 01-1.724-.276 4.215 4.215 0 01-1.438-.79c-.399-.343-.673-.706-.826-1.09-.154-.386-.23-.945-.23-1.676v-5.611H7V8.29c.628-.203 1.357-.496 1.804-.877.45-.382.809-.84 1.08-1.374.272-.534.459-1.214.56-2.039h2.276v3.7z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_tumblr .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.72 7.7h3.699v2.857h-3.7v4.102c0 .928-.01 1.463.087 1.726.098.262.343.534.61.69.355.213.758.32 1.214.32.81 0 1.616-.264 2.417-.79v2.522c-.683.322-1.302.55-1.857.678a7.94 7.94 0 01-1.798.195 4.905 4.905 0 01-1.724-.276 4.215 4.215 0 01-1.438-.79c-.399-.343-.673-.706-.826-1.09-.154-.386-.23-.945-.23-1.676v-5.611H7V8.29c.628-.203 1.357-.496 1.804-.877.45-.382.809-.84 1.08-1.374.272-.534.459-1.214.56-2.039h2.276v3.7z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__item_service_twitter .ya-share2__badge,
.ya-share2__item_service_twitter .ya-share2__mobile-popup-badge
{
    background-color: #0f1419;
}

.ya-share2__item_service_twitter .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg width='24' height='24' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3e %3cpath d='M13.5222 10.7749L19.4785 4H18.0671L12.8952 9.88256L8.76437 4H4L10.2466 12.8955L4 20H5.41155L10.8732 13.7878L15.2356 20H20L13.5222 10.7749ZM11.5889 12.9738L10.956 12.0881L5.92015 5.03974H8.0882L12.1522 10.728L12.7851 11.6137L18.0677 19.0075H15.8997L11.5889 12.9738Z' fill='%23fff'/%3e %3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_twitter .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg width='24' height='24' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3e %3cpath d='M13.5222 10.7749L19.4785 4H18.0671L12.8952 9.88256L8.76437 4H4L10.2466 12.8955L4 20H5.41155L10.8732 13.7878L15.2356 20H20L13.5222 10.7749ZM11.5889 12.9738L10.956 12.0881L5.92015 5.03974H8.0882L12.1522 10.728L12.7851 11.6137L18.0677 19.0075H15.8997L11.5889 12.9738Z' fill='%23000'/%3e %3c/svg%3e");
}

.ya-share2__item_service_viber .ya-share2__badge,
.ya-share2__item_service_viber .ya-share2__mobile-popup-badge
{
    background-color: #7b519d;
}

.ya-share2__item_service_viber .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cg fill='%23FFF' fill-rule='evenodd'%3e%3cpath d='M18.434 15.574c-.484-.391-1.002-.743-1.511-1.102-1.016-.718-1.945-.773-2.703.38-.426.648-1.021.677-1.644.392-1.718-.782-3.044-1.989-3.821-3.743-.344-.777-.34-1.473.465-2.022.425-.29.854-.634.82-1.268-.045-.828-2.043-3.593-2.832-3.885a1.429 1.429 0 00-.984 0C4.373 4.95 3.606 6.48 4.34 8.292c2.19 5.405 6.043 9.167 11.349 11.463.302.13.638.183.808.23 1.208.012 2.623-1.158 3.032-2.318.393-1.117-.438-1.56-1.096-2.093zM12.485 4.88c3.879.6 5.668 2.454 6.162 6.38.045.363-.09.909.426.919.538.01.408-.528.413-.89.045-3.699-3.163-7.127-6.888-7.253-.281.04-.863-.195-.9.438-.024.427.466.357.787.406z'/%3e%3cpath d='M13.244 5.957c-.373-.045-.865-.222-.953.299-.09.546.458.49.811.57 2.395.538 3.23 1.414 3.624 3.802.057.349-.057.89.532.8.436-.066.278-.53.315-.802.02-2.293-1.936-4.38-4.329-4.669z'/%3e%3cpath d='M13.464 7.832c-.249.006-.493.033-.585.3-.137.4.152.496.446.544.983.158 1.5.74 1.598 1.725.027.268.195.484.452.454.356-.043.389-.361.378-.664.017-1.106-1.227-2.385-2.289-2.359z'/%3e%3c/g%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_viber .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cg fill='%23000' fill-rule='evenodd'%3e%3cpath d='M18.434 15.574c-.484-.391-1.002-.743-1.511-1.102-1.016-.718-1.945-.773-2.703.38-.426.648-1.021.677-1.644.392-1.718-.782-3.044-1.989-3.821-3.743-.344-.777-.34-1.473.465-2.022.425-.29.854-.634.82-1.268-.045-.828-2.043-3.593-2.832-3.885a1.429 1.429 0 00-.984 0C4.373 4.95 3.606 6.48 4.34 8.292c2.19 5.405 6.043 9.167 11.349 11.463.302.13.638.183.808.23 1.208.012 2.623-1.158 3.032-2.318.393-1.117-.438-1.56-1.096-2.093zM12.485 4.88c3.879.6 5.668 2.454 6.162 6.38.045.363-.09.909.426.919.538.01.408-.528.413-.89.045-3.699-3.163-7.127-6.888-7.253-.281.04-.863-.195-.9.438-.024.427.466.357.787.406z'/%3e%3cpath d='M13.244 5.957c-.373-.045-.865-.222-.953.299-.09.546.458.49.811.57 2.395.538 3.23 1.414 3.624 3.802.057.349-.057.89.532.8.436-.066.278-.53.315-.802.02-2.293-1.936-4.38-4.329-4.669z'/%3e%3cpath d='M13.464 7.832c-.249.006-.493.033-.585.3-.137.4.152.496.446.544.983.158 1.5.74 1.598 1.725.027.268.195.484.452.454.356-.043.389-.361.378-.664.017-1.106-1.227-2.385-2.289-2.359z'/%3e%3c/g%3e%3c/svg%3e");
}

.ya-share2__item_service_vkontakte .ya-share2__badge,
.ya-share2__item_service_vkontakte .ya-share2__mobile-popup-badge
{
    background-color: #07f;
}

.ya-share2__item_service_vkontakte .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.878 17.304c-5.411 0-8.695-3.755-8.823-9.994h2.74c.086 4.583 2.171 6.528 3.77 6.925V7.31h2.627v3.954c1.542-.17 3.155-1.97 3.698-3.954h2.584c-.414 2.441-2.17 4.24-3.412 4.983 1.242.6 3.24 2.17 4.011 5.01h-2.84c-.6-1.898-2.07-3.369-4.04-3.569v3.57h-.315Z' fill='%23fff'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_vkontakte .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.878 17.304c-5.411 0-8.695-3.755-8.823-9.994h2.74c.086 4.583 2.171 6.528 3.77 6.925V7.31h2.627v3.954c1.542-.17 3.155-1.97 3.698-3.954h2.584c-.414 2.441-2.17 4.24-3.412 4.983 1.242.6 3.24 2.17 4.011 5.01h-2.84c-.6-1.898-2.07-3.369-4.04-3.569v3.57h-.315Z' fill='%23000'/%3e%3c/svg%3e");
}

.ya-share2__item_service_whatsapp .ya-share2__badge,
.ya-share2__item_service_whatsapp .ya-share2__mobile-popup-badge
{
    background-color: #65bc54;
}

.ya-share2__item_service_whatsapp .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M20 11.794c0 4.304-3.517 7.794-7.855 7.794a7.87 7.87 0 01-3.796-.97L4 20l1.418-4.182a7.714 7.714 0 01-1.127-4.024C4.29 7.489 7.807 4 12.145 4S20 7.49 20 11.794zm-7.855-6.553c-3.641 0-6.603 2.94-6.603 6.553A6.48 6.48 0 006.8 15.636l-.825 2.433 2.537-.806a6.6 6.6 0 003.633 1.084c3.642 0 6.604-2.94 6.604-6.553s-2.962-6.553-6.604-6.553zm3.967 8.348c-.049-.08-.177-.128-.37-.223-.192-.095-1.139-.558-1.315-.621-.177-.064-.305-.096-.434.095a10.92 10.92 0 01-.61.749c-.112.128-.224.143-.416.048-.193-.096-.813-.297-1.549-.948a5.76 5.76 0 01-1.07-1.323c-.113-.191-.013-.295.084-.39.086-.086.192-.223.289-.334.096-.112.128-.191.192-.319s.032-.239-.016-.335c-.048-.095-.433-1.035-.594-1.418-.16-.382-.32-.318-.433-.318-.112 0-.24-.016-.369-.016a.71.71 0 00-.513.239c-.177.19-.674.653-.674 1.593s.69 1.848.786 1.976c.096.127 1.332 2.119 3.289 2.884 1.958.764 1.958.51 2.31.477.353-.031 1.14-.461 1.3-.908.16-.446.16-.829.113-.908z' fill='%23FFF' fill-rule='evenodd'/%3e%3c/svg%3e");
}

.ya-share2__container_color-scheme_whiteblack .ya-share2__item_service_whatsapp .ya-share2__icon
{
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M20 11.794c0 4.304-3.517 7.794-7.855 7.794a7.87 7.87 0 01-3.796-.97L4 20l1.418-4.182a7.714 7.714 0 01-1.127-4.024C4.29 7.489 7.807 4 12.145 4S20 7.49 20 11.794zm-7.855-6.553c-3.641 0-6.603 2.94-6.603 6.553A6.48 6.48 0 006.8 15.636l-.825 2.433 2.537-.806a6.6 6.6 0 003.633 1.084c3.642 0 6.604-2.94 6.604-6.553s-2.962-6.553-6.604-6.553zm3.967 8.348c-.049-.08-.177-.128-.37-.223-.192-.095-1.139-.558-1.315-.621-.177-.064-.305-.096-.434.095a10.92 10.92 0 01-.61.749c-.112.128-.224.143-.416.048-.193-.096-.813-.297-1.549-.948a5.76 5.76 0 01-1.07-1.323c-.113-.191-.013-.295.084-.39.086-.086.192-.223.289-.334.096-.112.128-.191.192-.319s.032-.239-.016-.335c-.048-.095-.433-1.035-.594-1.418-.16-.382-.32-.318-.433-.318-.112 0-.24-.016-.369-.016a.71.71 0 00-.513.239c-.177.19-.674.653-.674 1.593s.69 1.848.786 1.976c.096.127 1.332 2.119 3.289 2.884 1.958.764 1.958.51 2.31.477.353-.031 1.14-.461 1.3-.908.16-.446.16-.829.113-.908z' fill='%23000' fill-rule='evenodd'/%3e%3c/svg%3e");
}
</style><style type="text/css">.gscb_a{display:inline-block;font:27px/13px arial,sans-serif}.gsst_a .gscb_a{color:#a1b9ed;cursor:pointer}.gsst_a:hover .gscb_a,.gsst_a:focus .gscb_a{color:#36c}.gsst_a{display:inline-block}.gsst_a{cursor:pointer;padding:0 4px}.gsst_a:hover{text-decoration:none!important}.gsst_b{font-size:16px;padding:0 2px;position:relative;user-select:none;-webkit-user-select:none;white-space:nowrap}.gsst_e{vertical-align:middle;opacity:0.55;}.gsst_a:hover .gsst_e,.gsst_a:focus .gsst_e{opacity:0.72;}.gsst_a:active .gsst_e{opacity:1;}.gsst_f{background:white;text-align:left}.gsst_g{background-color:white;border:1px solid #ccc;border-top-color:#d9d9d9;box-shadow:0 2px 4px rgba(0,0,0,0.2);-webkit-box-shadow:0 2px 4px rgba(0,0,0,0.2);margin:-1px -3px;padding:0 6px}.gsst_h{background-color:white;height:1px;margin-bottom:-1px;position:relative;top:-1px}.gsib_a{width:100%;padding:4px 6px 0}.gsib_a,.gsib_b{vertical-align:top}.gssb_c{border:0;position:absolute;z-index:989}.gssb_e{border:1px solid #ccc;border-top-color:#d9d9d9;box-shadow:0 2px 4px rgba(0,0,0,0.2);-webkit-box-shadow:0 2px 4px rgba(0,0,0,0.2);cursor:default}.gssb_f{visibility:hidden;white-space:nowrap}.gssb_k{border:0;display:block;position:absolute;top:0;z-index:988}.gsdd_a{border:none!important}.gsq_a{padding:0}.gssb_a{padding:0 7px}.gssb_a,.gssb_a td{white-space:nowrap;overflow:hidden;line-height:22px}#gssb_b{font-size:11px;color:#36c;text-decoration:none}#gssb_b:hover{font-size:11px;color:#36c;text-decoration:underline}.gssb_g{text-align:center;padding:8px 0 7px;position:relative}.gssb_h{font-size:15px;height:28px;margin:0.2em;-webkit-appearance:button}.gssb_i{background:#eee}.gss_ifl{visibility:hidden;padding-left:5px}.gssb_i .gss_ifl{visibility:visible}a.gssb_j{font-size:13px;color:#36c;text-decoration:none;line-height:100%}a.gssb_j:hover{text-decoration:underline}.gssb_l{height:1px;background-color:#e5e5e5}.gssb_m{color:#000;background:#fff}.gssb_a{padding:0 9px}.gsib_a{padding:5px 9px 4px 9px}.gscb_a{line-height:27px}.gssb_e{border:0}.gssb_l{margin:5px 0}input.gsc-input::-webkit-input-placeholder{font-size:14px}input.gsc-input:-moz-placeholder{font-size:14px}input.gsc-input::-moz-placeholder{font-size:14px}input.gsc-input:-ms-input-placeholder{font-size:14px}input.gsc-input:focus::-webkit-input-placeholder{color:transparent}input.gsc-input:focus:-moz-placeholder{color:transparent}input.gsc-input:focus::-moz-placeholder{color:transparent}input.gsc-input:focus:-ms-input-placeholder{color:transparent}.gssb_c .gsc-completion-container{position:static}.gssb_c{z-index:5000}.gsc-completion-container table{background:transparent;font-size:inherit;font-family:inherit}.gssb_c > tbody > tr,.gssb_c > tbody > tr > td,.gssb_d,.gssb_d > tbody > tr,.gssb_d > tbody > tr > td,.gssb_e,.gssb_e > tbody > tr,.gssb_e > tbody > tr > td{padding:0;margin:0;border:0}.gssb_a table,.gssb_a table tr,.gssb_a table tr td{padding:0;margin:0;border:0}</style><style type="text/css">#ya-site-form0 .ya-site-suggest{position:relative;margin:0}#ya-site-form0 .ya-site-suggest-popup{position:absolute;width:100%}#ya-site-form0 .ya-site-suggest__opera-gap{position:absolute;height:25em;border:1px solid transparent}#ya-site-form0 .ya-site-suggest-list{position:absolute;z-index:9999;overflow:hidden;min-width:25em;width:100%;margin-top:-1px;border-collapse:separate;-webkit-box-shadow:0 1px 7px #9a9a9a;-moz-box-shadow:0 1px 7px #9a9a9a;box-shadow:0 1px 7px #9a9a9a;border:1px solid #dedede;border-color:rgba(154,154,154,.4) rgba(154,154,154,.5) rgba(154,154,154,.6);box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box}#ya-site-form0 .ya-site-suggest__iframe{position:absolute;z-index:-1;min-width:25em;width:100%;height:100%;background:#fff}#ya-site-form0 .ya-site-suggest-items{font-size:16px;min-width:25em;width:100%;margin:0;padding:0 1px 0 0;list-style:none}#ya-site-form0 .ya-site-suggest-items li{margin:0;padding:0;line-height:normal}#ya-site-form0 .ya-site-suggest-elem{display:block;padding:.25em .3em;cursor:pointer;background:url()}#ya-site-form0 a.ya-site-suggest-elem:link,#ya-site-form0 a.ya-site-suggest-elem:visited{text-decoration:none}html body #ya-site-form0 .ya-site-suggest-elem-link,html body #ya-site-form0 .ya-site-suggest-elem:link{color:#000!important}#ya-site-form0 .ya-site-suggest-elem:hover,html body #ya-site-form0 .ya-site-suggest-elem_state_hover{background:#fef6d7}#ya-site-form0 .ya-site-suggest-elem_nav:hover,#ya-site-form0 .ya-site-suggest-elem_translate:hover{text-decoration:none;color:#000!important}#ya-site-form0 .ya-site-suggest-elem_nav .ya-site-suggest__link{text-decoration:underline;color:#1a3dc1}#ya-site-form0 .ya-site-suggest-elem_translate .ya-site-suggest__link{text-decoration:underline;color:#000}#ya-site-form0 .ya-site-suggest-elem .ya-site-suggest__info{white-space:nowrap;color:#666}#ya-site-form0 .ya-site-suggest-elem_selected{background:#fdedaf}#ya-site-form0 .ya-site-suggest__fact{color:#555}#ya-site-form0 .ya-site-suggest__highlight{font-weight:700}</style><link title="www.cyberforum.ru" rel="search" type="application/opensearchdescription+xml" href="https://yandex.ru/search/site/opensearch.xml?ShortName=www.cyberforum.ru&amp;InputEncoding=utf-8&amp;Image=&amp;Url-results=https%3A%2F%2Fwww.cyberforum.ru%2Fyandex.php%3Fsearchid%3D364949%26web%3D0%26text%3D%7BsearchTerms%7D&amp;Url-suggest=https%3A%2F%2Fsitesearch-suggest.yandex.ru%2Fv1%2Fsuggest%3F%26site%3D364949%26lang%3Dru%26part%3D%7BsearchTerms%7D&amp;Url-opensearchdescr=https%3A%2F%2Fyandex.ru%2Fsearch%2Fsite%2Fopensearch.xml%3FShortName%3Dwww.cyberforum.ru%26InputEncoding%3Dutf-8%26Image%3D%26Url-results%3Dhttps%253A%252F%252Fwww.cyberforum.ru%252Fyandex.php%253Fsearchid%253D364949%2526web%253D0%2526text%253D%257BsearchTerms%257D%26Url-suggest%3Dhttps%253A%252F%252Fsitesearch-suggest.yandex.ru%252Fv1%252Fsuggest%253F%2526site%253D364949%2526lang%253Dru%2526part%253D%257BsearchTerms%257D"></head><body onload=""><div id="krqqdiv" class="smallfont krqq_popupbutton" onmouseout="krobj.settime=setTimeout(&#39;hide_insert()&#39;,2000); krobj.insert_over = false;" onmousedown="krobj.insert_text();" onmouseover="clearTimeout(krobj.settime); krobj.insert_over=true; catchSelection();" title="Цитировать выделенный текст">Цитировать</div>
<script>
<!--
var krflqr_normal = 'Свернуть окно';
var krflqr_float = 'Окно ответа';
//-->
</script>
<script src="./Создать класс Point - C# .NET 4_files/dragdrop-min.js.загружено"></script>
<script src="./Создать класс Point - C# .NET 4_files/qrpos.js.загружено"></script>
	<style type="text/css" id="vbulletin_showthread_css">
	<!--
	
	#links div { white-space: nowrap; }
	#links img { vertical-align: middle; }
	-->
	</style>




<div style="min-width: 1100px;  margin: 7px 20px 80px 20px;">


<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">


<div class="vbmenu_popup" id="vbbloglinks_menu" style="display: none; margin-top: 3px; position: absolute; z-index: 50;" align="left">
	<table cellpadding="4" cellspacing="1" border="0">

	<tbody><tr>
		<td class="thead"><a href="https://www.cyberforum.ru/blogs/">Блоги</a></td>
	</tr>
	
	<tr>
		<td class="vbmenu_option vbmenu_option_alink"><a href="https://www.cyberforum.ru/blogs/recent-entries/">Последние записи</a></td>
	</tr>
	<tr>
		<td class="vbmenu_option vbmenu_option_alink"><a href="https://www.cyberforum.ru/blogs/best-entries/">Лучшие записи</a></td>
	</tr>
	<tr>
		<td class="vbmenu_option vbmenu_option_alink"><a href="https://www.cyberforum.ru/blogs/best-blogs/">Лучшие блоги</a></td>
	</tr>
	<tr>
		<td class="vbmenu_option vbmenu_option_alink"><a href="https://www.cyberforum.ru/blogs/tags/">Облако меток</a></td>
	</tr>
	<tr>
		<td class="vbmenu_option vbmenu_option_alink"><a href="https://www.cyberforum.ru/blogs/all/">Список блогов</a></td>
	</tr>
	
	<tr>
		<td class="vbmenu_option vbmenu_option_alink"><a href="https://www.cyberforum.ru/blog_search.php?do=search">Поиск по блогам</a></td>
	</tr>
	

	</tbody></table>
</div>
<table class="tborder" cellpadding="5" cellspacing="1" border="0" width="100%" align="center">
<tbody><tr>

	<td class="alt1" width="100%" style="padding-left: 10px">
		<a href="https://www.cyberforum.ru/" style="display: block; float: left; margin: 5px 25px 10px 0px"><img loading="lazy" decoding="async" border="0" src="./Создать класс Point - C# .NET 4_files/cyberforum_logo.png" height="50px" alt="Форум программистов, компьютерный форум, киберфорум" title="Форум программистов, компьютерный форум, киберфорум"></a>
		<div class="smallfont" style="float: right; margin: 0px 0px 0px 20px;">
			<div class="ya-share2 ya-share2_inited" data-services="vkontakte,odnoklassniki" data-image="//cyberstatic.net/images/cyberforum_logo.png"><div class="ya-share2__container ya-share2__container_size_m ya-share2__container_color-scheme_normal ya-share2__container_shape_normal"><ul class="ya-share2__list ya-share2__list_direction_horizontal"><li class="ya-share2__item ya-share2__item_service_vkontakte"><a class="ya-share2__link" href="https://vk.com/share.php?url=https%3A%2F%2Fwww.cyberforum.ru%2Fcsharp-beginners%2Fthread1787565.html&amp;title=%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D1%82%D1%8C%20%D0%BA%D0%BB%D0%B0%D1%81%D1%81%20Point%20-%20C%23%20.NET%204.x%20-%20%D0%9A%D0%B8%D0%B1%D0%B5%D1%80%D1%84%D0%BE%D1%80%D1%83%D0%BC&amp;image=%2F%2Fcyberstatic.net%2Fimages%2Fcyberforum_logo.png&amp;utm_source=share2" rel="nofollow noopener" target="_blank" title="ВКонтакте"><span class="ya-share2__badge"><span class="ya-share2__icon"></span></span><span class="ya-share2__title">ВКонтакте</span></a></li><li class="ya-share2__item ya-share2__item_service_odnoklassniki"><a class="ya-share2__link" href="https://connect.ok.ru/offer?url=https%3A%2F%2Fwww.cyberforum.ru%2Fcsharp-beginners%2Fthread1787565.html&amp;title=%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D1%82%D1%8C%20%D0%BA%D0%BB%D0%B0%D1%81%D1%81%20Point%20-%20C%23%20.NET%204.x%20-%20%D0%9A%D0%B8%D0%B1%D0%B5%D1%80%D1%84%D0%BE%D1%80%D1%83%D0%BC&amp;imageUrl=%2F%2Fcyberstatic.net%2Fimages%2Fcyberforum_logo.png&amp;utm_source=share2" rel="nofollow noopener" target="_blank" title="Одноклассники"><span class="ya-share2__badge"><span class="ya-share2__icon"></span></span><span class="ya-share2__title">Одноклассники</span></a></li></ul></div></div>
		</div>
		
			
				<span class="forumtitle2">C# для начинающих</span>
			
			<div class="smallfont"><a href="https://www.cyberforum.ru/" accesskey="1">Форум программистов и сисадминов Киберфорум</a>
	<span class="navbar"> &gt; <a href="https://www.cyberforum.ru/programming/">Форум программистов</a></span>

	<span class="navbar"> &gt; <a href="https://www.cyberforum.ru/net-framework/">.NET</a></span>

	<span class="navbar"> &gt; <a href="https://www.cyberforum.ru/csharp-net/">C# .NET</a></span>

	<span class="navbar"> &gt; <a href="https://www.cyberforum.ru/csharp-beginners/">C# для начинающих</a></span>
</div>
		
	</td>

	<td class="alt2" nowrap="">
	<div class="smallfont">
		<span style="white-space: normal"><b>Добро пожаловать, <a href="https://www.cyberforum.ru/members/1679885.html">Alex_1966</a>.</b></span><br>
		
			Последний визит: Сегодня <span class="time">09:32</span>
		

		

		

		
		<div>
			<a href="https://www.cyberforum.ru/usercp.php">Профиль</a>
			
		</div>
		<div>
			<a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Alex_1966">Мои темы</a> | <a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=0&amp;exactname=1&amp;searchuser=Alex_1966">Темы с моими ответами</a> | <a href="https://www.cyberforum.ru/login.php?do=logout&amp;logouthash=1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e" onclick="return log_out(&#39;Вы действительно хотите выйти?&#39;)">Выход</a>
		</div>
		
	</div>
	</td>

</tr>
</tbody></table>
<div class="tborder" style="padding:1px; border-top-width:0px; margin-bottom: 3px;">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
	<tbody><tr align="center">
		
			<td class="vbmenu_control"><a href="https://www.cyberforum.ru/usercp.php">Профиль</a></td>
		
		
			<td class="vbmenu_control"><a href="https://www.cyberforum.ru/announcement.php?a=3">Правила</a></td>
		

		<td class="vbmenu_control"><a id="vbbloglinks" href="https://www.cyberforum.ru/blogs/" style="cursor: pointer;">Блоги <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></a><script>vbmenu_register("vbbloglinks");</script></td>
		
			<td class="vbmenu_control"><a id="community" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html?nojs=1#community" accesskey="6" style="cursor: pointer;">Сообщество <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></a> <script> vbmenu_register("community"); </script></td>
		
		
			
				
				<td class="vbmenu_control"><a href="https://www.cyberforum.ru/search.php?do=getnew" accesskey="2">Новые сообщения</a> [<a id="forums_search" href="https://www.cyberforum.ru/" accesskey="3" style="cursor: pointer;">разделы <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></a>] <script> vbmenu_register("forums_search"); </script></td>
				
				<td class="vbmenu_control"><a id="navbar_search" href="https://www.cyberforum.ru/search.php" accesskey="4" style="cursor: pointer;">Поиск <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></a> <script> vbmenu_register("navbar_search"); </script></td>
			
			
				<td class="vbmenu_control"><a id="usercptools" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html?nojs=1#usercptools" accesskey="3" style="cursor: pointer;">Навигация <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></a> <script> vbmenu_register("usercptools"); </script></td>
			
		
		
		
		<td class="vbmenu_control" width="100%">&nbsp;</td>
		</tr>
	</tbody></table>
</div>








	
	<div class="vbmenu_popup" id="community_menu" style="display:none;margin-top:3px" align="left">
		<table cellpadding="4" cellspacing="1" border="0">
		<tbody><tr><td class="thead">Ссылки сообщества</td></tr>
		
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/showgroups.php">Лидеры форума</a></td></tr>
		<tr><td class="vbmenu_option"><a href="http://www.cyberguru.ru/" target="_blank" rel="noopener">CyberGuru.ru - Программирование, исходники</a></td></tr>
	
		
			<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/groups/">Социальные группы</a></td></tr>
		
		
			<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/albums.html">Изображения и альбомы</a></td></tr>
		
		
			<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=buddylist">Знакомые</a></td></tr>
		
		
		
			<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/tags/">Облако меток</a></td></tr>
		
		
			<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/calendar.php">Календарь</a></td></tr>
		


			<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/awards.php">Награды</a></td></tr>

		

		</tbody></table>
	</div>
	
	
	<div class="vbmenu_popup" id="forums_search_menu" style="display:none;margin-top:3px" align="left">
		<table cellpadding="4" cellspacing="1" border="0">
		<tbody><tr><td class="thead">Поиск новых сообщений в разделах</td></tr>

		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getsubsnew">Разделы с подпиской</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getsubsnew2">Разделы с подпиской (без подразделов)</a></td>	
		</tr>
		<tr><td class="thead">Поиск новых сообщений в категориях</td></tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=1">Форум программистов</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=2">Компьютерный форум</a></td>
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=177">Форум вебмастеров</a></td>
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=241">Форум о софте</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=3">Форум по электронике и бытовой технике</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=226">Научный форум</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=98">Карьера и бизнес</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=4">Общие форумы</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getnew&amp;f=86">Административные разделы</a></td>	
		</tr>
		</tbody></table>
	</div>
	
	
	<div class="vbmenu_popup" id="navbar_search_menu" style="display:none;margin-top:3px" align="left">
		<table cellpadding="4" cellspacing="1" border="0" width="320px">

    <tbody><tr>
            <td class="thead">Самые популярные темы</td>
    </tr>
    <tr><td style="background: #BBC7CE; padding: 0px">
        <table cellpadding="4" cellspacing="1" border="0"><tbody><tr>
            <td class="vbmenu_option" style="padding: 4px 27px; border-right: 1px solid #FFFFFF"><a href="https://www.cyberforum.ru/search.php?do=getpopular1">За сутки</a></td>
            <td class="vbmenu_option" style="padding: 4px 27px; border-right: 1px solid #FFFFFF"><a href="https://www.cyberforum.ru/search.php?do=getpopular3">За 3 дня</a></td>
            <td class="vbmenu_option" style="padding: 4px 20px"><a href="https://www.cyberforum.ru/search.php?do=getpopular7">За неделю</a></td>
        </tr></tbody></table>
    </td></tr>

    <tr>
            <td class="thead">Поиск Yandex по форуму</td>
    </tr>
<tr>
<td class="vbmenu_option" title="nohilite">

<div class="ya-site-form ya-site-form_bg_transparent ya-site-form_logo_hint ya-site-form_inited_yes" id="ya-site-form0"><div class="ya-site-form__form"><table class="ya-site-form__wrap" cellpadding="0" cellspacing="0"><tbody><tr><td class="ya-site-form__search-wrap"><table class="ya-site-form__search" cellpadding="0" cellspacing="0"><tbody><tr><td class="ya-site-form__search-input"><table class="ya-site-form__search-input-layout"><tbody><tr><td class="ya-site-form__search-input-layout-l"><div class="ya-site-form__input"><input name="text" type="search" value="" class="ya-site-form__input-text ya-site-form__input-text_type_hint" autocomplete="off"><div class="ya-site-suggest"><div class="ya-site-suggest-popup" style="display: none;"><i class="ya-site-suggest__opera-gap"></i><div class="ya-site-suggest-list"><div class="ya-site-suggest__iframe"></div><ul class="ya-site-suggest-items"></ul></div></div></div></div></td><td class="ya-site-form__search-input-layout-r"><input class="ya-site-form__submit" type="button" value="Найти"></td></tr></tbody></table></td></tr><tr><td class="ya-site-form__gap"><div class="ya-site-form__gap-i"></div></td></tr></tbody></table></td></tr></tbody></table></div></div><style type="text/css">.ya-page_js_yes .ya-site-form_inited_no { display: none; }</style><script>(function(w,d,c){var s=d.createElement('script'),h=d.getElementsByTagName('script')[0],e=d.documentElement;if((' '+e.className+' ').indexOf(' ya-page_js_yes ')===-1){e.className+=' ya-page_js_yes';}s.type='text/javascript';s.async=true;s.charset='utf-8';s.src=(d.location.protocol==='https:'?'https:':'http:')+'//site.yandex.net/v2.0/js/all.js';h.parentNode.insertBefore(s,h);(w[c]||(w[c]=[])).push(function(){Ya.Site.Form.init()})})(window,document,'yandex_site_callbacks');</script>

</td>
</tr>
    <tr>
            <td class="thead">Поиск Google по форуму</td>
    </tr>
<tr>
<td class="vbmenu_option" title="nohilite" width="300px">

<script>
  (function() {
    var cx = 'partner-pub-6796001588681838:1260530199';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<div id="___gcse_0"><div class="gsc-control-searchbox-only gsc-control-searchbox-only-ru" dir="ltr"><form class="gsc-search-box gsc-search-box-tools" accept-charset="utf-8"><table cellspacing="0" cellpadding="0" role="presentation" class="gsc-search-box"><tbody><tr><td class="gsc-input"><div class="gsc-input-box" id="gsc-iw-id1"><table cellspacing="0" cellpadding="0" role="presentation" id="gs_id50" class="gstl_50 gsc-input" style="width: 100%; padding: 0px;"><tbody><tr><td id="gs_tti50" class="gsib_a"><input autocomplete="off" type="text" size="10" class="gsc-input" name="search" title="поиск" aria-label="поиск" id="gsc-i-id1" dir="ltr" spellcheck="false" style="width: 100%; padding: 0px; border: none; margin: 0px; height: auto; background: url(&quot;https://www.google.com/cse/static/images/1x/ru/branding.png&quot;) left center no-repeat rgb(255, 255, 255); outline: none;"></td><td class="gsib_b"><div class="gsst_b" id="gs_st50" dir="ltr"><a class="gsst_a" href="javascript:void(0)" title="Очистить окно поиска" role="button" style="display: none;"><span class="gscb_a" id="gs_cb50" aria-hidden="true">×</span></a></div></td></tr></tbody></table></div></td><td class="gsc-search-button"><button class="gsc-search-button gsc-search-button-v2"><svg width="13" height="13" viewBox="0 0 13 13"><title>поиск</title><path d="m4.8495 7.8226c0.82666 0 1.5262-0.29146 2.0985-0.87438 0.57232-0.58292 0.86378-1.2877 0.87438-2.1144 0.010599-0.82666-0.28086-1.5262-0.87438-2.0985-0.59352-0.57232-1.293-0.86378-2.0985-0.87438-0.8055-0.010599-1.5103 0.28086-2.1144 0.87438-0.60414 0.59352-0.8956 1.293-0.87438 2.0985 0.021197 0.8055 0.31266 1.5103 0.87438 2.1144 0.56172 0.60414 1.2665 0.8956 2.1144 0.87438zm4.4695 0.2115 3.681 3.6819-1.259 1.284-3.6817-3.7 0.0019784-0.69479-0.090043-0.098846c-0.87973 0.76087-1.92 1.1413-3.1207 1.1413-1.3553 0-2.5025-0.46363-3.4417-1.3909s-1.4088-2.0686-1.4088-3.4239c0-1.3553 0.4696-2.4966 1.4088-3.4239 0.9392-0.92727 2.0864-1.3969 3.4417-1.4088 1.3553-0.011889 2.4906 0.45771 3.406 1.4088 0.9154 0.95107 1.379 2.0924 1.3909 3.4239 0 1.2126-0.38043 2.2588-1.1413 3.1385l0.098834 0.090049z"></path></svg></button></td><td class="gsc-clear-button"><div class="gsc-clear-button" title="удалить результаты">&nbsp;</div></td></tr></tbody></table></form></div></div>

</td>
</tr>
		<tr>
			<td class="thead">Поиск по форуму</td>
		</tr>

		<tr>
			<td class="vbmenu_option" title="nohilite">
				<form action="https://www.cyberforum.ru/search.php?do=process" method="post">

					<input type="hidden" name="do" value="process">
					<input type="hidden" name="quicksearch" value="1">
					<input type="hidden" name="childforums" value="1">
					<input type="hidden" name="exactname" value="1">
					<input type="hidden" name="s" value="">
					<input type="hidden" name="securitytoken" value="1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e">
					<div><input type="text" class="bginput" name="query" size="25" tabindex="1001"><input type="submit" class="button" value="Вперёд" tabindex="1004"></div>
					<div style="margin-top:5px">
						<label for="rb_nb_sp0"><input type="radio" name="showposts" value="0" id="rb_nb_sp0" tabindex="1002" checked="checked">Отобразить темы</label>
						&nbsp;
						<label for="rb_nb_sp1"><input type="radio" name="showposts" value="1" id="rb_nb_sp1" tabindex="1003">Отображать сообщения</label>
					</div>
				</form>
			</td>
		</tr>
		
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/tags/">Поиск по метке</a></td>
		</tr>
		

		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php" accesskey="4">Расширенный поиск</a></td>
		</tr>


<tr>
	<td class="thead">Поиск по блогам</td>
</tr>
<tr>
	<td class="vbmenu_option" title="nohilite">
		<form action="https://www.cyberforum.ru/blog_search.php?do=dosearch" method="post">
			<input type="hidden" name="s" value="">
			<input type="hidden" name="securitytoken" value="1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e">
			<input type="hidden" name="do" value="dosearch">
			<input type="hidden" name="quicksearch" value="1">
			<div><input type="text" class="bginput" name="text" size="25" tabindex="2003"><input type="submit" class="button" value="Вперёд" tabindex="2004"></div>
		</form>
	</td>
</tr>

<tr>
	<td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/tags/" rel="nofollow">Поиск по метке</a></td>
</tr>

<tr>
	<td class="vbmenu_option"><a href="https://www.cyberforum.ru/blog_search.php?do=search">Расширенный поиск</a></td>
</tr>

    <tr>
            <td class="thead">Поиск пользователей</td>
    </tr>
    <tr>
<td class="vbmenu_option" title="nohilite">
<form action="https://www.cyberforum.ru/members/list/" method="post">
            <input type="hidden" name="s" value="">
            <input type="hidden" name="securitytoken" value="1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e">
            <input type="hidden" name="do" value="getall">
            <div><input type="text" class="bginput" name="ausername" size="25" value="" title="Имя"><input type="submit" class="button" value="Вперёд"></div>
</form>
        </td>
    </tr>
    <tr>
        <td class="vbmenu_option"><a href="https://www.cyberforum.ru/memberlist.php?do=search">Расширенный поиск пользователей</a></td>
    </tr>

		<tr><td class="thead">Мои сообщения и темы</td></tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Alex_1966">Мои темы</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=1679885">Мои сообщения</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=0&amp;exactname=1&amp;searchuser=Alex_1966">Темы с моими сообщениями</a></td>	
		</tr>

		</tbody></table>
	</div>
	
	
	
	<div class="vbmenu_popup" id="usercptools_menu" style="display:none;margin-top:3px" align="left">
		<table cellpadding="4" cellspacing="1" border="0">

		<tbody><tr><td class="thead">Навигация</td></tr>
		<tr><td class="vbmenu_option"><b><a href="https://www.cyberforum.ru/krtests.php?do=testslist">Тесты</a></b></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=getdaily">Сообщения за день</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/forumdisplay.php?do=markread&amp;markreadhash=1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e">Все разделы прочитаны</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/thumbs_center.php">Оценки сообщений</a></td></tr>
		
		

	

		<tr><td class="thead"><a href="https://www.cyberforum.ru/usercp.php">Профиль</a></td></tr>
		
		<!--<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=editavatar">Изменить аватар</a></td></tr>-->
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=editprofile">Редактировать данные</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=editoptions">Опции</a></td></tr>
		

		<tr><td class="thead">Разное</td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/private.php">Личные сообщения</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/subscription.php">Темы с подпиской</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/1679885.html">Мой профиль</a></td></tr>
		
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#" onclick="window.open(&#39;misc.php?do=buddylist&amp;focus=1&#39;,&#39;buddylist&#39;,&#39;statusbar=no,menubar=no,toolbar=no,scrollbars=yes,resizable=yes,width=250,height=300&#39;); return false;">Список знакомых</a></td></tr>
		

		<tr><td class="thead">Полезные ссылки</td></tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/announcement.php?a=3">Правила форума</a></td>
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/about-forum/thread2273341.html">Права пользователей</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/about-forum/thread1009691.html">Административные возможности форума</a></td>	
		</tr>
		<tr>
			<td class="vbmenu_option"><a href="https://www.cyberforum.ru/about-forum/thread103521.html">Как работать в редакторах</a></td>	
		</tr>
		</tbody></table>
	</div>
	
	<div class="vbmenu_popup" id="pagenav_menu" style="display: none; position: absolute; z-index: 50;">
		<table cellpadding="4" cellspacing="1" border="0">
		<tbody><tr>
			<td class="thead" nowrap="nowrap">К странице...</td>
		</tr>
		<tr>
			<td class="vbmenu_option" title="">
			<form action="https://www.cyberforum.ru/index.php" method="get" onsubmit="return this.gotopage()" id="pagenav_form">
				<input type="text" class="bginput smallfont" id="pagenav_itxt" size="4">
				<input type="button" class="button" id="pagenav_ibtn" value="Вперёд">
			</form>
			</td>
		</tr>
		</tbody></table>
	</div>




<a name="poststop" id="poststop"></a>

<table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin: 3px 0px 3px 0px;">
<tbody><tr valign="bottom">
	
		<td class="smallfont" align="left" width="240px">
			<a target="_blank" href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;noquote=1&amp;p=9414480"><img loading="lazy" decoding="async" class="buttonimg" src="./Создать класс Point - C# .NET 4_files/reply.png" alt="Ответ" border="0" title="Ответ"></a>
			<a target="_blank" href="https://www.cyberforum.ru/newthread.php?do=newthread&amp;f=91"><img loading="lazy" decoding="async" class="buttonimg" src="./Создать класс Point - C# .NET 4_files/newthread.png" alt="Создать тему" border="0" title="Создать тему"></a></td>
	
	<td class="smallfont" style="padding-left: 5px;"></td>

	<td class="smallfont" align="left"></td>

	<td align="right"><div class="pagenav" align="right">
<table class="tborder" cellpadding="3" cellspacing="1" border="0">
<tbody><tr>
	<td class="vbmenu_control">1 из 2</td>
	
	
		<td class="alt2"><span title="Показано с 1 по 20 из 24."><strong>1</strong></span></td>
 <td class="alt1"><a href="https://www.cyberforum.ru/csharp-beginners/thread1787565-page2.html" title="с 21 по 24 из 24">2</a></td>
	<td class="alt1"><a rel="next" class="nowrapped" href="https://www.cyberforum.ru/csharp-beginners/thread1787565-page2.html" title="Следующая страница - с 21 по 24 из 24">Ctrl <span class="pnarrow">&gt;</span></a></td>
	<td class="alt1"><a rel="end" href="https://www.cyberforum.ru/csharp-beginners/thread1787565-page2.html" title="Последняя страница - с  по  из 24 • Ctrl+Shift →"><strong>»</strong></a></td>
	<td class="vbmenu_control" title="" id="pagenav.97" style="cursor: pointer;"> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></td>
</tr>
</tbody></table>
</div></td>
</tr>
</tbody></table>

<table class="tborder" cellpadding="5" cellspacing="1" border="0" width="100%" align="center" style="border-bottom-width:0px">
<tbody><tr>
	<td class="tcat" width="100%">
		<div class="smallfont">
		
		&nbsp;
		</div>
	</td>

<td class="vbmenu_control" id="threadrating" nowrap="nowrap" style="cursor: pointer;">
	
		<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html?nojs=1#goto_threadrating"><span id="threadrating_current">Рейтинг: <img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/rating_5.gif" alt="Рейтинг темы: голосов - 64, средняя оценка - 4.67" border="0" title="Рейтинг темы: голосов - 64, средняя оценка - 4.67"></span></a>
		<script> vbmenu_register("threadrating"); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt="">
	
</td>

	<td class="vbmenu_control" id="threadtools" nowrap="nowrap" style="cursor: pointer;">
		<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html?nojs=1#goto_threadtools">Опции темы</a>
		<script> vbmenu_register("threadtools"); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt="">
	</td>


	<td class="vbmenu_control" id="threadsearch" nowrap="nowrap" style="cursor: pointer;">
		<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html?nojs=1#goto_threadsearch">Поиск в теме</a>
		<script> vbmenu_register("threadsearch"); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt="">
	</td>



</tr>
</tbody></table>


		</div>
	</div>
</div>




<script src="./Создать класс Point - C# .NET 4_files/vbulletin_ajax_reputation.js.загружено"></script>


<div id="posts">

	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9414480" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9414480" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9414480" style="cursor: pointer;"><script> vbmenu_register("postmenu_9414480", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9414480_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9414480">В закладки</a>]
	


	<span id="kr_floatqr_9414480">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9414480.html" target="_blank" id="postcount9414480" name="1"><b>1</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9414480" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9414480" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9414480&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9414480&#39;; krobj.validobj = false;}">

		
			<span style="font-size: 18px; color: #3774A4">.NET 4.x</span> <h1 style="color: #3774A4">Создать класс Point</h1>
			<div class="smallfont shade" style="margin: 10px 0px 0px 30px">30.07.2016, 11:23. <b>Показов</b> 11585. <b>Ответов</b> <a target="_blank" href="https://www.cyberforum.ru/threadposts1787565.html">23</a></div>
			<div class="smallfont shade" style="margin: 5px 0px 0px 30px"><b>Метки</b> <span style="background-color: #FFFACD; font-color: #000000; padding: 3px"><b>Укажите метки</b></span> <img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/11x11progress.gif" id="tag_form_progress" class="inlineimg" style="display:none" alt=""> (<a href="https://www.cyberforum.ru/tags/">Все метки</a>)</div>
			<hr size="1" style="color: #AAAAAA; margin: 7px 0px 10px 0px">
		

		

		
			
		

		<div id="post_message_9414480" style="margin: 2px 2px 2px 5px;">



			

			Здравствуйте уважаемые! Помогите выяснить почему программа не работает так как нужно!<br>
Создать класс Point, содержащий следующие члены класса:<br>
1. Поля: int x, y;<br>
2. Конструкторы, позволяющие создать экземпляр класса:<br>
• с нулевыми координатами;<br>
• с заданными координатами.<br>
3. Методы, позволяющие:<br>
• вывести координаты точки на экран;<br>
• рассчитать расстояние от начала координат до точки;<br>
• переместить точку на плоскости на вектор (a, b).<br>
4. Свойство:<br>
• позволяющее получить-установить координаты точки (доступное для чтения и<br>
записи);<br>
• позволяющее умножить координаты точки на скаляр (доступное только для<br>
записи).<br>
5. Индексатор, позволяющий по индексу 0 обращаться к полю x, по индексу 1 – к<br>
полю y, при других значениях индекса выдается сообщение об ошибке.<br>
6. Перегрузку:<br>
• операции ++ (--): одновременно увеличивает (уменьшает) значение полей х и у<br>
на 1;<br>
• констант true и false: обращение к экземпляру класса дает значение true, если<br>
значение полей x и у совпадает, иначе false;<br>
• операции бинарный +: одновременно добавляет к полям х и у значение скаляра.<br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="77710465" style="height: 505px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
</pre></td><td class="de1"><pre class="de1"><span class="kw1">using</span> <span class="kw1">static</span> <span class="kw5">System</span><span class="sy0">.</span><span class="me1">Console</span><span class="sy0">;</span>
&nbsp;
<span class="kw1">namespace</span> array
<span class="br0">{</span>
&nbsp; &nbsp; <span class="kw4">class</span> Program
&nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">static</span> <span class="kw4">void</span> Main<span class="br0">(</span><span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point one <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// Вызов конструктора нулевых координат</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point two <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// Вызов конструктора произвольных координат</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point three <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// Вызов конструктора задания скаляра</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point foor <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// Вызов конструктора бинарного оператора " * "</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point five <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// Вызов конструктора бинарного оператора " * "</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; one<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="br0">[</span><span class="nu0">0</span><span class="br0">]</span> <span class="sy0">=</span> <span class="nu0">5</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="br0">[</span><span class="nu0">1</span><span class="br0">]</span> <span class="sy0">=</span> <span class="nu0">5</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; three<span class="br0">[</span><span class="nu0">2</span><span class="br0">]</span> <span class="sy0">=</span> <span class="nu0">1</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; three<span class="sy0">.</span><span class="me1">Skalar</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw4">double</span> res <span class="sy0">=</span> one<span class="sy0">.</span><span class="me1">Distance</span><span class="br0">(</span>two<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; foor <span class="sy0">=</span> one <span class="sy0">*</span> three<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; five <span class="sy0">=</span> two <span class="sy0">*</span> three<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Вывод результата расчета растояния между точками</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Растояние между точками: {res}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">//Вывод результата расчета координат на скаляр</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Умножение первых координат на скаляр: {foor}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Умножение вторых координат на скаляр: {five}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">//выход из программы</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span><span class="st0">"Нажмите любую клавишу для выхода..."</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ReadKey<span class="br0">(</span><span class="kw1">true</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; <span class="br0">}</span>
<span class="br0">}</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div><div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="123784022" style="height: 505px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
</pre></td><td class="de1"><pre class="de1"><span class="kw1">using</span> <span class="kw1">static</span> <span class="kw5">System</span><span class="sy0">.</span><span class="me1">Console</span><span class="sy0">;</span>
<span class="kw1">using</span> <span class="kw1">static</span> <span class="kw5">System</span><span class="sy0">.</span><span class="me1">Math</span><span class="sy0">;</span>
&nbsp;
<span class="kw1">namespace</span> array
<span class="br0">{</span>
&nbsp; &nbsp; <span class="kw4">class</span> Point
&nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Закрытое поле х - инициализация координыты х </span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">private</span> <span class="kw4">double</span> x<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Закрытое поле у - инициализация координыты у </span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">private</span> <span class="kw4">double</span> y<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Закрытое поле scalar - инициализируя скаляр</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">private</span> <span class="kw4">double</span> scalar<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Конструктор 1 - задающий нулевые координаты</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> Point<span class="br0">(</span><span class="br0">)</span> <span class="sy0">:</span> <span class="kw1">this</span><span class="br0">(</span><span class="nu0">0</span>, <span class="nu0">0</span><span class="br0">)</span> <span class="br0">{</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Конструктор 2 - инициализирующий закрытые поля х и у</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> Point<span class="br0">(</span><span class="kw4">double</span> x, <span class="kw4">double</span> y<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">this</span><span class="sy0">.</span><span class="me1">x</span> <span class="sy0">=</span> x<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">this</span><span class="sy0">.</span><span class="me1">y</span> <span class="sy0">=</span> y<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Конструктор 3 - инициализирующий закрытое поле scalar</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> Point<span class="br0">(</span><span class="kw4">double</span> scalar<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">this</span><span class="sy0">.</span><span class="me1">scalar</span> <span class="sy0">=</span> scalar<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Метод Show выводит координаты точек на экран</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">void</span> Show<span class="br0">(</span><span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Координаты точки: х = {x}, у = {y}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Метод Distancе расчитывает растояние между точками</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> Distance<span class="br0">(</span>Point p<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> Sqrt<span class="br0">(</span>Pow<span class="br0">(</span>p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">-</span> x, <span class="nu0">2</span><span class="br0">)</span> <span class="sy0">+</span> Pow<span class="br0">(</span>p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">-</span> y, <span class="nu0">2</span><span class="br0">)</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Метод Skalar выводит скалрное значение</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">void</span> Skalar<span class="br0">(</span><span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Скалярное значение: {scalar}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Свойство позволяющее получить-установить координаты точки х</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">private</span> <span class="kw4">double</span> X
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">get</span> <span class="br0">{</span> <span class="kw1">return</span> <span class="kw1">this</span><span class="sy0">.</span><span class="me1">x</span><span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">set</span> <span class="br0">{</span> <span class="kw1">if</span> <span class="br0">(</span><span class="kw1">this</span><span class="sy0">.</span><span class="me1">x</span> <span class="sy0">!=</span> <span class="kw1">value</span><span class="br0">)</span> <span class="kw1">this</span><span class="sy0">.</span><span class="me1">x</span> <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Свойство позволяющее получить-установить координаты точки у</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">private</span> <span class="kw4">double</span> Y
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">get</span> <span class="br0">{</span> <span class="kw1">return</span> <span class="kw1">this</span><span class="sy0">.</span><span class="me1">y</span><span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">set</span> <span class="br0">{</span> <span class="kw1">if</span> <span class="br0">(</span><span class="kw1">this</span><span class="sy0">.</span><span class="me1">y</span> <span class="sy0">!=</span> <span class="kw1">value</span><span class="br0">)</span> <span class="kw1">this</span><span class="sy0">.</span><span class="me1">y</span> <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Свойство позволяюшее получить-установить скаляр</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> Scalar
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">get</span> <span class="br0">{</span> <span class="kw1">return</span> <span class="kw1">this</span><span class="sy0">.</span><span class="me1">scalar</span><span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">set</span> <span class="br0">{</span> <span class="kw1">if</span> <span class="br0">(</span><span class="kw1">this</span><span class="sy0">.</span><span class="me1">scalar</span> <span class="sy0">!=</span> <span class="kw1">value</span><span class="br0">)</span> <span class="kw1">this</span><span class="sy0">.</span><span class="me1">scalar</span> <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Индексатор для обращения свойствам</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> <span class="kw1">this</span><span class="br0">[</span><span class="kw4">int</span> i<span class="br0">]</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">get</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">0</span><span class="br0">)</span> <span class="kw1">return</span> X<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span> <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">1</span><span class="br0">)</span> <span class="kw1">return</span> Y<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span> <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">2</span><span class="br0">)</span> <span class="kw1">return</span> Scalar<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span><span class="st0">"Недопустимый индекс"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="nu0">0</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">set</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">0</span><span class="br0">)</span> X <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span> <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">1</span><span class="br0">)</span> Y <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span> <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">2</span><span class="br0">)</span> Scalar <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span> WriteLine<span class="br0">(</span><span class="st0">"Недопустимый индекс"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк бинарног оператор " * "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">*</span> <span class="br0">(</span>Point p1, Point p2<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point result <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; result<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">=</span> p1<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">*</span> p2<span class="sy0">.</span><span class="me1">scalar</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; result<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">=</span> p1<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">*</span> p2<span class="sy0">.</span><span class="me1">scalar</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> result<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк бинарног оператор " + "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">+</span> <span class="br0">(</span>Point m<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point xx <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span>m<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> xx <span class="sy0">=+</span> <span class="nu0">1</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк бинарног оператор " - "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">-</span> <span class="br0">(</span>Point m<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point xx <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span>m<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> xx <span class="sy0">=-</span><span class="nu0">1</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк унарного оператор " ++ "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">++</span> <span class="br0">(</span>Point o<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point xx <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span>o<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> xx<span class="sy0">++;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк унарного оператор " ++ "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">--</span> <span class="br0">(</span>Point y<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point yy <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span>y<span class="br0">)</span><span class="sy0">;</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> yy<span class="sy0">--;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; <span class="br0">}</span>
<span class="br0">}</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9414480"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9414480">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9414480, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9414480" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9414480" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9414480" id="qr_9414480" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>
<div id="krba_posts_1787565" class="tborder alt1 smallfont" style="margin-top: 3px;"><div class="alt2" style="border-bottom: 1px solid #AAAAAA; padding: 3px 5px 3px 5px; font-weight:bold;"> Лучшие ответы (<span id="krba_answcount_1787565">3</span>)</div><div style="margin: 5px;" class="smallfont"><span id="krba_removepost_9414802" style="padding: 5px; white-space: nowrap; font-weight: bold;"><a style="text-decoration: none;" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9414802">Сообщение: #9414802</a> </span> <span id="krba_removepost_9418180" style="padding: 5px; white-space: nowrap; font-weight: bold;"><a style="text-decoration: none;" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418180">Сообщение: #9418180</a> </span> <span id="krba_removepost_9424192" style="padding: 5px; white-space: nowrap; font-weight: bold;"><a style="text-decoration: none;" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9424192">Сообщение: #9424192</a> </span> </div></div>
<div class="vbmenu_popup" id="postmenu_9414480_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9414802" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9414802" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Storm23&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_529033" style="display:none;">@</span>Storm23</a>
                        
                    
                    
                        <span id="postmenu_9414802" style="cursor: pointer;"><script> vbmenu_register("postmenu_9414802", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			<div class="smallfont" style="margin-top: 3px"><img src="./Создать класс Point - C# .NET 4_files/dotnet.png" alt="Эксперт .NET" border="" style="margin-right: 5px" title="Эксперт .NET"><img src="./Создать класс Point - C# .NET 4_files/faq.png" alt="Автор FAQ" border="" style="margin-right: 5px" title="Автор FAQ"></div>
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/529033.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar529033_1.gif" width="80" height="79" alt="Аватар для Storm23" border="0" title="Аватар для Storm23"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/529033.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9414802_529033" title="Репутация пользователя" style="font-weight: bold">10416</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/529033.html#stats" style="text-decoration: none;"><span title="Общая оценка (+5155, -0)">5146</span></a> / <span title="Лучшие ответы" style="font-weight: bold">1825</span></div>
				<div>Регистрация: 11.01.2015</div>
				
				
				<div>Сообщений: 6,226</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/529033/">34</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				30.07.2016, 14:29
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9414802">В закладки</a>]
	


	<span id="kr_floatqr_9414802">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9414802.html" target="_blank" id="postcount9414802" name="2"><b>2</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9414802" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9414802" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Storm23&#39;; krobj.postid = &#39;9414802&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Storm23&#39;; krobj.postid = &#39;9414802&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9414802" style="margin: 2px 2px 2px 5px;">



			

			

<div>
	
	<div style="bbcode_maincontainer">
		<div class="bbcode_container">
		  <div class="bbcode_quote">
		    <div class="btbtbt">
					<div class="quote_container">
		      	<div class="bbcode_quote_container"></div>
		       	<div class="bbcode_postedby">
		         	
					<img loading="lazy" decoding="async" title="Цитата" src="./Создать класс Point - C# .NET 4_files/quote_icon.png" alt="Цитата">
					Сообщение от <strong>Ярослав92</strong>
					<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9414480"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/viewpost-right.png" border="0" alt="Посмотреть сообщение" title="Посмотреть сообщение"></a>
		         	
		        </div>
		        <div class="message">почему программа не работает так как нужно</div>
		      </div>
				</div> 
			</div>
		</div>
	</div>
</div>

1) Уберите поле <code class="inlinecode">private double scalar;</code> не позоритесь <img src="./Создать класс Point - C# .NET 4_files/smile3.gif" border="0" alt="" title=":)" class="inlineimg"><br>
2) Операторы сделаны совершенно неправильно. Вообще непонятно что они делают.<br>
Нужно типа такого:<br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="646255936" style="height: 233px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
5
6
7
8
9
10
11
12
13
</pre></td><td class="de1"><pre class="de1">&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузка бинарного оператора " * "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">*</span> <span class="br0">(</span>Point p1, <span class="kw4">double</span> scalar<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="kw3">new</span> Point<span class="br0">(</span>p1<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">*</span> scalar, p1<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">*</span> scalar<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузка унарного оператора " ++ "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">++</span> <span class="br0">(</span>Point m<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="kw3">new</span> Point<span class="br0">(</span>m<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">+</span> <span class="nu0">1</span>, m<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">+</span> <span class="nu0">1</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp;
<span class="co1">//и т.д. ...</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>3) Нельзя сравнивать на равенство типы с плавающей точкой:<br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="656601090" style="height: 41px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
</pre></td><td class="de1"><pre class="de1"><span class="kw1">if</span> <span class="br0">(</span><span class="kw1">this</span><span class="sy0">.</span><span class="me1">x</span> <span class="sy0">!=</span> <span class="kw1">value</span><span class="br0">)</span> <span class="kw1">this</span><span class="sy0">.</span><span class="me1">x</span> <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>Уберите этот if вообще, он там не нужен.



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Storm23 вне форума" border="0" title="Storm23 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9414802"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9414802">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9414802, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9414802" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9414802" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9414802" id="qr_9414802" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9414802_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Storm23&#39;,529033);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_529033" style="display:none;">@</span>Storm23</a></td>
                  
	</tr>
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/529033.html#myawards"><img src="./Создать класс Point - C# .NET 4_files/MasterCS.gif" alt="Мастер Computer Science" title="Мастер Computer Science" width="16" style="margin-right: 3px"><img src="./Создать класс Point - C# .NET 4_files/First.gif" alt="Победа в конкурсе. 1 место" title="Победа в конкурсе. 1 место" width="16" style="margin-right: 3px"><img src="./Создать класс Point - C# .NET 4_files/Veteran.gif" alt="Ветеран форума" title="Ветеран форума" width="16" style="margin-right: 3px"><img src="./Создать класс Point - C# .NET 4_files/ExpertCS.png" alt="Эксперт Computer Science" title="Эксперт Computer Science" width="16" style="margin-right: 3px"></a></td></tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/529033.html">Посмотреть профиль</a></td></tr>
	
	
	
	
		<tr><td class="vbmenu_option"><a href="http://google.com/">Посетить домашнюю страницу Storm23</a></td></tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=529033">Найти ещё сообщения от Storm23</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Storm23">Найти темы от Storm23</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=529033">Добавить Storm23 в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/529033/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9415381" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9415381" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9415381" style="cursor: pointer;"><script> vbmenu_register("postmenu_9415381", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9415381_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				30.07.2016, 18:48
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9415381">В закладки</a>]
	


	<span id="kr_floatqr_9415381">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9415381.html" target="_blank" id="postcount9415381" name="3"><b>3</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9415381" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9415381" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9415381&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9415381&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9415381" style="margin: 2px 2px 2px 5px;">



			

			А что по советуете вместо поля: <br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="392932025" style="height: 41px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
</pre></td><td class="de1"><pre class="de1"><span class="kw1">private</span> <span class="kw4">double</span> scalar<span class="sy0">;</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>сделать?)



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9415381"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9415381">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9415381, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9415381" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9415381" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9415381" id="qr_9415381" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9415381_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9416147" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9416147" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Storm23&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_529033" style="display:none;">@</span>Storm23</a>
                        
                    
                    
                        <span id="postmenu_9416147" style="cursor: pointer;"><script> vbmenu_register("postmenu_9416147", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			<div class="smallfont" style="margin-top: 3px"><img src="./Создать класс Point - C# .NET 4_files/dotnet.png" alt="Эксперт .NET" border="" style="margin-right: 5px" title="Эксперт .NET"><img src="./Создать класс Point - C# .NET 4_files/faq.png" alt="Автор FAQ" border="" style="margin-right: 5px" title="Автор FAQ"></div>
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/529033.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar529033_1.gif" width="80" height="79" alt="Аватар для Storm23" border="0" title="Аватар для Storm23"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/529033.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9416147_529033" title="Репутация пользователя" style="font-weight: bold">10416</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/529033.html#stats" style="text-decoration: none;"><span title="Общая оценка (+5155, -0)">5146</span></a> / <span title="Лучшие ответы" style="font-weight: bold">1825</span></div>
				<div>Регистрация: 11.01.2015</div>
				
				
				<div>Сообщений: 6,226</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/529033/">34</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				31.07.2016, 00:56
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9416147">В закладки</a>]
	


	<span id="kr_floatqr_9416147">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9416147.html" target="_blank" id="postcount9416147" name="4"><b>4</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9416147" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9416147" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Storm23&#39;; krobj.postid = &#39;9416147&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Storm23&#39;; krobj.postid = &#39;9416147&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9416147" style="margin: 2px 2px 2px 5px;">



			

			

<div>
	
	<div style="bbcode_maincontainer">
		<div class="bbcode_container">
		  <div class="bbcode_quote">
		    <div class="btbtbt">
					<div class="quote_container">
		      	<div class="bbcode_quote_container"></div>
		       	<div class="bbcode_postedby">
		         	
					<img loading="lazy" decoding="async" title="Цитата" src="./Создать класс Point - C# .NET 4_files/quote_icon.png" alt="Цитата">
					Сообщение от <strong>Ярослав92</strong>
					<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9415381"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/viewpost-right.png" border="0" alt="Посмотреть сообщение" title="Посмотреть сообщение"></a>
		         	
		        </div>
		        <div class="message">А что по советуете вместо поля: <br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="333939521" style="height: 41px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
</pre></td><td class="de1"><pre class="de1"><span class="kw1">private</span> <span class="kw4">double</span> scalar<span class="sy0">;</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>сделать?)</div>
		      </div>
				</div> 
			</div>
		</div>
	</div>
</div>

В точке должно быть только два поля: x и y. Откуда там скаляр? Зачем там скаляр?<br>
Когда у вас в задании написано, что нужно  "умножить координаты точки на скаляр" - это значит, что нужно умножить поля x и y на некое число типа double. Именно это и делает оператор * в моем примере выше.<br>
Хранить скаляр нигде не нужно. Соответственно и поле для него - тоже не нужно.



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Storm23 вне форума" border="0" title="Storm23 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9416147"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9416147">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9416147, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9416147" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9416147" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9416147" id="qr_9416147" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9416147_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Storm23&#39;,529033);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_529033" style="display:none;">@</span>Storm23</a></td>
                  
	</tr>
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/529033.html#myawards"><img src="./Создать класс Point - C# .NET 4_files/MasterCS.gif" alt="Мастер Computer Science" title="Мастер Computer Science" width="16" style="margin-right: 3px"><img src="./Создать класс Point - C# .NET 4_files/First.gif" alt="Победа в конкурсе. 1 место" title="Победа в конкурсе. 1 место" width="16" style="margin-right: 3px"><img src="./Создать класс Point - C# .NET 4_files/Veteran.gif" alt="Ветеран форума" title="Ветеран форума" width="16" style="margin-right: 3px"><img src="./Создать класс Point - C# .NET 4_files/ExpertCS.png" alt="Эксперт Computer Science" title="Эксперт Computer Science" width="16" style="margin-right: 3px"></a></td></tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/529033.html">Посмотреть профиль</a></td></tr>
	
	
	
	
		<tr><td class="vbmenu_option"><a href="http://google.com/">Посетить домашнюю страницу Storm23</a></td></tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=529033">Найти ещё сообщения от Storm23</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Storm23">Найти темы от Storm23</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=529033">Добавить Storm23 в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/529033/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9418058" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9418058" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9418058" style="cursor: pointer;"><script> vbmenu_register("postmenu_9418058", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9418058_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				31.07.2016, 21:46
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9418058">В закладки</a>]
	


	<span id="kr_floatqr_9418058">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9418058.html" target="_blank" id="postcount9418058" name="5"><b>5</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418058" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9418058" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9418058&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9418058&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9418058" style="margin: 2px 2px 2px 5px;">



			

			Так если поле это убрать будет ошибка компиляции! <br>
Это значение откуда то нужно брать, а у меня оно считывается с поля scalar!<br>
Не могу понять почему это не правильно!<br>
<br>
<font size="1"><font color="grey"><i>Добавлено через 24 минуты</i></font></font><br>
Это же правильный вызов оператора умножения:<br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="817402883" style="height: 41px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
</pre></td><td class="de1"><pre class="de1">Point foor <span class="sy0">=</span> two <span class="sy0">*</span> three<span class="br0">[</span><span class="nu0">2</span><span class="br0">]</span><span class="sy0">;</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>



		</div>


		
		
		
		






		
		
			<div class="smallfont" style="margin-top: 20px;">
				<em>
					
						Последний раз редактировалось Ярослав92; 31.07.2016 в <span class="time">21:26</span>.
					
					
				</em>
			</div>
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9418058"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9418058">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9418058, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418058" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9418058" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418058" id="qr_9418058" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9418058_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9418145" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9418145" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Tsin&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_339308" style="display:none;">@</span>Tsin</a>
                        
                    
                    
                        <span id="postmenu_9418145" style="cursor: pointer;"><script> vbmenu_register("postmenu_9418145", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/339308.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar339308_4.gif" width="80" height="80" alt="Аватар для Tsin" border="0" title="Аватар для Tsin"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/339308.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9418145_339308" title="Репутация пользователя" style="font-weight: bold">746</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/339308.html#stats" style="text-decoration: none;"><span title="Общая оценка (+487, -0)">487</span></a> / <span title="Лучшие ответы" style="font-weight: bold">187</span></div>
				<div>Регистрация: 30.12.2012</div>
				
				
				<div>Сообщений: 1,278</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/339308/">2</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				31.07.2016, 21:54
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9418145">В закладки</a>]
	


	<span id="kr_floatqr_9418145">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9418145.html" target="_blank" id="postcount9418145" name="6"><b>6</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418145" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9418145" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9418145&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9418145&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9418145" style="margin: 2px 2px 2px 5px;">



			

			

<div>
	
	<div style="bbcode_maincontainer">
		<div class="bbcode_container">
		  <div class="bbcode_quote">
		    <div class="btbtbt">
					<div class="quote_container">
		      	<div class="bbcode_quote_container"></div>
		       	<div class="bbcode_postedby">
		         	
					<img loading="lazy" decoding="async" title="Цитата" src="./Создать класс Point - C# .NET 4_files/quote_icon.png" alt="Цитата">
					Сообщение от <strong>Ярослав92</strong>
					<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418058"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/viewpost-right.png" border="0" alt="Посмотреть сообщение" title="Посмотреть сообщение"></a>
		         	
		        </div>
		        <div class="message">Не могу понять почему это не правильно</div>
		      </div>
				</div> 
			</div>
		</div>
	</div>
</div>

Ну вот представьте себе сущность "точка" из геометрии. Чем определяется такая точка? Координатами (x, y). Больше никаких параметров у точки нет.<br>
<br>
Ошибка компиляции будет, если просто вычеркнуть это свойство, а остальной код оставить без изменений.<br>
<br>
Внимательно перечитайте свое задание по пунктам, по словам. У вас довольно четко всё расписано что и как именно должно быть реализовано. А в коде есть вещи, которых по заданию быть не должно. Например, свойство "скаляр" должно быть только для записи, а у вас и для чтения также присутствует.



		</div>


		
		
		
		






		
		
			<div class="smallfont" style="margin-top: 20px;">
				<em>
					
						Последний раз редактировалось Tsin; 31.07.2016 в <span class="time">21:58</span>.
					
					
				</em>
			</div>
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Tsin вне форума" border="0" title="Tsin вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9418145"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9418145">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9418145, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418145" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9418145" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418145" id="qr_9418145" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9418145_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Tsin&#39;,339308);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_339308" style="display:none;">@</span>Tsin</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/339308.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=339308">Найти ещё сообщения от Tsin</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Tsin">Найти темы от Tsin</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=339308">Добавить Tsin в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/339308/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9418168" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9418168" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9418168" style="cursor: pointer;"><script> vbmenu_register("postmenu_9418168", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9418168_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				31.07.2016, 22:00
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9418168">В закладки</a>]
	


	<span id="kr_floatqr_9418168">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9418168.html" target="_blank" id="postcount9418168" name="7"><b>7</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418168" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9418168" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9418168&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9418168&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9418168" style="margin: 2px 2px 2px 5px;">



			

			Это понятно, только не понятно откуда по другому можно взять значение скаляра!



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9418168"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9418168">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9418168, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418168" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9418168" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418168" id="qr_9418168" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9418168_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9418180" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9418180" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Tsin&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_339308" style="display:none;">@</span>Tsin</a>
                        
                    
                    
                        <span id="postmenu_9418180" style="cursor: pointer;"><script> vbmenu_register("postmenu_9418180", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/339308.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar339308_4.gif" width="80" height="80" alt="Аватар для Tsin" border="0" title="Аватар для Tsin"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/339308.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9418180_339308" title="Репутация пользователя" style="font-weight: bold">746</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/339308.html#stats" style="text-decoration: none;"><span title="Общая оценка (+487, -0)">487</span></a> / <span title="Лучшие ответы" style="font-weight: bold">187</span></div>
				<div>Регистрация: 30.12.2012</div>
				
				
				<div>Сообщений: 1,278</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/339308/">2</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				31.07.2016, 22:06
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9418180">В закладки</a>]
	


	<span id="kr_floatqr_9418180">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9418180.html" target="_blank" id="postcount9418180" name="8"><b>8</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418180" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9418180" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9418180&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9418180&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9418180" style="margin: 2px 2px 2px 5px;">



			

			<b>Ярослав92</b>, <br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="350581307" style="height: 313px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
</pre></td><td class="de1"><pre class="de1"><span class="kw4">class</span> Point
<span class="br0">{</span>
&nbsp; &nbsp; <span class="kw1">private</span> <span class="kw4">double</span> _x<span class="sy0">;</span>
&nbsp; &nbsp; <span class="kw1">private</span> <span class="kw4">double</span> _y<span class="sy0">;</span>
&nbsp;
&nbsp; &nbsp; <span class="kw1">public</span> Point<span class="br0">(</span><span class="kw4">double</span> x, <span class="kw4">double</span> y<span class="br0">)</span>
&nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; _x <span class="sy0">=</span> x<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; _y <span class="sy0">=</span> y<span class="sy0">;</span>
&nbsp; &nbsp; <span class="br0">}</span>
&nbsp;
&nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> MultiplyScalar <span class="br0">{</span> <span class="kw1">set</span> <span class="br0">{</span> _x <span class="sy0">*=</span> <span class="kw1">value</span><span class="sy0">;</span> _y <span class="sy0">*=</span> <span class="kw1">value</span><span class="sy0">;</span> <span class="br0">}</span> <span class="br0">}</span>
<span class="br0">}</span>
&nbsp;
<span class="sy0">.....</span>
&nbsp;
&nbsp; &nbsp; <span class="me1">Point</span> p <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="nu0">2</span>, <span class="nu0">5</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; p<span class="sy0">.</span><span class="me1">MultiplyScalar</span> <span class="sy0">=</span> <span class="nu0">3</span><span class="sy0">;</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Tsin вне форума" border="0" title="Tsin вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9418180"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9418180">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9418180, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418180" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9418180" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418180" id="qr_9418180" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9418180_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Tsin&#39;,339308);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_339308" style="display:none;">@</span>Tsin</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/339308.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=339308">Найти ещё сообщения от Tsin</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Tsin">Найти темы от Tsin</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=339308">Добавить Tsin в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/339308/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9418233" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9418233" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9418233" style="cursor: pointer;"><script> vbmenu_register("postmenu_9418233", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9418233_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				31.07.2016, 22:30
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9418233">В закладки</a>]
	


	<span id="kr_floatqr_9418233">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9418233.html" target="_blank" id="postcount9418233" name="9"><b>9</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418233" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9418233" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9418233&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9418233&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9418233" style="margin: 2px 2px 2px 5px;">



			

			Теперь индексатор ругается, потому что с него не может ничего с читываться



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9418233"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9418233">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9418233, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418233" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9418233" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418233" id="qr_9418233" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9418233_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9418649" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9418649" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Tsin&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_339308" style="display:none;">@</span>Tsin</a>
                        
                    
                    
                        <span id="postmenu_9418649" style="cursor: pointer;"><script> vbmenu_register("postmenu_9418649", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/339308.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar339308_4.gif" width="80" height="80" alt="Аватар для Tsin" border="0" title="Аватар для Tsin"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/339308.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9418649_339308" title="Репутация пользователя" style="font-weight: bold">746</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/339308.html#stats" style="text-decoration: none;"><span title="Общая оценка (+487, -0)">487</span></a> / <span title="Лучшие ответы" style="font-weight: bold">187</span></div>
				<div>Регистрация: 30.12.2012</div>
				
				
				<div>Сообщений: 1,278</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/339308/">2</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				01.08.2016, 06:32
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9418649">В закладки</a>]
	


	<span id="kr_floatqr_9418649">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9418649.html" target="_blank" id="postcount9418649" name="10"><b>10</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418649" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9418649" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9418649&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9418649&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9418649" style="margin: 2px 2px 2px 5px;">



			

			

<div>
	
	<div style="bbcode_maincontainer">
		<div class="bbcode_container">
		  <div class="bbcode_quote">
		    <div class="btbtbt">
					<div class="quote_container">
		      	<div class="bbcode_quote_container"></div>
		       	<div class="bbcode_postedby">
		         	
					<img loading="lazy" decoding="async" title="Цитата" src="./Создать класс Point - C# .NET 4_files/quote_icon.png" alt="Цитата">
					Сообщение от <strong>Ярослав92</strong>
					<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9418233"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/viewpost-right.png" border="0" alt="Посмотреть сообщение" title="Посмотреть сообщение"></a>
		         	
		        </div>
		        <div class="message">индексатор ругается</div>
		      </div>
				</div> 
			</div>
		</div>
	</div>
</div>

Благим матом орёт на вас? <img src="./Создать класс Point - C# .NET 4_files/smile3.gif" border="0" alt="" title=":)" class="inlineimg"><br>
<br>
Простите мне моё занудство, но он у вас реализован также не по тексту задания, а как-то произвольно, по вашим хотелкам. Что значит не может считываться? Какая-то ошибка происходит?



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Tsin вне форума" border="0" title="Tsin вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9418649"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9418649">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9418649, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418649" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9418649" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9418649" id="qr_9418649" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9418649_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Tsin&#39;,339308);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_339308" style="display:none;">@</span>Tsin</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/339308.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=339308">Найти ещё сообщения от Tsin</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Tsin">Найти темы от Tsin</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=339308">Добавить Tsin в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/339308/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9420818" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9420818" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9420818" style="cursor: pointer;"><script> vbmenu_register("postmenu_9420818", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9420818_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				01.08.2016, 20:39
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9420818">В закладки</a>]
	


	<span id="kr_floatqr_9420818">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9420818.html" target="_blank" id="postcount9420818" name="11"><b>11</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9420818" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9420818" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9420818&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9420818&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9420818" style="margin: 2px 2px 2px 5px;">



			

			Я конечно крепко наверное туплю, но хочу просто разобраться!<br>
но если убрать поле: <div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="749789115" style="height: 41px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
</pre></td><td class="de1"><pre class="de1"><span class="kw1">private</span> <span class="kw4">double</span> scalar<span class="sy0">;</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>то выскакивает ошибка и не понятно как по другому установить значение!



		</div>


		
			<div style="padding:5px">
			
				<fieldset class="fieldset">
					<legend>Миниатюры</legend>
					<div style="padding:3px">
						
<a href="https://www.cyberforum.ru/attachments/722403d1470073149" rel="Lightbox_9420818" id="attachment722403"><img loading="lazy" decoding="async" class="thumbnail" src="./Создать класс Point - C# .NET 4_files/1.jpg" border="0" alt="Создать класс Point" title="Создать класс Point"></a>
&nbsp;

					</div>
				</fieldset>
			
			
			
			
			
			</div>
		
		
		
		






		
		
			<div class="smallfont" style="margin-top: 20px;">
				<em>
					
						Последний раз редактировалось Ярослав92; 01.08.2016 в <span class="time">20:42</span>.
					
					
				</em>
			</div>
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9420818"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9420818">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9420818, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9420818" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9420818" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9420818" id="qr_9420818" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9420818_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9420882" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9420882" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Tsin&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_339308" style="display:none;">@</span>Tsin</a>
                        
                    
                    
                        <span id="postmenu_9420882" style="cursor: pointer;"><script> vbmenu_register("postmenu_9420882", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/339308.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar339308_4.gif" width="80" height="80" alt="Аватар для Tsin" border="0" title="Аватар для Tsin"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/339308.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9420882_339308" title="Репутация пользователя" style="font-weight: bold">746</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/339308.html#stats" style="text-decoration: none;"><span title="Общая оценка (+487, -0)">487</span></a> / <span title="Лучшие ответы" style="font-weight: bold">187</span></div>
				<div>Регистрация: 30.12.2012</div>
				
				
				<div>Сообщений: 1,278</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/339308/">2</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				01.08.2016, 21:07
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9420882">В закладки</a>]
	


	<span id="kr_floatqr_9420882">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9420882.html" target="_blank" id="postcount9420882" name="12"><b>12</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9420882" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9420882" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9420882&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9420882&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9420882" style="margin: 2px 2px 2px 5px;">



			

			<b>Ярослав92</b>, крепко-крепко)<br>
Вы убрали scalar из класса. Поэтому во всех местах, где использовался скаляр, всё поломалось. Ошибки довольно очевидно вам об этом сообщают.<br>
<br>
Давайте заново и по порядку. У вас есть 2 основных поля <i>x</i> и <i>y</i> и НЕТ поля <i>scalar</i>. Над каким методом/свойством вы сейчас трудитесь и что не получается?



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Tsin вне форума" border="0" title="Tsin вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9420882"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9420882">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9420882, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9420882" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9420882" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9420882" id="qr_9420882" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9420882_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Tsin&#39;,339308);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_339308" style="display:none;">@</span>Tsin</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/339308.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=339308">Найти ещё сообщения от Tsin</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Tsin">Найти темы от Tsin</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=339308">Добавить Tsin в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/339308/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9420986" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9420986" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9420986" style="cursor: pointer;"><script> vbmenu_register("postmenu_9420986", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9420986_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				01.08.2016, 21:44
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9420986">В закладки</a>]
	


	<span id="kr_floatqr_9420986">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9420986.html" target="_blank" id="postcount9420986" name="13"><b>13</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9420986" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9420986" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9420986&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9420986&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9420986" style="margin: 2px 2px 2px 5px;">



			

			ну вот например:<br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="4281924" style="height: 89px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
</pre></td><td class="de1"><pre class="de1"><span class="kw1">public</span> <span class="kw4">void</span> Skalar<span class="br0">(</span><span class="br0">)</span>
<span class="br0">{</span>
&nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Скалярное значение: {scalar}"</span><span class="br0">)</span><span class="sy0">;</span>
<span class="br0">}</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>вот здесь ошибка!



		</div>


		
		
		
		






		
		
			<div class="smallfont" style="margin-top: 20px;">
				<em>
					
						Последний раз редактировалось Ярослав92; 01.08.2016 в <span class="time">21:47</span>.
					
					
				</em>
			</div>
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9420986"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9420986">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9420986, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9420986" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9420986" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9420986" id="qr_9420986" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9420986_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9421003" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9421003" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9421003" style="cursor: pointer;"><script> vbmenu_register("postmenu_9421003", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9421003_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				01.08.2016, 21:48
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9421003">В закладки</a>]
	


	<span id="kr_floatqr_9421003">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9421003.html" target="_blank" id="postcount9421003" name="14"><b>14</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9421003" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9421003" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9421003&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9421003&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9421003" style="margin: 2px 2px 2px 5px;">



			

			Вот такая ошибка, как ее обойти не пойму!)



		</div>


		
			<div style="padding:5px">
			
				<fieldset class="fieldset">
					<legend>Миниатюры</legend>
					<div style="padding:3px">
						
<a href="https://www.cyberforum.ru/attachments/722419d1470077268" rel="Lightbox_9421003" id="attachment722419"><img loading="lazy" decoding="async" class="thumbnail" src="./Создать класс Point - C# .NET 4_files/1(1).jpg" border="0" alt="Создать класс Point" title="Создать класс Point"></a>
&nbsp;

					</div>
				</fieldset>
			
			
			
			
			
			</div>
		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9421003"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9421003">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9421003, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9421003" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9421003" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9421003" id="qr_9421003" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9421003_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9421037" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9421037" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Tsin&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_339308" style="display:none;">@</span>Tsin</a>
                        
                    
                    
                        <span id="postmenu_9421037" style="cursor: pointer;"><script> vbmenu_register("postmenu_9421037", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/339308.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar339308_4.gif" width="80" height="80" alt="Аватар для Tsin" border="0" title="Аватар для Tsin"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/339308.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9421037_339308" title="Репутация пользователя" style="font-weight: bold">746</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/339308.html#stats" style="text-decoration: none;"><span title="Общая оценка (+487, -0)">487</span></a> / <span title="Лучшие ответы" style="font-weight: bold">187</span></div>
				<div>Регистрация: 30.12.2012</div>
				
				
				<div>Сообщений: 1,278</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/339308/">2</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				01.08.2016, 21:58
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9421037">В закладки</a>]
	


	<span id="kr_floatqr_9421037">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9421037.html" target="_blank" id="postcount9421037" name="15"><b>15</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9421037" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9421037" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9421037&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9421037&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9421037" style="margin: 2px 2px 2px 5px;">



			

			<b>Ярослав92</b>, так где же это в задании-то написано сделать такой метод?<br>
У вас больше нет scalar, это же русским по белому и написано в тексте ошибки.<br>
<br>
Я бы на вашем месте забыл и выкинул написанный код и начал заново, с нуля.<br>
Напишите для начала 1 и 2 пункт задания и выложите сюда.



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Tsin вне форума" border="0" title="Tsin вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9421037"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9421037">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9421037, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9421037" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9421037" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9421037" id="qr_9421037" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9421037_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Tsin&#39;,339308);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_339308" style="display:none;">@</span>Tsin</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/339308.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=339308">Найти ещё сообщения от Tsin</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Tsin">Найти темы от Tsin</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=339308">Добавить Tsin в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/339308/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9421111" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9421111" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9421111" style="cursor: pointer;"><script> vbmenu_register("postmenu_9421111", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9421111_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				01.08.2016, 22:22
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9421111">В закладки</a>]
	


	<span id="kr_floatqr_9421111">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9421111.html" target="_blank" id="postcount9421111" name="16"><b>16</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9421111" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9421111" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9421111&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9421111&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9421111" style="margin: 2px 2px 2px 5px;">



			

			ок, так и сделаю, то я что сам уже за гнался в тупик!



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9421111"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9421111">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9421111, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9421111" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9421111" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9421111" id="qr_9421111" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9421111_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9424170" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9424170" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9424170" style="cursor: pointer;"><script> vbmenu_register("postmenu_9424170", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9424170_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				02.08.2016, 22:48
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9424170">В закладки</a>]
	


	<span id="kr_floatqr_9424170">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9424170.html" target="_blank" id="postcount9424170" name="17"><b>17</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9424170" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9424170" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9424170&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9424170&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9424170" style="margin: 2px 2px 2px 5px;">



			

			вроде сделал все так как прописано в задании, только не понятно почему не работает! <img src="./Создать класс Point - C# .NET 4_files/sad.gif" border="0" alt="" title=":(" class="inlineimg"><br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="723624744" style="height: 505px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
</pre></td><td class="de1"><pre class="de1"><span class="kw1">using</span> <span class="kw1">static</span> <span class="kw5">System</span><span class="sy0">.</span><span class="me1">Console</span><span class="sy0">;</span>
&nbsp;
<span class="kw1">namespace</span> array
<span class="br0">{</span>
&nbsp; &nbsp; <span class="kw4">class</span> Program
&nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">static</span> <span class="kw4">void</span> Main<span class="br0">(</span><span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point one <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// Вызов конструктора нулевых координат</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Point two <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="nu0">5</span>, <span class="nu0">5</span><span class="br0">)</span><span class="sy0">;</span> <span class="co1">// Вызов конструктора произвольных координат</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; one<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw4">double</span> res <span class="sy0">=</span> one<span class="sy0">.</span><span class="me1">Distance</span><span class="br0">(</span>two<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Растояние между точками: {res}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Scalar</span> <span class="sy0">=</span> <span class="nu0">5</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Transfer</span><span class="br0">(</span><span class="nu0">5</span>, <span class="nu0">5</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Перемещение точки на вектор (а, b): {two}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Умножение координат на скаляр: {0}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Изменение координат на +1 {++two}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Изменение координат на -1 {--two}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Проверка на равенсто х и у данной точки = {two.X == two.Y}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Добавление к полям х и у значение скаляра &nbsp;{two + 5}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; two<span class="sy0">.</span><span class="me1">Show</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">//выход из программы</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span><span class="st0">"Нажмите любую клавишу для выхода..."</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ReadKey<span class="br0">(</span><span class="kw1">true</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; <span class="br0">}</span>
<span class="br0">}</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div><div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="70754484" style="height: 505px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
</pre></td><td class="de1"><pre class="de1"><span class="kw1">using</span> <span class="kw1">static</span> <span class="kw5">System</span><span class="sy0">.</span><span class="me1">Console</span><span class="sy0">;</span>
<span class="kw1">using</span> <span class="kw1">static</span> <span class="kw5">System</span><span class="sy0">.</span><span class="me1">Math</span><span class="sy0">;</span>
&nbsp;
<span class="kw1">namespace</span> array
<span class="br0">{</span>
&nbsp; &nbsp; <span class="kw4">class</span> Point <span class="sy0">:</span> Geometry
&nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Закрытые поля х и у</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">private</span> <span class="kw4">double</span> x, y<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Конструктор 1 - задающий нулевые координаты</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> Point<span class="br0">(</span><span class="br0">)</span> <span class="sy0">:</span> <span class="kw1">this</span><span class="br0">(</span><span class="nu0">0</span>, <span class="nu0">0</span><span class="br0">)</span> <span class="br0">{</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Конструктор 2 - инициализирующий закрытые поля х и у</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> Point<span class="br0">(</span><span class="kw4">double</span> x, <span class="kw4">double</span> y<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">this</span><span class="sy0">.</span><span class="me1">x</span> <span class="sy0">=</span> x<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">this</span><span class="sy0">.</span><span class="me1">y</span> <span class="sy0">=</span> y<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Метод Show выводит координаты точек на экран</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw3">new</span> <span class="kw4">void</span> Show<span class="br0">(</span><span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span>$<span class="st0">"Координаты точки: х = {x}, у = {y}"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Метод Distancе расчитывает растояние между точками</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> Distance<span class="br0">(</span>Point p<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> Sqrt<span class="br0">(</span>Pow<span class="br0">(</span>p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">-</span> x, <span class="nu0">2</span><span class="br0">)</span> <span class="sy0">+</span> Pow<span class="br0">(</span>p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">-</span> y, <span class="nu0">2</span><span class="br0">)</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Метод Transfer перемещения точки на вектор (а,b)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">void</span> Transfer<span class="br0">(</span><span class="kw4">double</span> a, <span class="kw4">double</span> b<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; x <span class="sy0">=+</span> a<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; y <span class="sy0">=+</span> b<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Свойство позволяющее получить-установить координаты точки х</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> X
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">get</span> <span class="br0">{</span> <span class="kw1">return</span> x<span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">set</span> <span class="br0">{</span> x <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Свойство позволяющее получить-установить координаты точки у</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> Y
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">get</span> <span class="br0">{</span> <span class="kw1">return</span> y<span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">set</span> <span class="br0">{</span> y <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Свойство позволяюшее умножить координаты на скаляр</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> Scalar
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">set</span> <span class="br0">{</span> x <span class="sy0">*=</span> scalar<span class="sy0">;</span> y <span class="sy0">*=</span> scalar<span class="sy0">;</span> <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Индексатор для обращения свойствам</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw4">double</span> <span class="kw1">this</span><span class="br0">[</span><span class="kw4">int</span> i<span class="br0">]</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">get</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">0</span><span class="br0">)</span> <span class="kw1">return</span> X<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span> <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">1</span><span class="br0">)</span> <span class="kw1">return</span> Y<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span><span class="st0">"Недопустимый индекс"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="nu0">0</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">set</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">0</span><span class="br0">)</span> X <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span> <span class="kw1">if</span> <span class="br0">(</span>i <span class="sy0">==</span> <span class="nu0">1</span><span class="br0">)</span> Y <span class="sy0">=</span> <span class="kw1">value</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">else</span> WriteLine<span class="br0">(</span><span class="st0">"Недопустимый индекс"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк бинарног оператор " * "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">*</span> <span class="br0">(</span>Point p, <span class="kw4">double</span> scalar<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="kw3">new</span> Point<span class="br0">(</span>p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">*</span> scalar, p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">*</span> scalar<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк бинарног оператор " + "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">+</span> <span class="br0">(</span>Point p, <span class="kw4">double</span> scalar<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="kw3">new</span> Point<span class="br0">(</span>p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">+</span> scalar, p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">+</span> scalar<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк бинарног оператор " - "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">-</span> <span class="br0">(</span>Point p, <span class="kw4">double</span> scalar<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="kw3">new</span> Point<span class="br0">(</span>p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">-</span> scalar, p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">-</span> scalar<span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк унарного оператор " ++ "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">++</span> <span class="br0">(</span>Point p<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="kw3">new</span> Point<span class="br0">(</span>p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">+</span> <span class="nu0">1</span>, p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">-</span> <span class="nu0">1</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Перегрузк унарного оператор " -- "</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> Point <span class="kw1">operator</span> <span class="sy0">--</span> <span class="br0">(</span>Point p<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">try</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">=</span> p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">-</span> <span class="nu0">1</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">=</span> p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">-</span> <span class="nu0">1</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">if</span> <span class="br0">(</span>p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">&lt;</span> <span class="nu0">0</span> <span class="sy0">|</span> p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">&lt;</span> <span class="nu0">0</span><span class="br0">)</span> <span class="kw1">throw</span> <span class="kw3">new</span> <span class="kw5">System</span><span class="sy0">.</span><span class="me1">ArithmeticException</span><span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">catch</span> <span class="br0">(</span><span class="kw5">System</span><span class="sy0">.</span><span class="me1">ArithmeticException</span><span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; WriteLine<span class="br0">(</span><span class="st0">"Уменьшение не возможно !"</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">=</span> p<span class="sy0">.</span><span class="me1">x</span> <span class="sy0">+</span> <span class="nu0">1</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">=</span> p<span class="sy0">.</span><span class="me1">y</span> <span class="sy0">+</span> <span class="nu0">1</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> p<span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Возращает значение true, если поле x = y, иначе false</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> <span class="kw4">bool</span> <span class="kw1">operator</span> <span class="sy0">==</span> <span class="br0">(</span>Point x, Point y<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="br0">(</span>x<span class="sy0">.</span><span class="me1">X</span> <span class="sy0">==</span> y<span class="sy0">.</span><span class="me1">X</span><span class="br0">)</span> <span class="sy0">&amp;&amp;</span> <span class="br0">(</span>x<span class="sy0">.</span><span class="me1">Y</span> <span class="sy0">==</span> y<span class="sy0">.</span><span class="me1">Y</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="co1">// Возращает значение true, если поле x != y, иначе false</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">public</span> <span class="kw1">static</span> <span class="kw4">bool</span> <span class="kw1">operator</span> <span class="sy0">!=</span><span class="br0">(</span>Point x, Point y<span class="br0">)</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">{</span>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="kw1">return</span> <span class="br0">(</span>x<span class="sy0">.</span><span class="me1">X</span> <span class="sy0">!=</span> y<span class="sy0">.</span><span class="me1">X</span><span class="br0">)</span> <span class="sy0">||</span> <span class="br0">(</span>x<span class="sy0">.</span><span class="me1">Y</span> <span class="sy0">!=</span> y<span class="sy0">.</span><span class="me1">Y</span><span class="br0">)</span><span class="sy0">;</span>
&nbsp; &nbsp; &nbsp; &nbsp; <span class="br0">}</span>
&nbsp; &nbsp; <span class="br0">}</span>
<span class="br0">}</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>помогите пожалуйста разобраться с ошибками!?<img src="./Создать класс Point - C# .NET 4_files/smile3.gif" border="0" alt="" title=":)" class="inlineimg"><br>
список ошибок:



		</div>


		
			<div style="padding:5px">
			
				<fieldset class="fieldset">
					<legend>Миниатюры</legend>
					<div style="padding:3px">
						
<a href="https://www.cyberforum.ru/attachments/722698d1470167296" rel="Lightbox_9424170" id="attachment722698"><img loading="lazy" decoding="async" class="thumbnail" src="./Создать класс Point - C# .NET 4_files/1(2).jpg" border="0" alt="Создать класс Point" title="Создать класс Point"></a>
&nbsp;

					</div>
				</fieldset>
			
			
			
			
			
			</div>
		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9424170"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9424170">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9424170, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9424170" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9424170" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9424170" id="qr_9424170" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9424170_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9424192" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9424192" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Tsin&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_339308" style="display:none;">@</span>Tsin</a>
                        
                    
                    
                        <span id="postmenu_9424192" style="cursor: pointer;"><script> vbmenu_register("postmenu_9424192", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/339308.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar339308_4.gif" width="80" height="80" alt="Аватар для Tsin" border="0" title="Аватар для Tsin"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/339308.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9424192_339308" title="Репутация пользователя" style="font-weight: bold">746</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/339308.html#stats" style="text-decoration: none;"><span title="Общая оценка (+487, -0)">487</span></a> / <span title="Лучшие ответы" style="font-weight: bold">187</span></div>
				<div>Регистрация: 30.12.2012</div>
				
				
				<div>Сообщений: 1,278</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/339308/">2</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				02.08.2016, 22:57
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9424192">В закладки</a>]
	


	<span id="kr_floatqr_9424192">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9424192.html" target="_blank" id="postcount9424192" name="18"><b>18</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9424192" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9424192" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9424192&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9424192&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9424192" style="margin: 2px 2px 2px 5px;">



			

			<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="501820980" style="height: 89px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
</pre></td><td class="de1"><pre class="de1"><span class="kw1">public</span> <span class="kw4">double</span> Scalar
<span class="br0">{</span>
&nbsp; &nbsp; <span class="kw1">set</span> <span class="br0">{</span> x <span class="sy0">*=</span> scalar<span class="sy0">;</span> y <span class="sy0">*=</span> scalar<span class="sy0">;</span> <span class="br0">}</span>
<span class="br0">}</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>Сами себе ответьте на вопрос: Что такое <i>scalar</i>? Откуда он берется??



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Tsin вне форума" border="0" title="Tsin вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9424192"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9424192">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9424192, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9424192" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9424192" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9424192" id="qr_9424192" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9424192_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Tsin&#39;,339308);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_339308" style="display:none;">@</span>Tsin</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/339308.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=339308">Найти ещё сообщения от Tsin</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Tsin">Найти темы от Tsin</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=339308">Добавить Tsin в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/339308/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9426135" style="padding:0px 0px 3px 0px">
	<!-- this is not the last post shown on the page -->



<table id="post9426135" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Ярослав92&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a>
                        
                    
                    
                        <span id="postmenu_9426135" style="cursor: pointer;"><script> vbmenu_register("postmenu_9426135", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/781891.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar781891_2.gif" width="58" height="80" alt="Аватар для Ярослав92" border="0" title="Аватар для Ярослав92"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/781891.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9426135_781891" title="Репутация пользователя" style="font-weight: bold">6</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/781891.html#stats" style="text-decoration: none;"><span title="Общая оценка (+6, -0)">6</span></a> / <span title="Лучшие ответы" style="font-weight: bold">5</span></div>
				<div>Регистрация: 07.03.2016</div>
				
				
				<div>Сообщений: 89</div>
				
				
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				03.08.2016, 17:45
				
				&nbsp;<b>[ТС]</b>
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9426135">В закладки</a>]
	


	<span id="kr_floatqr_9426135">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9426135.html" target="_blank" id="postcount9426135" name="19"><b>19</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9426135" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9426135" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9426135&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Ярослав92&#39;; krobj.postid = &#39;9426135&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9426135" style="margin: 2px 2px 2px 5px;">



			

			ну вот я тоже не могу понять, как его определить, миновав создание поля:<br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="653841636" style="height: 41px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
</pre></td><td class="de1"><pre class="de1"><span class="kw1">private</span> <span class="kw4">double</span> scalar<span class="sy0">;</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>можете объяснить?



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Ярослав92 вне форума" border="0" title="Ярослав92 вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9426135"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9426135">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 0">0</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9426135, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9426135" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9426135" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9426135" id="qr_9426135" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9426135_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Ярослав92&#39;,781891);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_781891" style="display:none;">@</span>Ярослав92</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/781891.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=781891">Найти ещё сообщения от Ярослав92</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=%D0%AF%D1%80%D0%BE%D1%81%D0%BB%D0%B0%D0%B292">Найти темы от Ярослав92</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=781891">Добавить Ярослав92 в список знакомых</a></td></tr>
	
 
	
	
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>


	
<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

	<div id="edit9426742" style="padding:0px 0px 3px 0px">
	



<table id="post9426742" class="tborder" cellpadding="5" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="top">
	<td class="alt2" width="170px" style="border-right: 1px solid #AAAAAA;" rowspan="3">
            <div>
               
                    
                        
                          <a class="bigusername" href="javascript:insertnick(&#39;Tsin&#39;,&#39;-1&#39;);" title="Ник в ответ"><span id="tagg_339308" style="display:none;">@</span>Tsin</a>
                        
                    
                    
                        <span id="postmenu_9426742" style="cursor: pointer;"><script> vbmenu_register("postmenu_9426742", false); </script> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></span>
                    
               
            </div>
			
			
			
			
				<div class="smallfont" style="margin-top: 5px;">
					&nbsp;<a href="https://www.cyberforum.ru/members/339308.html"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/avatar339308_4.gif" width="80" height="80" alt="Аватар для Tsin" border="0" title="Аватар для Tsin"></a>
				</div>
			
		
			<div class="smallfont" style="margin-top: 2px;">
				
					
					<div><a target="_blank" href="https://www.cyberforum.ru/members/339308.html#kr_prep" style="text-decoration: none;"><span id="repdisplay_9426742_339308" title="Репутация пользователя" style="font-weight: bold">746</span></a> / <a target="_blank" href="https://www.cyberforum.ru/members/339308.html#stats" style="text-decoration: none;"><span title="Общая оценка (+487, -0)">487</span></a> / <span title="Лучшие ответы" style="font-weight: bold">187</span></div>
				<div>Регистрация: 30.12.2012</div>
				
				
				<div>Сообщений: 1,278</div>
				
				<div>Записей в блоге: <a href="https://www.cyberforum.ru/blogs/339308/">2</a></div>
				
<!-- show awards -->

<!-- /show awards -->

				
			</div>
		
	</td>
</tr>
<tr>
	
		<td class="alt2 smallfont" style="font-weight:normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px;" height="15px">
			
				03.08.2016, 21:05
				
				
				&nbsp; &nbsp; .NET 4.x Создать класс Point
			
		</td>
		<td class="alt2 smallfont" style="font-weight: normal; border-bottom: 1px solid #AAAAAA; border-right: 0px; padding: 3px 5px 3px 5px; text-align: right;" width="350px" height="15px">

	
		[<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=post&amp;entry_id=9426742">В закладки</a>]
	


	<span id="kr_floatqr_9426742">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>
	<a href="https://www.cyberforum.ru/post9426742.html" target="_blank" id="postcount9426742" name="20"><b>20</b></a>
	(<a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#post9426742" target="_blank"><b>permalink</b></a>)
	
</td>
	
</tr>

<tr valign="top">
		<td class="alt1" colspan="2" id="td_post_9426742" style="padding-top: 3px;" onmouseover="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9426742&#39;; krobj.validobj = true;}" onmouseout="if(typeof krobj == &#39;object&#39;){krobj.nickname = &#39;Tsin&#39;; krobj.postid = &#39;9426742&#39;; krobj.validobj = false;}">

		

		

		
			
		

		<div id="post_message_9426742" style="margin: 2px 2px 2px 5px;">



			

			<b>Ярослав92</b>, для этого есть контекстное ключевое слово <b>value</b>:<br>
<br>
<div style="margin: 5px 10px 5px 30px"><table class="csharp"><thead><tr><td colspan="2" class="head">C#<a href="https://www.cyberforum.ru/#" style="float: right; color: rgb(96, 96, 96); font-weight: normal;">Выделить код</a></td></tr></thead><tbody><tr class="li1"><td><div id="931212371" style="height: 169px" class="codeframe"><table><tbody><tr class="li1"><td class="ln" style="padding: 0px 10px 0px 5px;"><pre class="de1">1
2
3
4
5
6
7
8
9
</pre></td><td class="de1"><pre class="de1"><span class="kw1">public</span> <span class="kw4">double</span> Scalar
<span class="br0">{</span>
&nbsp; &nbsp; <span class="kw1">set</span> <span class="br0">{</span> x <span class="sy0">*=</span> <span class="kw1">value</span><span class="sy0">;</span> y <span class="sy0">*=</span> <span class="kw1">value</span><span class="sy0">;</span> <span class="br0">}</span>
<span class="br0">}</span>
&nbsp;
<span class="sy0">...</span>
&nbsp;
<span class="me1">Point</span> p <span class="sy0">=</span> <span class="kw3">new</span> Point<span class="br0">(</span><span class="br0">)</span><span class="sy0">;</span>
p<span class="sy0">.</span><span class="me1">Scalar</span> <span class="sy0">=</span> <span class="nu0">3</span><span class="sy0">;</span> <span class="co1">//умножит обе координаты x и y на 3</span></pre></td></tr></tbody></table></div></td></tr></tbody></table></div>



		</div>


		
		
		
		






		
		
	</td>
</tr>

<tr>
	<td class="alt2" style="border-right: 1px solid #AAAAAA;">
		<img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/user_offline.png" alt="Tsin вне форума" border="0" title="Tsin вне форума">


		
		
			
				<a href="https://www.cyberforum.ru/report.php?p=9426742"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/report.png" alt="Обратить внимание администрации на это сообщение" border="0" title="Обратить внимание администрации на это сообщение"></a>
			 
		
		
	</td>
	<td colspan="2" class="alt1" align="right" valign="middle">
		<div style="float: left"><span id="thumbs_box_9426742">
    <span class="post">
        <span>
            
            <span class="thumbs-post-rate" title="Рейтинг сообщения 1">1</span>
            
                
                
                
                
            </span>
            
        </span>
    </span>
</div>
		
		
            
            <span style="padding-right: 7px;">
                
                    <span onclick="return krthumbs_add(9426742, 1);" title="Добавить положительную оценку">
                        <img loading="lazy" decoding="async" style="cursor: pointer" src="./Создать класс Point - C# .NET 4_files/post_thanks.png" alt="Добавить +1 к оценке сообщения и его автора" border="0" title="Добавить +1 к оценке сообщения и его автора">
                    </span>
                
            </span>
            
		
		
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9426742" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/multiquote_off.gif" alt="Мультицитирование этого сообщения" border="0" id="mq_9426742" title="Мультицитирование этого сообщения"></a>
		
		
			<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;p=9426742" id="qr_9426742" onclick="return false"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quickreply.png" alt="Быстрый ответ на это сообщение" border="0" title="Быстрый ответ на это сообщение"></a>
		
		
		
		
		
		
			
		
	</td>
</tr>

</tbody></table>

<div class="vbmenu_popup" id="postmenu_9426742_menu" style="display:none">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
                  
                      <td class="thead">Меню пользователя <a href="javascript:insertnick(&#39;Tsin&#39;,339308);" title="Ник в ответ с ссылкой на профиль"><span id="tagg_339308" style="display:none;">@</span>Tsin</a></td>
                  
	</tr>
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/members/339308.html">Посмотреть профиль</a></td></tr>
	
	
	
	
	
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=finduser&amp;u=339308">Найти ещё сообщения от Tsin</a></td></tr>
		<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?do=process&amp;showposts=0&amp;starteronly=1&amp;exactname=1&amp;searchuser=Tsin">Найти темы от Tsin</a></td></tr>
	
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/profile.php?do=addlist&amp;userlist=buddy&amp;u=339308">Добавить Tsin в список знакомых</a></td></tr>
	
 
	
	<tr><td class="vbmenu_option"><a href="https://www.cyberforum.ru/blogs/339308/">Читать блог</a></td></tr>
</tbody></table>
</div>



















	</div>
	
		</div>
	</div>
</div>

<div id="lastpost"></div>
</div>


<div>
	<div class="page" style="text-align: left;">
		<div style="margin: 0px 3px 0px 3px" align="left">

<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tbody><tr valign="top">
	
		<td>
			<table class="smallfont" width="240px" cellspacing="0" cellpadding="0" border="0"><tbody><tr>
				<td>
					<a href="https://www.cyberforum.ru/newreply.php?do=newreply&amp;noquote=1&amp;p=9426742"><img loading="lazy" decoding="async" class="buttonimg" src="./Создать класс Point - C# .NET 4_files/reply.png" alt="Ответ" border="0" title="Ответ"></a>
				</td>
				<td>
					<a href="https://www.cyberforum.ru/newthread.php?do=newthread&amp;f=91"><img loading="lazy" decoding="async" class="buttonimg" src="./Создать класс Point - C# .NET 4_files/newthread.png" alt="Создать тему" border="0" title="Создать тему"></a>
				</td>
			</tr></tbody></table>
		</td>
	
	
		<td align="center" width="100%">
			<a class="smallfont" href="https://www.cyberforum.ru/csharp-beginners/">Вернуться в раздел</a>
		</td>
	
	
		<td align="right"><div class="pagenav" align="right">
<table class="tborder" cellpadding="3" cellspacing="1" border="0">
<tbody><tr>
	<td class="vbmenu_control">1 из 2</td>
	
	
		<td class="alt2"><span title="Показано с 1 по 20 из 24."><strong>1</strong></span></td>
 <td class="alt1"><a href="https://www.cyberforum.ru/csharp-beginners/thread1787565-page2.html" title="с 21 по 24 из 24">2</a></td>
	<td class="alt1"><a rel="next" class="nowrapped" href="https://www.cyberforum.ru/csharp-beginners/thread1787565-page2.html" title="Следующая страница - с 21 по 24 из 24">Ctrl <span class="pnarrow">&gt;</span></a></td>
	<td class="alt1"><a rel="end" href="https://www.cyberforum.ru/csharp-beginners/thread1787565-page2.html" title="Последняя страница - с  по  из 24 • Ctrl+Shift →"><strong>»</strong></a></td>
	<td class="vbmenu_control" title="" id="pagenav.405" style="cursor: pointer;"> <img src="./Создать класс Point - C# .NET 4_files/menu_open.gif" border="0" title="" alt=""></td>
</tr>
</tbody></table>
</div>
		
		</td>
	
</tr>
</tbody></table>






	<script src="./Создать класс Point - C# .NET 4_files/vbulletin_lightbox.js.загружено"></script>
	<script>
	<!--
	vBulletin.register_control("vB_Lightbox_Container", "posts", 1);
	//-->
	</script>


	<script src="./Создать класс Point - C# .NET 4_files/vbulletin_multi_quote.js.загружено"></script>
	<script>
	<!--
	var mqlimit = 1;
	//-->
	</script>


	<table class="tborder" cellpadding="5" cellspacing="1" border="0" style="display:none; position:absolute" id="ajax_post_errors">
	<tbody><tr>
		<td class="thead">
			<span style="float:right"><input type="button" class="button" value=" X " onclick="vB_QuickEditor.hide_errors()" id="ajax_post_errors_closebtn"></span>
			Сообщение форума
		</td>
	</tr>
	<tr>
		<td class="alt2" colspan="2" id="ajax_post_errors_message">&nbsp;</td>
	</tr>
	<tr>
		<td class="tfoot" colspan="2" align="center"><a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#" onclick="vB_QuickEditor.abort(); return false;">Отменить изменения</a></td>
	</tr>
	</tbody></table>
	<!-- Editor Scripts -->
<script src="./Создать класс Point - C# .NET 4_files/vbulletin_textedit.js.загружено"></script>
<script>
<!--
var fontoptions = new Array("Arial", "Arial Black", "Arial Narrow", "Book Antiqua", "Century Gothic", "Comic Sans MS", "Courier New", "Fixedsys", "Franklin Gothic Medium", "Garamond", "Georgia", "Impact", "Lucida Console", "Lucida Sans Unicode", "Microsoft Sans Serif", "Palatino Linotype", "System", "Tahoma", "Times New Roman", "Trebuchet MS", "Verdana");
var sizeoptions = new Array(1, 2, 3, 4, 5, 6, 7);
var smilieoptions = { 
	'Основные смайлы' : {
		'29' : new Array('//cyberstatic.net/images/smilies/smile3.gif', ':)', ':)'),
		'27' : new Array('//cyberstatic.net/images/smilies/sad.gif', ':(', ':('),
		'37' : new Array('//cyberstatic.net/images/smilies/ag.gif', ':D', ':D'),
		'12' : new Array('//cyberstatic.net/images/smilies/ae.gif', ':p', ':p'),
		'34' : new Array('//cyberstatic.net/images/smilies/wink.gif', ';)', ';)'),
		'58' : new Array('//cyberstatic.net/images/smilies/ap.gif', ':jokingly:', ':jokingly:'),
		'105' : new Array('//cyberstatic.net/images/smilies/blink.gif', 'O_o', 'O_o'),
		'61' : new Array('//cyberstatic.net/images/smilies/acute.gif', ';D', ';D'),
		'52' : new Array('//cyberstatic.net/images/smilies/rofl.gif', ':rofl:', ':rofl:'),
		'47' : new Array('//cyberstatic.net/images/smilies/friends.gif', ':friends:', ':friends:'),
		'33' : new Array('//cyberstatic.net/images/smilies/umnik.gif', ':umnik:', ':umnik:'),
		'59' : new Array('//cyberstatic.net/images/smilies/aq.gif', ']:->', ']:->'),
		'38' : new Array('//cyberstatic.net/images/smilies/eek2.gif', '=-O', '=-O'),
		'41' : new Array('//cyberstatic.net/images/smilies/huh.gif', ':wall:', ':wall:'),
		'15' : new Array('//cyberstatic.net/images/smilies/cray.gif', ':cry:', ':cry:'),
		'18' : new Array('//cyberstatic.net/images/smilies/dirol.gif', '8-)', '8-)'),
		'19' : new Array('//cyberstatic.net/images/smilies/fool.gif', ':-|', ':-|'),
		'56' : new Array('//cyberstatic.net/images/smilies/swoon.gif', ':swoon:', ':swoon:'),
		'44' : new Array('//cyberstatic.net/images/smilies/blush2.gif', ':-[', ':-['),
		'45' : new Array('//cyberstatic.net/images/smilies/clapping.gif', ':bravo:', ':bravo:'),
		'54' : new Array('//cyberstatic.net/images/smilies/be.gif', '%-)', '%-)'),
		'48' : new Array('//cyberstatic.net/images/smilies/good3.gif', ':good:', ':good:'),
		'49' : new Array('//cyberstatic.net/images/smilies/negative.gif', ':negative:', ':negative:'),
		'43' : new Array('//cyberstatic.net/images/smilies/bad.gif', ':-!', ':-!'),
		'55' : new Array('//cyberstatic.net/images/smilies/sorry.gif', ':sorry:', ':sorry:'),
		'40' : new Array('//cyberstatic.net/images/smilies/rtfm.gif', ':rtfm:', ':rtfm:'),
		'53' : new Array('//cyberstatic.net/images/smilies/scratch_one-s_head.gif', ':scratch:', ':scratch:'),
		'35' : new Array('//cyberstatic.net/images/smilies/yahoo.gif', ':yahoo:', ':yahoo:'),
		'50' : new Array('//cyberstatic.net/images/smilies/aw.gif', ':kissing:', ':kissing:'),
		'60' : new Array('//cyberstatic.net/images/smilies/az.gif', ':drink:', ':drink:'),
		'65' : new Array('//cyberstatic.net/images/smilies/smoke.gif', ':smoke:', ':smoke:'),
		'64' : new Array('//cyberstatic.net/images/smilies/lazy2.gif', ':sleep:', ':sleep:'),
		'63' : new Array('//cyberstatic.net/images/smilies/beee.gif', ':-/', ':-/'),
		'136' : new Array('//cyberstatic.net/images/smilies/handshake.gif', ':handshake:', ':handshake:'),
		'69' : new Array('//cyberstatic.net/images/smilies/nea.gif', ':no:', ':no:'),
		'67' : new Array('//cyberstatic.net/images/smilies/give_rose.gif', ':rose:', ':rose:'),
		'70' : new Array('//cyberstatic.net/images/smilies/pardon.gif', ':pardon:', ':pardon:'),
		'71' : new Array('//cyberstatic.net/images/smilies/ireful2.gif', ':ireful:', ':ireful:'),
		'74' : new Array('//cyberstatic.net/images/smilies/popcorn.gif', ':popcorn:', ':popcorn:'),
		'75' : new Array('//cyberstatic.net/images/smilies/angry.gif', ':angry:', ':angry:'),
		'76' : new Array('//cyberstatic.net/images/smilies/bye.gif', ':bye:', ':bye:'),
		'102' : new Array('//cyberstatic.net/images/smilies/dance.gif', ':dance:', ':dance:'),
		'103' : new Array('//cyberstatic.net/images/smilies/yes.gif', ':yes:', ':yes:'),
		'137' : new Array('//cyberstatic.net/images/smilies/beer2.gif', ':beer2:', ':beer2:'),
		'106' : new Array('//cyberstatic.net/images/smilies/senor.gif', ':senor:', ':senor:'),
		'107' : new Array('//cyberstatic.net/images/smilies/beach.gif', ':beach:', ':beach:'),
		'108' : new Array('//cyberstatic.net/images/smilies/black_eye.gif', ':black_eye:', ':black_eye:'),
		'109' : new Array('//cyberstatic.net/images/smilies/boredom.gif', ':boredom:', ':boredom:'),
		'111' : new Array('//cyberstatic.net/images/smilies/declare.gif', ':declare:', ':declare:'),
		'112' : new Array('//cyberstatic.net/images/smilies/read.gif', ':read:', ':read:'),
		'113' : new Array('//cyberstatic.net/images/smilies/cofee.gif', ':coffee:', ':coffee:'),
		'114' : new Array('//cyberstatic.net/images/smilies/cofee2.gif', ':coffee2:', ':coffee2:'),
		'115' : new Array('//cyberstatic.net/images/smilies/tomatos.gif', ':tomatos:', ':tomatos:'),
		'116' : new Array('//cyberstatic.net/images/smilies/facepalm.gif', ':facepalm:', ':facepalm:'),
		'120' : new Array('//cyberstatic.net/images/smilies/help.gif', ':help:', ':help:'),
		'121' : new Array('//cyberstatic.net/images/smilies/mda.gif', ':mda:', ':mda:'),
		'122' : new Array('//cyberstatic.net/images/smilies/resent.gif', ':resent:', ':resent:'),
		'123' : new Array('//cyberstatic.net/images/smilies/scare.gif', ':scare:', ':scare:'),
		'124' : new Array('//cyberstatic.net/images/smilies/stink.gif', ':stink:', ':stink:'),
		'125' : new Array('//cyberstatic.net/images/smilies/thank_you.gif', ':thank_you:', ':thank_you:'),
		'126' : new Array('//cyberstatic.net/images/smilies/to_take_umbrage.gif', ':umbrage:', ':umbrage:'),
		'127' : new Array('//cyberstatic.net/images/smilies/victory.gif', ':victory:', ':victory:'),
		'128' : new Array('//cyberstatic.net/images/smilies/yes2.gif', ':yes2:', ':yes2:'),
		'129' : new Array('//cyberstatic.net/images/smilies/sarcasm.gif', ':sarcasm:', ':sarcasm:'),
		'130' : new Array('//cyberstatic.net/images/smilies/wizard.gif', ':wizard:', ':wizard:'),
		'134' : new Array('//cyberstatic.net/images/smilies/fie.gif', ':fie:', ':fie:'),
		'62' : new Array('//cyberstatic.net/images/smilies/aggressive.gif', '>:o', '>:o'),
		'31' : new Array('//cyberstatic.net/images/smilies/stop.gif', ':stop:', ':stop:'),
		'138' : new Array('//cyberstatic.net/images/smilies/claim.gif', ':claim:', ':claim:')},
	'КиберЛеди' : {
		'91' : new Array('//cyberstatic.net/images/smilies/girl_smile.gif', ':gsmile:', ':gsmile:'),
		'90' : new Array('//cyberstatic.net/images/smilies/girl_sad.gif', ':gsad:', ':gsad:'),
		'68' : new Array('//cyberstatic.net/images/smilies/kiss2.gif', ':-*', ':-*'),
		'92' : new Array('//cyberstatic.net/images/smilies/girl_wink.gif', ':gwink:', ':gwink:'),
		'96' : new Array('//cyberstatic.net/images/smilies/spruce_up.gif', ':spruce_up:', ':spruce_up:'),
		'82' : new Array('//cyberstatic.net/images/smilies/flirt.gif', ':flirt:', ':flirt:'),
		'100' : new Array('//cyberstatic.net/images/smilies/surprise.gif', ':O_O:', ':O_O:'),
		'77' : new Array('//cyberstatic.net/images/smilies/gbye.gif', ':gbye:', ':gbye:'),
		'98' : new Array('//cyberstatic.net/images/smilies/grose.gif', ':grose:', ':grose:'),
		'93' : new Array('//cyberstatic.net/images/smilies/girl_witch.gif', ':gwitch:', ':gwitch:'),
		'79' : new Array('//cyberstatic.net/images/smilies/delight.gif', ':delight:', ':delight:'),
		'104' : new Array('//cyberstatic.net/images/smilies/gpardon.gif', ':gpardon:', ':gpardon:'),
		'94' : new Array('//cyberstatic.net/images/smilies/hysteric.gif', ':hysteric:', ':hysteric:'),
		'95' : new Array('//cyberstatic.net/images/smilies/parting.gif', ':parting:', ':parting:'),
		'88' : new Array('//cyberstatic.net/images/smilies/girl_impossible.gif', ':impossible:', ':impossible:'),
		'89' : new Array('//cyberstatic.net/images/smilies/girl_mad.gif', ':gmad:', ':gmad:'),
		'80' : new Array('//cyberstatic.net/images/smilies/gsorry.gif', ':gsorry:', ':gsorry:'),
		'84' : new Array('//cyberstatic.net/images/smilies/girl_cray.gif', ':gcray:', ':gcray:'),
		'85' : new Array('//cyberstatic.net/images/smilies/girl_cray2.gif', ':gcray2:', ':gcray2:'),
		'86' : new Array('//cyberstatic.net/images/smilies/girl_dance.gif', ':gdance:', ':gdance:'),
		'81' : new Array('//cyberstatic.net/images/smilies/first_move.gif', ':first_move:', ':first_move:'),
		'99' : new Array('//cyberstatic.net/images/smilies/hihi.gif', ':hihi:', ':hihi:'),
		'87' : new Array('//cyberstatic.net/images/smilies/girl_haha.gif', ':ghaha:', ':ghaha:'),
		'66' : new Array('//cyberstatic.net/images/smilies/curtsey.gif', ':curtsy:', ':curtsy:'),
		'72' : new Array('//cyberstatic.net/images/smilies/girl_kiss.gif', ':kiss:', ':kiss:'),
		'83' : new Array('//cyberstatic.net/images/smilies/girl_blum.gif', ':blum:', ':blum:'),
		'101' : new Array('//cyberstatic.net/images/smilies/girl_scratch2.gif', ':gscratch:', ':gscratch:'),
		'73' : new Array('//cyberstatic.net/images/smilies/girl_sigh.gif', ':sigh:', ':sigh:'),
		'97' : new Array('//cyberstatic.net/images/smilies/tender.gif', ':tender:', ':tender:'),
		'78' : new Array('//cyberstatic.net/images/smilies/confusion.gif', ':confusion:', ':confusion:'),
		'131' : new Array('//cyberstatic.net/images/smilies/ghide.gif', ':ghide:', ':ghide:'),
		'132' : new Array('//cyberstatic.net/images/smilies/gfish.gif', ':gfish:', ':gfish:'),
		'133' : new Array('//cyberstatic.net/images/smilies/gumbrage.gif', ':gumbrage:', ':gumbrage:'),
		'135' : new Array('//cyberstatic.net/images/smilies/clapgirl.gif', ':clapgirl:', ':clapgirl:'),
		'139' : new Array('//cyberstatic.net/images/smilies/gclaim.gif', ':gclaim:', ':gclaim:'),
		'140' : new Array('//cyberstatic.net/images/smilies/cheerleader.gif', ':cheerleader:', ':cheerleader:'),
		'141' : new Array('//cyberstatic.net/images/smilies/gconfusion.gif', ':gconfusion:', ':gconfusion:')} };

var istyles = { "pi_button_down" : [ "#98B5E2", "#000000", "0px", "1px solid #316AC5" ], "pi_button_hover" : [ "#C1D2EE", "#000000", "0px", "1px solid #316AC5" ], "pi_button_normal" : [ "#E1E1E2", "#000000", "1px", "none" ], "pi_button_selected" : [ "#F1F6F8", "#000000", "0px", "1px solid #316AC5" ], "pi_menu_down" : [ "#98B5E2", "#316AC5", "0px", "1px solid #316AC5" ], "pi_menu_hover" : [ "#C1D2EE", "#316AC5", "0px", "1px solid #316AC5" ], "pi_menu_normal" : [ "#FFFFFF", "#000000", "0px", "1px solid #FFFFFF" ], "pi_popup_down" : [ "#98B5E2", "#000000", "0px", "1px solid #316AC5" ] };
var ltr = 'left';

var smiliewindow_x = 240;
var smiliewindow_y = 280;

var ignorequotechars = 1;
var allowbasicbbcode = true;

// vB Phrases
vbphrase["wysiwyg_please_wait"]          = "Пожалуйста, подождите, пока загрузится визуальный редактор...";
vbphrase["wysiwyg_initialized"]          = "Визуальный редактор запущен для %1$s за %2$s сек.";
vbphrase["wysiwyg_command_invalid"]      = "Неверная или нереализуемая команда.";
vbphrase["moz_must_select_text"]         = "В Mozilla вам необходимо выделить часть текста, чтобы данная функция заработала.";
vbphrase["moz_edit_config_file"]         = "Вам необходимо изменить файл настроек Mozilla, чтобы выполнить это действие.";
vbphrase["enter_tag_option"]             = "Пожалуйста, введите опцию для BB кода %1$s:";
vbphrase["must_select_text_to_use"]      = "Вам необходимо выделить часть текста, чтобы данная функция заработала.";
vbphrase["browser_is_safari_no_wysiwyg"] = "Браузер Safari не поддерживает визуальный редактор.";
vbphrase["enter_option_x_tag"]           = "Введите опцию для BB кода [%1$s]:";
vbphrase["enter_text_to_be_formatted"]   = "Введите форматируемый текст";
vbphrase["enter_link_text"]              = "Введите текст отображаемый как ссылка (не обязательно):";
vbphrase["enter_list_type"]              = "Какой вид списка вы хотите создать? Введите '1', для создания нумерованного списка, введите 'a', для алфавитного списка, или оставьте пустым, для маркированного списка:";
vbphrase["enter_list_item"]              = "Введите элемент\r\n(оставьте список пустым или нажмите 'Отмена', чтобы завершить ввод):";
vbphrase["must_enter_subject"]           = "Вы должны ввести заголовок/название темы! Название не должно быть короче 10 символов.";
vbphrase["message_too_short"]            = "Ваше сообщение слишком короткое. Оно должно быть не менее %1$s символов.";
vbphrase["enter_link_url"]               = "Введите URL для данной ссылки:";
vbphrase["enter_image_url"]              = "Укажите URL вашего изображения:";
vbphrase["enter_email_link"]             = "Введите адрес электронной почты для данной ссылки:";
vbphrase["complete_image_verification"]  = "Вы не прошли проверку ввода текста с изображения";
vbphrase["iespell_not_installed"]        = "ieSpell - инструмент проверки орфографии для Internet Explorer.\r\n\r\nЕсли вы хотели бы загрузить ieSpell, нажмите OK; в противном случае нажмите Отмена.\r\n\r\nieSpell может быть загружен с http://www.iespell.com]";
vbphrase["click_quick_reply_icon"]       = "Нажмите в сообщении на иконку 'Быстрый ответ' для активации этой опции.";
vbphrase["insert_all"]                   = "Вставить все";

//-->
</script>
<!-- / Editor Scripts -->
<script>
<!--
// Paul M - Doublepost Modification //
function qr_prepare_submit_pdp(b,c){if(qr_repost==true){return true}if(!allow_ajax_qr||!AJAX_Compatible){return qr_check_data(b,c)}
else if(qr_check_data(b,c)){if(typeof vb_disable_ajax!='undefined'&&vb_disable_ajax>0){return true}if(is_ie&&userAgent.indexOf('msie 5.')!=-1)
{if(PHP.urlencode(b.message.value).indexOf('%u')!=-1){return true}}if(YAHOO.util.Connect.isCallInProgress(qr_ajax)){return false}
if(clickedelm==b.preview.value){return true}else{var d='ajax=1';if(typeof ajax_last_post!='undefined'){d+='&ajax_lastpost='+PHP.urlencode(ajax_last_post)}
for(var f=0;f<b.elements.length;f++){var a=b.elements[f];if(a.name&&!a.disabled){switch(a.type){case'text':case'textarea':case'hidden':d+='&'+a.name+'='+PHP.urlencode(a.value);
break;case'checkbox':case'radio':d+=a.checked?'&'+a.name+'='+PHP.urlencode(a.value):'';break;case'select-one':d+='&'+a.name+'='+PHP.urlencode(a.options[a.selectedIndex].value);
break;case'select-multiple':for(var e=0;e<a.options.length;e++){d+=(a.options[e].selected?'&'+a.name+'='+PHP.urlencode(a.options[e].value):'')}break}}}
fetch_object('qr_posting_msg').style.display='';document.body.style.cursor='wait';qr_ajax_post_pdp(b.action,d);return false}}else{return false}}
function qr_ajax_post_pdp(b,c){if(YAHOO.util.Connect.isCallInProgress(qr_ajax)){YAHOO.util.Connect.abort(qr_ajax)}qr_repost=false;
qr_ajax=YAHOO.util.Connect.asyncRequest("POST",b,{success:qr_do_ajax_post_pdp,failure:qr_handle_error,timeout:vB_Default_Timeout},SESSIONURL+"securitytoken="+SECURITYTOKEN+'&'+c)}
function qr_do_ajax_post_pdp(b){if(b.responseXML){document.body.style.cursor='auto';fetch_object('qr_posting_msg').style.display='none';var c;if(fetch_tag_count(b.responseXML,'postbit'))
{ajax_last_post=b.responseXML.getElementsByTagName('time')[0].firstChild.nodeValue;qr_disable_controls();qr_hide_errors();if(fetch_tag_count(b.responseXML,'updatepost'))
{var d=b.responseXML.getElementsByTagName('postbit')[0].firstChild.nodeValue;var f=b.responseXML.getElementsByTagName('updatepost')[0].firstChild.nodeValue;fetch_object('edit'+f).innerHTML=d}
else{var a=b.responseXML.getElementsByTagName('postbit');for(c=0;c<a.length;c++){var e=document.createElement('div');e.innerHTML=a[c].firstChild.nodeValue;var i=fetch_object('lastpost');
var j=i.parentNode;var d=j.insertBefore(e,i);PostBit_Init(d,a[c].getAttribute('postid'))}}if(fetch_object('qr_submit')){fetch_object('qr_submit').blur()}}
else{if(!is_saf){var g=b.responseXML.getElementsByTagName('error');if(g.length){var h='<ol>';for(c=0;c<g.length;c++){h+='<li>'+g[c].firstChild.nodeValue+'</li>'}h+='</ol>';
qr_show_errors('<ol>'+h+'</ol>');return false}}qr_resubmit()}}else{qr_resubmit()}}
//-->
</script>

	
		<script src="./Создать класс Point - C# .NET 4_files/vbulletin_quick_edit.js.загружено"></script>
		<script>
		<!--
		vB_AJAX_QuickEdit_Init('posts');
		//-->
		</script>
	


	<br>
<div id="kr_quickreply">
	<script src="./Создать класс Point - C# .NET 4_files/vbulletin_quick_reply.js.загружено"></script>
	<form action="https://www.cyberforum.ru/newreply.php?do=postreply&amp;t=1787565" method="post" name="vbform" onsubmit="return qr_prepare_submit_pdp(this, 3);" id="qrform">
	<table class="tborder" cellpadding="5" cellspacing="1" border="0" width="100%" align="center">
    <thead>
        <tr>
            <td class="tcat" colspan="2" id="kr_quickreply_dd0">
				<a style="float:right" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#top" onclick="return toggle_collapse(&#39;quickreply&#39;);"><img loading="lazy" decoding="async" id="collapseimg_quickreply" src="./Создать класс Point - C# .NET 4_files/collapse_tcat.gif" alt="" border="0"></a>
				Быстрый ответ

   <span id="kr_link">[<a href="javascript:do_qrpos(1);">Окно ответа</a>]</span>

			</td>
		</tr>
	</thead>
	<tbody id="qr_error_tbody" style="display:none">
	<tr>
		<td class="thead">При отправке были допущены следующие ошибки</td>
	</tr>
	<tr>
		<td class="alt1" id="qr_error_td"></td>
	</tr>
	<tr>
		<td class="tfoot" align="center"><span class="smallfont"><a href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#" onclick="return qr_hide_errors()">Ок</a></span></td>
	</tr>
	</tbody>
	<tbody id="collapseobj_quickreply" style="">
	<tr>
		<td class="panelsurround" align="center">
			<div class="panel">
				<div align="left" style="max-width:900px; width:auto !important; width:900px">

					<div class="smallfont">Сообщение:</div>
					<div id="vB_Editor_QR" class="vBulletin_editor">
		<script type="text/javascript">
		<!--
			var threaded_mode = 0;
			var require_click = 0;
			var is_last_page = 0; // leave for people with cached JS files
			var allow_ajax_qr = 0;
			var ajax_last_post = 1470296529;
		// -->
		</script>
		
<div id="vB_Editor_QR_controls" class="controlbar">
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tbody><tr>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_removeformat"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/removeformat.gif" width="21" height="20" alt="Убрать форматирование текста" title="Убрать форматирование текста"></div></td>
	
		<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/separator.gif" width="6" height="20" alt=""></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_bold"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/bold.gif" width="21" height="20" alt="Полужирный" title="Полужирный"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_italic"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/italic.gif" width="21" height="20" alt="Курсив" title="Курсив"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_underline"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/underline.gif" width="21" height="20" alt="Подчёркнутый" title="Подчёркнутый"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_strike"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/strike.gif" width="21" height="20" alt="Перечеркнуть" title="Перечеркнуть"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_sup"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/superscript.gif" width="21" height="20" alt="Степень" title="Степень"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_sub"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/subscript.gif" width="21" height="20" alt="Индекс" title="Индекс"></div></td>
	
	
		<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/separator.gif" width="6" height="20" alt=""></td>
		<td><div class="imagebutton" id="vB_Editor_QR_popup_forecolor" title="Цвета">
			<table cellpadding="0" cellspacing="0" border="0">
			<tbody><tr>
				<td id="vB_Editor_QR_color_out"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/color.gif" width="21" height="16" alt=""><br><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/clear.gif" id="vB_Editor_QR_color_bar" alt="" style="background-color:black" width="21" height="4"></td>
				<td class="alt_pickbutton"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/menupop.gif" alt="" width="11" height="16"></td>
			</tr>
			</tbody></table>
		</div></td>
	
	
		<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/separator.gif" width="6" height="20" alt=""></td>
	
	
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_createlink"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/createlink.gif" width="21" height="20" alt="Вставить ссылку" title="Вставить ссылку"></div></td>
	
	
	<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/separator.gif" width="6" height="20" alt=""></td>
	<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_nick"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/mention.png" width="21" height="20" alt="Упоминание пользователя" title="Упоминание пользователя"></div></td>
	<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_quote"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/quote.gif" width="21" height="20" alt="Вставить BB код цитаты [QUOTE] вокруг выделенного текста" title="Вставить BB код цитаты [QUOTE] вокруг выделенного текста"></div></td>
	<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_off"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/bboff.gif" width="21" height="20" alt=""></div></td>
	<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_spoiler"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/spoiler.gif" width="21" height="20" alt="Спойлер" title="Спойлер"></div></td>
	<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_table"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/table.gif" width="21" height="20" alt="Таблица" title="Таблица"></div></td>
	<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_youtube"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/youtube.gif" width="21" height="20" alt="Youtube" title="Youtube"></div></td>
	
		<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/separator.gif" width="6" height="20" alt=""></td>
		<td><div class="imagebutton" id="vB_Editor_QR_popup_smilie" title="Смайлы">
			<table cellpadding="0" cellspacing="0" border="0">
			<tbody><tr>
				<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/smilie.gif" alt="" width="21" height="20"></td>
				<td class="alt_pickbutton"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/menupop.gif" width="11" height="16" alt=""></td>
			</tr>
			</tbody></table>
		</div></td>
	
	
		<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/separator.gif" width="6" height="20" alt=""></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap1_FIELDSET"><img src="./Создать класс Point - C# .NET 4_files/fieldset.gif" alt="Вставить BB код [FIELDSET] вокруг выделенного текста" width="21" height="20" border="0" title="Вставить BB код [FIELDSET] вокруг выделенного текста"></div></td>
<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap1_ALINK"><img src="./Создать класс Point - C# .NET 4_files/anchorlink.gif" alt="Вставить BB код [ALINK] вокруг выделенного текста" width="21" height="20" border="0" title="Вставить BB код [ALINK] вокруг выделенного текста"></div></td>
<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap1_APLACE"><img src="./Создать класс Point - C# .NET 4_files/anchorplace.gif" alt="Вставить BB код [APLACE] вокруг выделенного текста" width="21" height="20" border="0" title="Вставить BB код [APLACE] вокруг выделенного текста"></div></td>
<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap1_MP3"><img src="./Создать класс Point - C# .NET 4_files/mp3.png" alt="Вставить BB код [MP3] вокруг выделенного текста" width="21" height="20" border="0" title="Вставить BB код [MP3] вокруг выделенного текста"></div></td>
<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_SOUNDCLOUD"><img src="./Создать класс Point - C# .NET 4_files/soundcloud.png" alt="Вставить BB код [SOUNDCLOUD] вокруг выделенного текста" width="21" height="20" border="0" title="Вставить BB код [SOUNDCLOUD] вокруг выделенного текста"></div></td>

	
	<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/separator(1).gif" width="6" height="20" alt=""></td>
<td>
	<div class="imagebutton" id="vB_Editor_QR_popup_attach" title="Вложения">
		<table cellpadding="0" cellspacing="0" border="0">
		<tbody><tr>
			<td><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/attach.gif" alt="" width="21" height="20"></td>
			<td class="alt_pickbutton"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/menupop.gif" width="11" height="16" alt=""></td>
		</tr>
		</tbody></table>
	</div>
</td>
<td width="100%">&nbsp;</td>
	
		<td>
			<div class="imagebutton" id="vB_Editor_QR_cmd_resize_0_99"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/resize_0.gif" width="21" height="9" alt="Уменьшить размер" title="Уменьшить размер"></div>
			<div class="imagebutton" id="vB_Editor_QR_cmd_resize_1_99"><img loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/resize_1.gif" width="21" height="9" alt="Увеличить размер" title="Увеличить размер"></div>
		</td>
	
	</tr>
	</tbody></table>

	<table cellpadding="0" cellspacing="0" border="0">
	<tbody><tr>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_code"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/code2.gif" alt="Вставить BB код [CODE] вокруг выделенного текста" title="Вставить BB код [CODE] вокруг выделенного текста"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_cpp"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/cpp.gif" alt="Выделить код C++" title="Выделить код C++"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_csharp"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/csharp.gif" alt="Выделить код C#" title="Выделить код C#"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_python"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/python.gif" alt="Выделить код Python" title="Выделить код Python"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_pascal"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/pascal.gif" alt="Выделить код Pascal" title="Выделить код Pascal"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_delphi"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/delphi.gif" alt="Выделить код Delphi" title="Выделить код Delphi"></div></td>
		<td><img class="langbutton" loading="lazy" decoding="async" width="6" height="15" alt="" src="./Создать класс Point - C# .NET 4_files/separator.gif"></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_1c"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/1c.gif" alt="Выделить код 1C" title="Выделить код 1C"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_actionscript"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/actionscript.gif" alt="Выделить код Actionscript" title="Выделить код Actionscript"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_asm"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/asm.gif" alt="Выделить код ASM" title="Выделить код ASM"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_bash"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/bash.gif" alt="Выделить код BASH" title="Выделить код BASH"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_basic"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/basic.gif" alt="Выделить код Basic" title="Выделить код Basic"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_clang"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/c.gif" alt="Выделить код C" title="Выделить код C"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_cppqt"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/cppqt.gif" alt="Выделить код C++ QT" title="Выделить код C++ QT"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_css"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/css.gif" alt="Выделить код CSS" title="Выделить код CSS"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_fortran"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/fortran.gif" alt="Выделить код Fortran" title="Выделить код Fortran"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_fsharp"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/fsharp.gif" alt="Выделить код F#" title="Выделить код F#"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_go"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/go.gif" alt="Выделить код Go" title="Выделить код Go"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_haskell"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/haskell.gif" alt="Выделить код Haskell" title="Выделить код Haskell"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_json"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/json.gif" alt="Выделить код JSON" title="Выделить код JSON"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_lisp"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/lisp.gif" alt="Выделить код Lisp" title="Выделить код Lisp"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_latex"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/latex.gif" alt="Выделить код Latex" title="Выделить код Latex"></div></td>
		<td><img class="langbutton" loading="lazy" decoding="async" width="6" height="15" alt="" src="./Создать класс Point - C# .NET 4_files/separator.gif"></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_inline"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/inline.gif" alt="Выделить код в строке" title="Выделить код в строке"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_noparse"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/noparse.gif" alt="Без обработки BB-кодов" title="Без обработки BB-кодов"></div></td>
	</tr>
	<tr>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_php"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/php.gif" alt="Выделить код PHP" title="Выделить код PHP"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_html"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/html.gif" alt="Выделить код HTML" title="Выделить код HTML"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_js"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/javascript.gif" alt="Выделить код JavaScript" title="Выделить код JavaScript"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_java"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/java.gif" alt="Выделить код Java" title="Выделить код Java"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_vb"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/vb.gif" alt="Выделить код Visual Basic" title="Выделить код Visual Basic"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_sql"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/sql.gif" alt="Выделить код SQL" title="Выделить код SQL"></div></td>
		<td><img class="langbutton" loading="lazy" decoding="async" width="6" height="15" alt="" src="./Создать класс Point - C# .NET 4_files/separator.gif"></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_matlab"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/matlab.gif" alt="Выделить код Matlab" title="Выделить код Matlab"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_mysql"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/mysql.gif" alt="Выделить код MySQL" title="Выделить код MySQL"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_objc"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/objc.gif" alt="Выделить код Object C" title="Выделить код Object C"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_perl"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/perl.gif" alt="Выделить код Perl" title="Выделить код Perl"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_phphtml"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/phphtml.gif" alt="Выделить код PHP и HTML" title="Выделить код PHP и HTML"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_plsql"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/plsql.gif" alt="Выделить код PL/SQL" title="Выделить код PL/SQL"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_prolog"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/prolog.gif" alt="Выделить код Prolog" title="Выделить код Prolog"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_pshell"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/powershell.gif" alt="Выделить код PowerShell" title="Выделить код PowerShell"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_qbasic"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/qbasic.gif" alt="Выделить код QBasic" title="Выделить код QBasic"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_ruby"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/ruby.gif" alt="Выделить код Ruby" title="Выделить код Ruby"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_rails"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/rails.gif" alt="Выделить код Ruby on Rails" title="Выделить код Ruby on Rails"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_tsql"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/tsql.gif" alt="Выделить код T-SQL" title="Выделить код T-SQL"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_vbnet"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/vbnet.gif" alt="Выделить код Visual Basic .NET" title="Выделить код Visual Basic .NET"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_xml"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/xml.gif" alt="Выделить код XML" title="Выделить код XML"></div></td>
		<td><div class="imagebutton" id="vB_Editor_QR_cmd_wrap0_winbatch"><img class="langbutton" loading="lazy" decoding="async" src="./Создать класс Point - C# .NET 4_files/winbatch.gif" alt="Выделить код WinBatch" title="Выделить код WinBatch"></div></td>
	</tr>
	</tbody></table>

</div>

<div class="controlbar" style="padding-right:8px">
	<fieldset style="border:0px; padding:0px; margin:0px">
	
	<textarea onkeypress="if (event.ctrlKey&amp;&amp;((event.keyCode==10)||(event.keyCode==13))){qr_prepare_submit(this.form, 3);}" name="message" id="vB_Editor_QR_textarea" rows="10" cols="60" style="width:100%; height:200px" tabindex="1" dir="ltr"></textarea>
	
	</fieldset>
<div class="smallfont"><a href="https://www.cyberforum.ru/misc.php?do=bbcode" target="_blank">Справка по BB-кодам</a>&nbsp;&nbsp;<a href="https://www.cyberforum.ru/about-forum/thread103521.html" target="_blank">Как работать в редакторе сообщений</a></div>
</div>

<input type="hidden" name="wysiwyg" id="vB_Editor_QR_mode" value="0">
<input type="hidden" name="styleid" value="0">

<script>
<!--
vB_Editor['vB_Editor_QR'] = new vB_Text_Editor('vB_Editor_QR', 0, '91', '1');
var QR_EditorID = 'vB_Editor_QR';
//-->
</script>
	</div>

<fieldset class="fieldset" style="margin:3px 0px 0px 0px">
	<legend>Загрузить файлы</legend>
	<div style="padding:3px">
		<div style="margin-bottom:3px">
			<div>Разрешённые типы файлов: 7z doc docx gif jpe jpeg jpg log mp4 pdf png psd rar swf txt webm webp xls xlsx zip</div>
		</div>
		<div style="margin-bottom:3px" id="attachlist">
			
		</div>
		<div>
			<script src="./Создать класс Point - C# .NET 4_files/vbulletin_attachment.js.загружено"></script>
			<script>
			<!--
			var newpost_attachmentbit = '<div style="margin:2px">\r\n	<img loading="lazy" decoding="async" class="inlineimg" src="https://www.cyberforum.ru/%1$s" alt="" border="0" />\r\n	<a href="https://www.cyberforum.ru/attachment.php?attachmentid=%3$s&amp;stc=1&amp;d=%4$s" target="_blank">%5$s</a>\r\n	(%6$s)\r\n</div>';
			vB_Attachments = new vB_Attachment('attachlist', 'vB_Editor_QR');
			
			document.write('&nbsp;&nbsp;<input type="button" id="manage_attachments_button" class="button" tabindex="1" style="font-weight:normal" value="Управление вложениями" title="Нажмите здесь, чтобы добавить или изменить вложения этого сообщения" onclick="vB_Attachments.open_window(\'newattachment.php?t=1787565&amp;poststarttime=1718262011&amp;posthash=a8d8d2abc6bcb3d18cb48c02905d451d\', 600, 800, \'\')" />');
			//-->
			</script>&nbsp;&nbsp;<input type="button" id="manage_attachments_button" class="button" tabindex="1" style="font-weight:normal" value="Управление вложениями" title="Нажмите здесь, чтобы добавить или изменить вложения этого сообщения" onclick="vB_Attachments.open_window(&#39;newattachment.php?t=1787565&amp;poststarttime=1718262011&amp;posthash=a8d8d2abc6bcb3d18cb48c02905d451d&#39;, 600, 800, &#39;&#39;)">
			<noscript>
			<a href="https://www.cyberforum.ru/newattachment.php?t=1787565&amp;poststarttime=1718262011&amp;posthash=a8d8d2abc6bcb3d18cb48c02905d451d" target="manageattach" title="Нажмите здесь, чтобы добавить или изменить вложения этого сообщения" tabindex="1"><strong>Управление вложениями</strong></a>
			</noscript>
		</div>
	</div>
</fieldset>

					<fieldset class="fieldset" style="margin:3px 0px 0px 0px">
						<legend>Опции</legend>
						<div style="padding:3px">
							
							<label for="qr_quickreply"><input type="checkbox" name="quickreply" value="1" id="qr_quickreply" accesskey="w" tabindex="4" disabled="">Вставить цитату в ответ?</label>
							<input type="hidden" name="merge_post" value="1" id="cb_merge_post">

							<div><div><label for="cb_disablesmilies"><input type="checkbox" name="disablesmilies" value="1" id="cb_disablesmilies" tabindex="1">Отключить смайлы в тексте</label></div>
</div>
						</div>
					</fieldset>
				</div>
			</div>

			<div style="margin-top:5px">
				<input type="hidden" name="fromquickreply" value="1">
				<input type="hidden" name="s" value="">
				<input type="hidden" name="securitytoken" value="1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e">
				<input type="hidden" name="do" value="postreply">
				<input type="hidden" name="t" value="1787565" id="qr_threadid">
				<input type="hidden" name="p" value="who cares" id="qr_postid">
				<input type="hidden" name="specifiedpost" value="0" id="qr_specifiedpost">
				<input type="hidden" name="posthash" value="a8d8d2abc6bcb3d18cb48c02905d451d">
				<input type="hidden" name="poststarttime" value="1718262011">
				<input type="hidden" name="parseurl" value="1">
				<input type="hidden" name="loggedinuser" value="1679885">
				<input type="submit" class="button" value="Отправить быстрый ответ" accesskey="s" title="(Alt + S)" name="sbutton" tabindex="2" id="qr_submit" onclick="clickedelm = this.value">
				<input type="submit" class="button" value="Расширенный режим" accesskey="x" title="(Alt + X)" name="preview" tabindex="3" id="qr_preview" onclick="clickedelm = this.value">
			</div>

			<div align="center" id="qr_posting_msg" style="display:none; margin-top:6px">
				<img loading="lazy" decoding="async" style="vertical-align: middle;" src="./Создать класс Point - C# .NET 4_files/progress.gif" alt="Отправка быстрого ответа. Пожалуйста, подождите..." title="Отправка быстрого ответа. Пожалуйста, подождите...">&nbsp;<strong>Отправка быстрого ответа. Пожалуйста, подождите...</strong>
			</div>
		</td>
	</tr>
	</tbody>
	</table>
	</form>
	
		<div id="qr_scroll"></div>
	

	<script>
	<!--
		// initialize quick reply
		qr_init();
	//-->
	</script>
</div>


 
 <br>
<table class="tborder" cellpadding="5" cellspacing="1" border="0" width="100%">
<tbody>
	<tr>
		<td class="tcat">
			<a style="float:right" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#top" onclick="return toggle_collapse(&#39;latex&#39;);"><img id="collapseimg_latex" src="./Создать класс Point - C# .NET 4_files/collapse_tcat.gif" alt="" border="0"></a>Редактор формул <span class="smallfont">(кликните на картинку в правом углу, чтобы закрыть)</span>
		</td>
	</tr>
	<tr>
		<td class="alt1" id="collapseobj_latex" style="" align="center"> 
			<iframe name="I1" src="./Создать класс Point - C# .NET 4_files/equationeditor.html" border="0" width="620" frameborder="0" height="330"></iframe>
			<div align="left"><a href="https://www.cyberforum.ru/mathematics/thread914432.html" target="_blank">Справка по редактору формул</a></div>
		</td>
	</tr>
</tbody>
</table>





<br>
<table class="tborder" cellpadding="5" cellspacing="1" border="0" width="100%" align="center">
<thead>
	<tr>
		<td class="tcat" width="100%" colspan="5">
			Похожие темы
			<a style="float:right" href="https://www.cyberforum.ru/csharp-beginners/thread1787565.html#top" onclick="return toggle_collapse(&#39;similar_threads&#39;)"><img loading="lazy" decoding="async" id="collapseimg_similar_threads" src="./Создать класс Point - C# .NET 4_files/collapse_tcat.gif" alt="" border="0"></a>
		</td>
	</tr>
</thead>
<tbody id="collapseobj_similar_threads" style="">
<tr class="thead" align="center">
	<td class="thead">Тема</td>
	<td class="thead" width="150px" align="center">Раздел</td>
	<td class="thead" width="50px" align="center">Ответов</td>
	<td class="thead" width="100px" align="center">Дата</td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread229822.html" title="Здравствуйте, есть такая часть задачки:  
&quot;Создать класс Point, на его основе создать класс Line...."> Создать класс Point, на его основе создать класс Line </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">8</span></td>
	<td class="alt1" align="center"><span class="smallfont">16.01.2011 <span class="time">23:23</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread703889.html" title="Необходимо: 
 
Создать класс Point (точка). На его основе создать классы ColoredPoint и Line..."> Создать класс Point (точка). На его основе создать классы ColoredPoint и Line </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">2</span></td>
	<td class="alt1" align="center"><span class="smallfont">21.11.2012 <span class="time">13:21</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread1155257.html" title="Задания на наследование. Создать класс Point (точка). На его основе создать классы ColoredPoint и..."> Создать класс Point (точка). На его основе создать классы ColoredPoint и Line (линия) </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">17</span></td>
	<td class="alt1" align="center"><span class="smallfont">05.05.2014 <span class="time">21:43</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread391498.html" title="всем привет! 
помогите пожалуйста с решением задачи. 
 
вот задание: 
 
&quot;Создать класс Point..."> Создать класс Point (точка). На его основе создать классы ColoredPoint и Line (линия) </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">6</span></td>
	<td class="alt1" align="center"><span class="smallfont">03.12.2011 <span class="time">01:24</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread2171989.html" title="Помогите пожалуйста, сделать лабу :cry: 
 
Лабораторная работа 9. Наследование 
В программах..."> Создать класс Point (точка) На его основе создать классы ColoredPoint и Line (линия) </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">1</span></td>
	<td class="alt1" align="center"><span class="smallfont">10.01.2018 <span class="time">19:49</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread2082893.html" title="На основе класса Line создать классы ColoredLine и PolyLine (многоугольник). В классах описать..."> Создать класс Point (точка). На его основе создать классы ColoredPoint и Line (линия) </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">1</span></td>
	<td class="alt1" align="center"><span class="smallfont">16.10.2017 <span class="time">17:50</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread1373855.html" title="Создать класс Point, содержащий следующие члены класса: 
1.	Поля: 
•	int x, y; 
2.	Конструкторы,..."> Создать класс Point </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">3</span></td>
	<td class="alt1" align="center"><span class="smallfont">13.02.2015 <span class="time">00:21</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread391716.html" title="Создать класс Point, разработав следующие элементы класса: 
* Поля: int x, y; 
* Конструкторы,..."> Создать класс Point </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">1</span></td>
	<td class="alt1" align="center"><span class="smallfont">26.11.2011 <span class="time">07:42</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread591672.html" title="Помогите дополнить программу! Мне необходимо создать класс Point (точка), где нужно описать:..."> Создать класс Point (точка) </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">1</span></td>
	<td class="alt1" align="center"><span class="smallfont">30.05.2012 <span class="time">19:42</span></span></td>
</tr>
<tr>
	<td class="alt1" align="left">
		
		<b><a target="_blank" href="https://www.cyberforum.ru/csharp-beginners/thread1207442.html" title="Создать класс Point для работы с точками на плоскости.Координаты точки - декартовы.Обязательно..."> Создать класс Point для работы с точками на плоскости </a></b>
	</td>
	<td class="alt2" align="center"><span class="smallfont">C# для начинающих</span></td>
	<td class="alt1" nowrap="nowrap" align="center"><span class="smallfont">1</span></td>
	<td class="alt1" align="center"><span class="smallfont">13.06.2014 <span class="time">23:33</span></span></td>
</tr>

</tbody>
</table>


	<br>
	<table class="tborder" cellpadding="5" cellspacing="1" border="0" width="100%" align="center">
	<tbody><tr>
		<td class="tcat" colspan="2">
			Здесь присутствуют: 1 <span class="normal">(пользователей: 1 , гостей: 0)</span>
		</td>
	</tr>
	<tr>
		<td class="alt1" colspan="2">
			<span class="smallfont"><a href="https://www.cyberforum.ru/members/1679885.html">Alex_1966</a></span>
		</td>
	</tr>
	</tbody></table>




<div class="vbmenu_popup" id="threadtools_menu" style="display:none">
<form action="https://www.cyberforum.ru/postings.php?t=1787565&amp;pollid=" method="post" name="threadadminform">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
		<td class="thead">Опции темы<a name="goto_threadtools"></a></td>
	</tr>
          
	
	
	
	<tr>
		<td class="vbmenu_option"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/subscribe.gif" alt="Подписка" title="Подписка">
		
			<a href="https://www.cyberforum.ru/subscription.php?do=addsubscription&amp;t=1787565">Подписаться на эту тему</a>
		
		</td>
	</tr>
	<tr>
		<td class="vbmenu_option"><img loading="lazy" decoding="async" class="inlineimg" src="./Создать класс Point - C# .NET 4_files/subscribe.gif" alt="[vB Favorites]" title="[vB Favorites]">
		
			<a href="https://www.cyberforum.ru/vbfavorites.php?do=add&amp;entry_type=thread&amp;entry_id=1787565">Добавить тему в закладки</a>
		
		</td>
	</tr>
	
	
	
	</tbody></table>
</form>
</div>



<div class="vbmenu_popup" id="threadsearch_menu" style="display:none">
<form action="https://www.cyberforum.ru/search.php?do=process&amp;searchthreadid=1787565" method="post">
	<table cellpadding="4" cellspacing="1" border="0">
	<tbody><tr>
		<td class="thead">Поиск в теме<a name="goto_threadsearch"></a></td>
	</tr>
	<tr>
		<td class="vbmenu_option" title="nohilite">
			<input type="hidden" name="s" value="">
			<input type="hidden" name="securitytoken" value="1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e">
			<input type="hidden" name="do" value="process">
			<input type="hidden" name="searchthreadid" value="1787565">
			<input type="text" class="bginput" name="query" size="25"><input type="submit" class="button" value="Вперёд"><br>
		</td>
	</tr>
	<tr>
		<td class="vbmenu_option"><a href="https://www.cyberforum.ru/search.php?searchthreadid=1787565">Расширенный поиск</a></td>
	</tr>
	</tbody></table>
</form>
</div>



<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr valign="bottom">
	<td width="100%" valign="top">
		
	</td>
	<td class="smallfont" align="right">
		
	</td>
</tr>
</tbody></table>


		</div>
	</div>
</div>

<div style="margin: 5px 3px 0px 3px">
<form action="https://www.cyberforum.ru/index.php" method="get" style="clear:left">
<table cellpadding="5" cellspacing="0" border="0" class="tborder" align="center" style="width: 100%;">
<tbody><tr>
	
	
		<td class="tfoot">
			<span class="smallfont">КиберФорум - форум программистов, компьютерный форум, программирование</span>
		</td>
	<td class="tfoot" align="right" colspan="2">
		<div class="smallfont">
			<strong>
				<a href="https://www.cyberforum.ru/donate.php">Поддержать</a> -
				
					<a rel="help" href="https://www.cyberforum.ru/faq.php" accesskey="5">Справка</a> - 
				
				<a href="https://www.cyberforum.ru/advert.php">Реклама</a> -
				
				
				
				
				
				
				
				<a href="https://www.cyberforum.ru/sendmessage.php" accesskey="9">Обратная связь</a>
			</strong>
		</div>
	</td>
</tr>
</tbody></table>
<table cellpadding="5" cellspacing="0" border="0" class="tborder" align="center" style="width: 100%;">
<tbody><tr class="alt1" align="right">
	<td align="left" class="smallfont">
		Powered by vBulletin<br>Copyright ©2000 - 2024, CyberForum.ru
	</td>
	<td align="right">
<img id="licnt3981" width="88" height="31" style="border:0" title="LiveInternet: number of pageviews for 24 hours, of visitors for 24 hours and for today is shown" src="./Создать класс Point - C# .NET 4_files/hit" alt=""><script>(function(d,s){d.getElementById("licnt3981").src=
"//counter.yadro.ru/hit?t12.2;r"+escape(d.referrer)+
((typeof(s)=="undefined")?"":";s"+s.width+"*"+s.height+"*"+
(s.colorDepth?s.colorDepth:s.pixelDepth))+";u"+escape(d.URL)+
";h"+escape(d.title.substring(0,150))+";"+Math.random()})
(document,screen)</script>


	</td>
</tr>
</tbody></table>
</form>





</div>

<script>
var krtsts = {
   "bburl": "https://www.cyberforum.ru"
};
</script>
<script async="" src="./Создать класс Point - C# .NET 4_files/addedit.js.загружено"></script>
<script async="" src="./Создать класс Point - C# .NET 4_files/bestanswer.js.загружено"></script>
<script>
      var krba_options = {
          img_is_answer: '//cyberstatic.net/images/buttons/is_answer.png',
          img_is_not_answer: '//cyberstatic.net/images/buttons/is_not_answer.png'
      },
      KRBA = new AJAX_KRBA(krba_options);
</script>

<link rel="stylesheet" type="text/css" href="./Создать класс Point - C# .NET 4_files/thumbs.css">
<script>
var krthumbs = {
  confirm_delete_pos: 'Вы действительно хотите удалить все положительные оценки?',
  confirm_delete_neg: 'Вы действительно хотите удалить все отрицательные оценки?'
}
</script>
<script async="" src="./Создать класс Point - C# .NET 4_files/thumbsup.js.загружено"></script>

<script>
var krtsts = new krtsts_ctrl();
</script>

<style type="text/css">
	span.sortarrow {position:absolute;}
	span.sortarrow img {border:0;}
	a.sortheader {text-decoration:none; display:block; width:100%;}
</style>

<script async="" src="./Создать класс Point - C# .NET 4_files/vbulletin_autosave.js.загружено"></script>
<script async="" src="./Создать класс Point - C# .NET 4_files/CtrlPagenav.js.загружено"></script>
<script async="" src="./Создать класс Point - C# .NET 4_files/spoiler.js.загружено"></script>
<script async="" src="./Создать класс Point - C# .NET 4_files/topbutton.js.загружено"></script>
<script async="" src="./Создать класс Point - C# .NET 4_files/sorttable.js.загружено"></script>

<script async="" src="./Создать класс Point - C# .NET 4_files/selectcode.js.загружено"></script>


<script async="" src="./Создать класс Point - C# .NET 4_files/js"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-9SNPZSB2SN');
</script>

<script type="text/javascript"> (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)}) (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym"); ym(50312308, "init", { clickmap:true, trackLinks:true, accurateTrackBounce:true }); </script> <noscript><div><img src="https://mc.yandex.ru/watch/50312308" style="position:absolute; left:-9999px;" alt="" /></div></noscript>


<form action="https://www.cyberforum.ru/profile.php?do=dst" method="post" name="dstform">
	<input type="hidden" name="s" value="">
	<input type="hidden" name="securitytoken" value="1718262011-2abee8bde82d72cde72315fe6196aa1334c0e32e">
	<input type="hidden" name="do" value="dst">
</form>
<script async="">
<!--
	var tzOffset = 3 + 0;
	var utcOffset = new Date().getTimezoneOffset() / 60;
	if (Math.abs(tzOffset + utcOffset) == 1)
	{	// Dst offset is 1 so its changed
		document.forms.dstform.submit();
	}
//-->
</script>

<script async="">
<!--
	// Main vBulletin Javascript Initialization
	vBulletin_init();
//-->
</script>

<div id="top-link" style="padding-bottom: 909px; display: block; width: 25px; opacity: 0.6;">
	<span id="topicon" title="Наверх"></span><span id="toptext">Наверх</span>
</div>

<script async="" src="./Создать класс Point - C# .NET 4_files/share.js.загружено"></script>
</div>


<script type="text/javascript">
//<![CDATA[

window.orig_onload = window.onload;
window.onload = function() {
var cpost=document.location.hash.substring(1);var cpost2='';if(cpost){ var ispost=cpost.substring(0,4)=='post';
					if(ispost)cpost2='post_'+cpost.substring(4);if((cobj = fetch_object(cpost))||(cobj = fetch_object(cpost2))){cobj.scrollIntoView(true);}
					else if(ispost){cpostno = cpost.substring(4,cpost.length);if(parseInt(cpostno)>0){location.replace('https://www.cyberforum.ru/showthread.php?p='+cpostno);};} }

if(typeof window.orig_onload == "function") window.orig_onload();
}

//]]>
</script>

<table cellspacing="0" cellpadding="0" role="presentation" class="gstl_50 gssb_c" style="width: 2px; display: none; top: 3px; left: -1px; position: absolute;"><tbody><tr><td class="gssb_f"></td><td class="gssb_e" style="width: 100%;"></td></tr></tbody></table></body></html>