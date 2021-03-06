<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html><head id="ctl00_Head1">
  <title>调查问卷</title>
  <meta content="text/html; charset=utf-8" http-equiv="content-type">
  <link id="ctl01_cssdefault" rel="stylesheet" type="text/css"
    href="css/buttons.css" />


<script type="text/javascript"
    src="http://static.runoob.com/assets/qrcode/qrcode.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
        var qrcode = new QRCode(document.getElementById("qrcode"), {
        text: "http://127.0.0.1:8080${pageContext.request.contextPath}/questionnaire?qid="+${qid},
            width : 100,
            height : 100
        });
        qrcode.makeCode();
    });
    
</script>

  <style rel="stylesheet" type="text/css">

      /*============================默认样式：直接定义元素的样式=======================================*/
body
{
 text-align: center;
 font-weight:normal;
 background:#ffffff;
margin: 0;
padding: 0;
color: #6a6a6a;
font-family: "微软雅黑","Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
font-size:12px;
}
h1
{
 font-size:12px;
    font-weight: normal;
}
h2
{
 font-size:12px;
 display:inline;
 margin:0;
}
h3
{
 font-size:12px;
 display:inline;
 font-weight:normal;
 padding:0;
 margin:0;
 color:#444;
}
dl,dt,dd,ul,li,ol,p,form,img {
	padding: 0px;
	margin: 0px;
	list-style: none;
	border: none;
}
textarea
{
 font-size:12px;
}
a,a:link,a:active
{
 color:#075DB3;
 text-decoration: none;
}
a:hover
{
 color:#f90;
}
a img
{
 border:0;
}

/*========================================公共样式===============================================*/
/*用于订阅图标*/
#rss img{margin-bottom: 5px; border:0;}

.btnBlueBg
{
    padding:5px 9px;font-weight: bold;
    background-image: url(http://image.sojump.com/images/mysojump/questionnairemng/design/com_button.gif);
    width: 56px;cursor: pointer;color: #ffffff!important;background-repeat: repeat-x;height: 26px; line-height:28px;
}

input.finish
{
     display:inline-block;height:26px; line-height:26px; border:0;cursor:pointer;background:#f17819;font-size:15px;color:#fff;
    border-radius:5px; padding: 0 15px;
    overflow:visible;
}
.divline
{
color:#2a85bf;
font-size:14px;
font-weight:bold;
margin-bottom:6px; padding-bottom:4px; border-bottom:1px #adb2b4 dashed;  margin-top:20px;
}
.divclear{clear: both;height:0px; line-height:0px; font-size:1px;}
.wls
{
 float:left; margin-left:6px; margin-top:38px; font-size: 12px; color: #333; font-weight: normal;
}
.hul li
{
  float:left;
}
.qset li{ float:left; margin-left:10px; margin-top:10px; }
.beijiimg{width:100px; height:75px;cursor:hand;}
/*水平线：高5像素，淡紫色*/
.wf{color:#ffffff!important; padding:0;}
.linehr
{
    color:#ccddff;/*#;*/
 background:#ccddff;
 height:5px;
 padding:0;
 margin-bottom:0;
 margin-top:0;
 border:0;
}
.linediv
{
    background:#ccddff;
 height:5px;
 line-height:0px;
 padding:0;
 margin-bottom:0;
 margin:3px 0; width:100%;
 font-size:0px;
 clear:both;
 }
/*水平线：高1像素，淡紫色*/
.listhr
{
    height:1px;
    border:0;
    background:#ccddff;
    color:#ccddff;
}
/*16像素，加粗，蓝绿。一般用于标题*/
.bluefont-16px
{
 font-size: 16px;
 font-weight: bold;
 color: #00a6e6;
}
/*灰度666，默认字体，不加下划线；HOVER橙色加下划线*/
a.link-666:link,a.link-666:visited
{
 color: #666666;
 text-decoration: none;
}
a.link-666:hover
{
 color: #F90;
}

a.link-U666:link,a.link-U666:visited
{
 color: #666666;
 text-decoration: underline;
}
a.link-U666:hover
{
 color: #F90;
}


/*灰度666，14像素，字体加粗，不加下划线；HOVER橙色加下划线*/
a.link-b666,a.link-b666:visited
{
 color:#656565;
 text-decoration: none;
 font-size: 14px;
 font-weight: bold;

}
a.link-b666:hover
{
 color: #F90;
 text-decoration:underline;
}

/*灰度999，默认字体，不加下划线；HOVER橙色加下划线*/
a.link-999:link,a.link-999:visited
{
 color: #999;
 text-decoration: none;
}
a.link-999:hover
{
 color: #F90;
 text-decoration:none ;
}

/*蓝绿色，默认字体，不加下划线；HOVER橙色加下划线*/
a.link-00a6e6:link,a.link-00a6e6:visited,a.link-00a6e6:active
{
 color: #00a6e6;
 text-decoration: none;

}
a.link-00a6e6:hover
{
 color: #F90;
 text-decoration:none ;
}
/*亮浅蓝色，不带下划线*/
a.link-06f:link,a.link-06f:visited,a.link-06f:active
{
 color: #05398c;
 text-decoration: none;
}
a.link-06f:hover
{
 color: #ff6600;
 text-decoration: none;
}
/*橙色，不带下划线*/
a.link-f60:link,a.link-f60:visited,a.link-f60:active
{
 color: #ff6600;
 text-decoration: none;
}
a.link-f60:hover
{
 color: #ff9900;
 text-decoration: none;
}
/*浅蓝色，默认字体，加下划线；HOVER橙色加下划线;*/
a.link-U00a6e6,a.link-U00a6e6:link,a.link-U00a6e6:visited
{
 color: #3D81EE;
 font-size:12px;
 text-decoration: underline;
}
a.link-U00a6e6:hover
{
 color: #F90;
 font-size:12px;
 text-decoration:underline ;
}


/*灰度333，默认字体，加下划线；HOVER橙色加下划线*/
a.link-U333,a.link-U333:link,a.link-U333:visited
{
 color: #333333;
 text-decoration: underline;
}
a.link-U333:hover
{
 color: #F90;
}
a.link-444,a.link-444:link,a.link-444:visited
{
 color: #444444;
 text-decoration: none;
}
a.link-444:hover
{
 color: #F90;
}
a.link-red:link,a.link-red:active,a.link-red:visited
{
    color:red;
    text-decoration: none;
}
a.link-red:hover
{
    text-decoration:underline;
}
/*灰度333，默认字体 ；HOVER橙色加下划线*/
a.link-333,a.link-333:link,a.link-333:visited
{
 color: #333333;
}
a.link-333:hover
{
 color: #ff9900;
}
/*浅黄色，默认字体，加下划线；HOVER浅蓝色加下划线*/
a.link-UF90:link,a.link-UF90:visited {
 color: #ff6600;
 text-decoration: underline;
 FONT-FAMILY: sans-serif,'宋体';

}
a.link-UF90:hover {
 color: #3D81EE;
 text-decoration:underline ;


}
/*白色字体*/
a.link-fff:link,a.link-fff:visited {
 color: #ffffff;
 text-decoration: underline;
 FONT-FAMILY: sans-serif,'宋体';

}
a.link-fff:hover {
 color: #ff9900;
 text-decoration: underline;
 FONT-FAMILY: sans-serif,'宋体'


}
/*浅灰色，*/
a.link-beef:link,a.link-beef:visited
{
 color:#eef;
}
a.link-beef:hover
{
 font-weight:bold;
}
/*橙色链接*/
a.link-UF30:link,a.link-UF30:visited {
 color: #ff5500;
 text-decoration: underline;
}
a.link-UF30:hover {
 color: #3D81EE;
 text-decoration:underline ;
}
/*浅蓝色字体*/
.list_link a,.list_link a:link,.list_link a:visited
{
 COLOR: #3d81ee
}

.blueb{color:#3155b6! important; font-weight:bold;}

input.operation {
background-image:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/button_normal_bg.gif);
background-repeat:repeat-x;
border:1px solid #A7B6C1;
height:22px;
margin:0 2px;
padding:2px;
/*width:110px;padding-top:3px;*/
}
.chengshefont{color:#ff6600;}
.divCom
{
padding:10px 0;  text-align: left; line-height: 18px; color: #333333;
}
/*橙色按钮样式*/
 a.btnbg
    {
        background: url("http://image.sojump.com/images/wjx/btn.png") no-repeat scroll right -388px transparent;
        display: inline-block;
        height: 22px;
        padding-right: 5px;
        text-decoration: none;
        vertical-align: middle;
    }
   a.btnbg span {
    background: url("http://image.sojump.com/images/wjx/btn.png") no-repeat scroll 0 -364px transparent;
    color: #FFFFFF;
    cursor: pointer;
    display: inline-block;
    font-size: 13px;
    height: 22px;
    line-height: 24px;
    overflow: hidden;
    padding: 0 10px 0 15px;
    text-align: center;
}
a.btnbg:hover{background: url("http://image.sojump.com/images/wjx/btn.png") no-repeat scroll right -439px transparent;}
   a.btnbg:hover span{background: url("http://image.sojump.com/images/wjx/btn.png") no-repeat scroll 0 -417px transparent;}
 a.sumitbutton,a.sumitbutton:visited
{
     background:#f17819;
     color:#ffffff !important;
      display: inline-block;
        height: 30px;
        line-height:30px;
        padding-right: 5px;
        text-decoration: none;
        vertical-align: middle;
          padding: 0 10px 0 15px;
    text-align: center;
     font-size: 16px;
      cursor:pointer;
      border-radius:5px;
}
a.sumitbutton:hover
{
    background:#fda420;color:#fff !important;
}
A.BS_btn {
    background:#2E76AC;
    border:0;
    border-radius: 6px;
     display:inline-block;
    height: 26px;
    line-height: 26px;
    text-align: center;
    text-decoration: none;
    padding:0 15px;
    color: #FFFFFF !important;
    font-size: 16px;
    text-align: center;
}
A.BS_btn:hover {
    background:#317CB4;
}
input.submitbutton
{
    display:inline-block;height:30px; line-height:30px; border:0;cursor:pointer;background:#f17819;font-size:16px;color:#fff;
    border-radius:5px; padding: 0 15px;
    overflow:visible;
}
input.submitbutton_hover
{
    background:#fda420;
}
 /*橙色按钮样式*/
 a.btnbgbig
    {
        background: url("http://image.sojump.com/images/wjx/btn.png") no-repeat scroll right -30px transparent;
        display: inline-block;
        height: 30px;
        padding-right: 5px;
        text-decoration: none;
        vertical-align: middle;
    }
   a.btnbgbig span {
    background: url("http://image.sojump.com/images/wjx/btn.png") no-repeat scroll 0 0 transparent;
    color: #FFFFFF;
    cursor: pointer;
    display: inline-block;
    font-size: 16px;
    font-weight:normal;
    height: 30px;
    line-height: 32px;
    overflow: hidden;
    padding: 0 10px 0 15px;
    text-align: center;
}
a.btnbgbig:hover{background: url("http://image.sojump.com/images/wjx/btn.png") no-repeat scroll right -98px transparent;}
   a.btnbgbig:hover span{background: url("http://image.sojump.com/images/wjx/btn.png") no-repeat scroll 0 -68px transparent;}

/*************列表样式，用于公开问卷页面，有奖调查页面等******************/
.divhead864{ width:864px; margin:0 auto;margin-top:15px;}
.iframecss{ overflow:auto; border:1px #ccddff solid;}
#post_list {
margin-top:0;
padding-right:0;
padding-top:15px;
}
  .post_item {
border-bottom:1px dotted #CCCCCC;
border-width:1px;
margin-bottom:15px;
padding-bottom:15px;
overflow:hidden;
width:540px;
}
.post_item_body {
line-height:150%;
margin-left:10px;
padding-top:1px;
}
#post_list h3 {
font-size:14px;
font-weight:bolder;
margin:0 0 5px;
}
#post_list .post_item_summary {
color:#444444;
font-size:12px;
line-height:20px;
margin-bottom:5px;
overflow:hidden;
padding-right:5px;
padding-top:5px;
}
a.titlelnk:link, a.titlelnk:active, a.titlelnk:visited {
color:#075DB3;
text-decoration:underline;
}
a.titlelnk:hover
{
  color:red;
}
/*14号字体灰度为444444*/
.font14px{color:#444444; font-size:14px;}
/*按钮样式*/
.buttons A,.buttons A:link,.buttons A:visited,.buttons A:active {
    background-color: #F5F5F5;
    border-color: #DEDEDE #BBBBBB #BFBFBF #DEDEDE;
    border-right: 1px solid #BBBBBB;
    border-style: solid;
    border-width: 1px;
    color: #529214;
    cursor: pointer;
    display: block;
    float: left;
    font-weight: bold;
    line-height: 130%;
    margin: 0 0.7em 0 0;
    padding: 5px 10px 6px;
    text-decoration: none;
}
.buttons A:hover {
    background-color: #DFF4FF;
    border-color: #A7CEDF;
    border-right: 1px solid #A7CEDF;
    border-style: solid;
    border-width: 1px;
    text-decoration: underline;
}

.buttons A IMG {
    margin: 0 3px -3px 0;
}
/*白色字体加粗，14像素，文本居中*/
.s_help_biaoti { FONT-WEIGHT: bold; font-size:14px; COLOR: #ffffff; LINE-HEIGHT: 20px; TEXT-ALIGN: center}
/*用于所有Tab Control*/
.font-999{COLOR:#999999;}
.font-666{color:#666666;}
.font-18px{FONT-SIZE:16px}
.txtleft{ text-align:left;}
.B{FONT-WEIGHT: bold}
.bg{ background:#f2ffff;}
/*亮浅蓝色字体*/
.font {COLOR: #00a6e6}
/*浅蓝色字体*/
.font-3d81ee{color:#3d81ee;}
/*亮蓝色字体*/
.font-06f{color:#0066ff;}
/*浅灰色字体*/
.font-a0{color:#a0a0a0;}
/*红色字体*/
.font-red{color:Red;}
/*灰度为666字体,加粗*/
.biaoti
{
 color: #555;
 font-weight:bold;
}
/*用于价格表：白色的13像素字体*/
.edited
{
 font-size: 14px;
 color: #ffffff;
 text-decoration: none;
}
/*用于价格表：白色的加粗13像素*/
.table_big_text {
 font-size: 13px;
 font-weight: bold;
 color: #FFFFFF;
 line-height: 18px;
}
/*用于价格表：灰度为333的13像素字体*/
.s_remark_h
{
 font-size: 13px;
 line-height: 20px;
 color: #333333;
}
/*蓝色14px*/
.bluefont-14px{font-size:18px; color:green; font-weight:bold; vertical-align:top; line-height:30px;}
/*用于成功案例：黑色为f60的14像素字体*/
.font_f60_14px
{
 font-size: 14px; color:#444; font-weight:bold;
}

/*绿色字体*/
.greenfont{ color:Green;}
/*修改用户信息*/
.biaotiUserInfo{font-size:12px; color:#0066ff;}

.note
{
 font-size: 12px;
 color: #666666;
 height: 20px;
}
/*用于成功案例：橙色为f60的16像素字体*/
.font_green_16px_line30px
{
 font-size: 16px; color:#f60; line-height:30px; font-weight:bold; float:left; margin-top:15px;
}
a.link_green,a.link_green:link,a.link_green:active,a.link_green:visited
{
 color:green;
 text-decoration: none;
}
a.link_green:hover
{
 color: #F90;
 text-decoration:none;
}
/*用于最新问卷，最热问卷等右边div的样式*/
.divRight
{
 background-repeat: repeat-x; background-image: url(http://image.sojump.com/images/wjx/jq/wjxx_bj.jpg); line-height:20px; clear:both;
 border:#dce4ed 1px solid; margin-top:20px; float:left; vertical-align:bottom;padding: 3px;
}
.biaoti2
{
 font-size: 14px;
 font-weight: bold;
 font-variant: small-caps;
 color: #760101;
}
.normallink6
{
 font-size: 12px;
 color: #0066ff;
 text-decoration: none;
}
/*==============================================按页面分的样式==========================================*/
/*用于控件ViewResult.ascx*/
b.rbottom,b.rtop{display:block; width: 850px; margin: 0px auto;background: #FFFFFF}
b.rbottom b,b.rtop b{display:block;height: 1px;overflow: hidden; background: #689bce}
b.r1{margin: 0 5px}
b.r2{margin: 0 3px}
b.r3{margin: 0 2px}
b.rbottom b.r4,b.rtop b.r4{margin: 0 1px;height: 1px}

/*****WJXVipNew.master页面的底部用********/

/*用于WjxPub.master母版页*/
/**问卷星LOGO的解释文字的样式首页的H1
 **/
.BgImgTouMing {
     text-align: left;
     padding:0;
    }
.BgImgBuTouMing {
     BACKGROUND-COLOR: #ffffff;margin:0;
    }
#container
{
 text-align: left;
 width: 920px;
 margin:20px auto 0;
 padding:0;
 background:#fff;
}
#headerpub
{
 WIDTH: 920px; COLOR: #333; POSITION: relative;
 height:65px;
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/WJX/JQ/bj.jpg);
 background-repeat: repeat-x;
}
#headerpub img
{
 float:left; margin-left:5px;
}
.navpub
{
 height:60px;
 float:right;
 padding-right:10px;
 width:552px;
}
.navpub span
{
 margin-left:10px;
}

.navpub ul
{
 float:left;
}
.navpub UL LI
{
 float: left;
 margin:0; padding:0;
 margin-left:10px;
}
.navpub UL LI A
{
 padding-left:19px;
 line-height:20px;
}
.navpub UL LI.DesignNewQ A,.navpub UL LI.wjxhelppub A,.navpub UL LI.exit A
{
 padding:3px 0 6px 2px;border:0; background:none;
}
.headerwraper
{
    width: 100%; background:#e2eff7;
}
 #header{
  width:980px;
	height:122px;
	margin:0 auto;
	letter-spacing:1px;
	}
.sojump_logo{
	float: left;
	width: 161px;
	height:80px;
	margin:30px 0px 0px 70px;
	}
.sojump_image{
    background-image: url('http://www.sojump.com/images/indexnew/sojumplogo.png') !important;
    _filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="/images/indexnew/sojumplogo.png");
    background-repeat:  no-repeat;
    _background-image: none; /* IE6 */
    width: 161px;
    height: 80px;
    text-align: left;
    position:relative;
	}
.sojump_image h1
{
    display: inline; font-size: 12px; letter-spacing:1.3px;padding: 0; margin: 0;color:#333; position:absolute; top:70px;_top:65px;
}

.Header_r {
	float:right;
	width:645px;
	overflow:hidden;
	height:112px;
	padding:10px 0px 0px 0px;
	}
.header_reg {
	float: right;
	height: 28px;
	margin:20px auto 0;
	text-align:right;
	padding-right:22px;
	}
.header_reg ul {
	margin: auto;
	padding: 0;
	}
.header_reg ul li {
	display:inline;
	padding: 0 ;
	height:26px;
	line-height:26px;
	float:left;
	margin-right:12px;
	}
input,button{
	font-family: "微软雅黑","Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	font-size:12px;
	}
.header_input {
	background:url(http://www.sojump.com/images/indexnew/Search-Box.gif) no-repeat;
	width: 144px;
	height: 26px;
	border: 0;
	outline: none;
	line-height: 26px;
	padding-left: 8px;
	}
.header_go {
	background:url(http://www.sojump.com/images/indexnew/wjx_mag.gif) no-repeat;
	display: block;
	width: 19px;
	height: 19px;
	position: absolute;
	top:4px;
	left:127px;
	cursor: pointer;
	}
.header_btn {
    -webkit-border-radius:6;
    -moz-border-radius:6;
    border-radius:6px;
    color: #ffffff;
    background: #e77817;
    text-decoration: none;
	font-size: 12px;
	padding:3px 10px;
	margin-left: 8px;
	}
a.new_titxt{
	color:#555;
	font-size:12px;
	}
a.new_titxt:hover{
	color:#ff9900;
	}
/*导航*/
#NMenu{
	width:580px;
	margin:38px auto 0px;
	padding:0px;
	float: right;
	}
#NMenu ul {
	margin:0;
	padding:0;
	}
#NMenu ul li {
	display: inline;
	float: left;
	padding: 0px;
	cursor: pointer;
	position:relative;
	 width:115px; text-align:center;
	border-right:1px solid #d8d8d8;
	}
a.indexnav,a.indexnav:visited{
	font-size:18px;
	color:#6a6a6a;
	}
a.indexnav:hover{
	color:#e77817;
	}
#NMenu ul li.acitve i
{
    background:url(http://www.sojump.com/images/indexnew/Nmenu-ico.gif) no-repeat;
    width:9px;
	height:9px;
	position:absolute;
	display:inline-block;
	padding:0px 4px;
	top:8px;
	left:6px;

}
#NMenu ul li.acitve a{
	color:#e77817;
	}
#NBanner{
	width:100%;
	margin:0;
	}

#footer {
	background:#e6e5e5;
	margin:0 auto;
	overflow: hidden;
	position: relative;
	width: 100%;
	min-width:980px;
	height:200px;
	}
#contact{
	width:900px;
	margin:30px auto;
	overflow: auto;
	padding:0 !important;
	}
.ulCons {
	float:left;
	overflow:hidden;
	padding:0;
	width:265px;
	}
.ulCons li {
	width:125px;
	line-height:22px;
	text-align:left;
	text-indent:2.6em;
	}
.ulCons li b
	{
    font-size:16px;
	}
.coypright{
	width:980px;
	margin:0px auto 10px;
	padding:2px 0px 5px;
	overflow:hidden;
	border-bottom: 2px solid #ccc;
	height:52px;
	}
.alCons {
    float: left;
    padding:0 0 0 9px;
	margin:5px 0 0 0;
}
.alCons li {
    line-height:15px;
	color:#999;
	margin:0px;
	padding:0px;
	text-align:left;
}
.alCons_img{
	margin:0px;
	padding:0px;
	position:relative;
	_position:absolute;
	margin-bottom: -2px;
	border: 0px;
	}
.alcons_txt{
	float:right;
	margin:7px 0px 0px 0px;
	color:#666;
	font-family:Verdana, Geneva, sans-serif;
	filter:alpha(opacity=90);-moz-opacity:0.9;opacity:0.9;
	}
#footer a{
	font-size:14px;
	color:#7b7b7b;
	}
#footer a:hover{
	font-size:14px;
	color:#e77817;
	}
#ulLabel {
    height: 32px;
    line-height: 32px;
    margin: 0; padding:0;
}
#ulLabel li{ float:left;padding:0;padding-left:6px; }
a.a555{color:#555555!important;
 font-size:12px;
 text-decoration: none;}
a.a555:hover{text-decoration:underline; color:#ff9900!important;}

/*FAQ引用的样式*/
#divFAQ
{
    background: #ccedfc; border: solid #ccedfd 1px; padding-top:8px;
}
#divFAQ span
{
 font-weight: bold; color: #555; display:inline;padding-top:10px; line-height:26px;
}
#divFAQ ul
{
    margin-left: 15px; line-height: 20px;
}
#divFAQ ul li
{
 list-style-type:disc;
 margin-left:16px;
}
#divFAQ ul li a:link
{
    color: #666;text-decoration: none;
}
#divFAQ ul li a:visited
{
    color: #666;text-decoration: none;
}
#divFAQ ul li a:hover {
 color: #F90;text-decoration:none ;
}
.divTWen
{
 margin-bottom:5px; margin-top:5px; margin-left:80px;font-size: 12px; font-weight: bold;
}

/****************用于所有统计页面解决内容居中问题*********************/
  .menu-2{ width:850px; margin:0 auto;}

/*用于查看结果里面的各种图形显示样式a,a:link,a:active*/
.liSelect{border:1px #f9960a solid! important; background:#fffcdb! important;}
.divResultCss{ height: 24px; text-align: center; padding:0; padding-bottom:5px; color:#1f376d;}
.divResultCss ul li{border:1px #98b3e2 solid; margin-left:12px; line-height:24px; float:left; background:#eeeeee; }
.divResultCss ul li a{ text-decoration:none; padding:4px 4px 4px 22px; color:#1f376d; height:16px;}
.divResultCss ul li a:visited{ text-decoration:none; padding:4px 4px 4px 22px; color:#1f376d; height:16px;}
.divResultCss ul li a:hover{text-decoration:none; padding:4px 4px 4px 22px; color:#ff9900;}
.bingtu{BACKGROUND: url(http://image.sojump.com/images/wjx/viewstat/pie.gif)  no-repeat 4px 1px;}
.zhutu{BACKGROUND: url(http://image.sojump.com/images/wjx/viewstat/column3d.gif)  no-repeat 4px 1px;}
.tiao{BACKGROUND: url(http://image.sojump.com/images/wjx/viewstat/bar2d.gif)  no-repeat 4px 1px;}
.zhexian{BACKGROUND: url(http://image.sojump.com/images/wjx/viewstat/line.gif)  no-repeat 4px 1px;}
.leida{BACKGROUND: url(http://image.sojump.com/images/wjx/viewstat/leidatu.gif)  no-repeat 2px 1px;}
.biaoge{BACKGROUND: url(http://image.sojump.com/images/Mysojump/QuestionnaireMng/Design/juzhenti.gif)  no-repeat 4px 1px;}


/*用于选择模版页面*/
.smenu-1 LI
{
 DISPLAY: block; FLOAT: left; WIDTH: 117px; CURSOR: pointer; LINE-HEIGHT: 28px! important; PADDING-TOP: 0;
 HEIGHT: 28px! important;
 TEXT-ALIGN: center
}
.smenu-1
{
    BORDER-RIGHT: #dce4ed 1px solid; FLOAT: left; HEIGHT: 28px; padding: 0; margin: 0
}
.smenu-2
{
 BORDER-RIGHT: #dce4ed 1px solid; FLOAT: left; BORDER-LEFT: #dce4ed 1px solid; WIDTH: 833px;
 PADDING: 0; margin: 0; BORDER-BOTTOM: #dce4ed 1px solid; HEIGHT: 360px
}


/*=============================================填写问卷，设计问卷页面=============================================*/
.spanLeft
{
     float:left;
}
.spanRight
{
    float:right;
}

 .inputtext
{
    border:solid 1px #7F9DB9;
}
 .underline
{
    background-color: transparent;
    border:0;
    border-bottom:solid 1px #7F9DB9;
}


/*======================================设计问卷里面用的样式===================================*/
/*用于设计问卷页面的样式*/
#content
{
 height:auto;
}
/*
用于问卷说明的样式
*/
.QDes
{
 line-height:20px;
 color:#555;
 padding:0 10px;
 text-align:left;
}
/*
***********保存链接的样式*********
*/

#saveLink  a:link {color:blue;}
#saveLink  a:hover{color:#f53d05;}
#abort a:link {color:red;}
#abort a:visited {color:red;}
  /*
***********问卷标题的样式*********
*/
.main_title{
font-size:20px;
font-weight:bold;
width:540px;
padding:10px 0;
text-align:center;
}
 /*
***********预览和填写时每页最下面的公司信息*********
*/
.register_div{
width:150px;
padding-right:5px;
float:right;
}

 /*
*********** 预览按钮样式*********
*/
.btn_div_preview{
margin-top:10px;
margin-bottom:5px;
margin-left:340px;

}
 /*
*********** 填写按钮样式*********
*/
.btn_div_input{
margin-top:10px;
margin-bottom:5px;
margin-left:420px;

}
/******用问卷星使用流程*****/
.divNoPub ul li{float:left; vertical-align:middle;height:102px; width:212px; color:#666666;}
.publish-step  {
    margin:0;padding:10px 10px 0 18px;line-height:20px;background:url("http://image.sojump.com/images/wjx/nbg-launch-5.gif") no-repeat;height:97px;cursor:pointer;
}
.divNoPub .helper-caption{width:176px; }
.divNoPub .helper-caption span{color:#444444;font-weight:bold; font-size:13px;}
.divNoPub ul li a{color:#444444!important;}

/***只用于首页*****/
.downMenu ul{padding:0; margin:0;}
.downMenu ul LI{ margin-top:0;}
.downMenu ul LI A
{
	padding-bottom:0; padding-top:7px; margin: 0; cursor: pointer; background: #e8ecf2; color:#205fa2! important;
	text-decoration: none;  display:  inline-block; height:22px;width:80px;
    border: 1px #c2d3ed solid;border-top:none;
}
.downMenu ul LI A:hover
{
	font-weight:normal;background:#fffeff;color:#205fa2;
	background:#fffeff url(http://image.sojump.com/images/wjx/index/catch.gif) no-repeat 96% 18%;
}

.linediv {
    background: none repeat scroll 0 0 #b7b7b9;
    clear: both;
    font-size: 0;
    height: 2px;
    line-height: 0;
    margin: 3px 0;
    padding: 0;
    width: 100%;
}

.indexbanner {
	height:365px;
	width: 100%;
	min-width:980px;
	background:url(http://image.sojump.com/images/indexnew/indexbg.jpg) no-repeat center;
	background-size: cover;
	}
.indexbox{
	width:645px;
	padding:75px 0px 0px 335px;
	margin:0 auto;
	}
.nweixin
{
    position:absolute; margin:-27px 0px 0px -105px;
}
.nweixin a
{
    background:url(http://www.sojump.com/images/indexnew/nweixin.png) no-repeat;
    _background:none;
    _filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://www.sojump.com/images/indexnew/nweixin.png");
    display:inline-block;
    width:45px;
    height:36px;
    cursor:pointer;
}
.Slogan{
	background:url(http://image.sojump.com/images/indexnew/wjx_Slogan.png) no-repeat;
	_background:none;
    _filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://image.sojump.com/images/indexnew/wjx_Slogan.png");
	width:574px;
	height:40px;
	margin-bottom:60px;
	}
.NC-Complex {
	margin:0 auto;
	overflow:hidden;
	height:59px;
	}
.NC-Complex div {
	float: left;
	margin-right: 35px;
	display: inline;
	}
A.NC-button {
	display: block;
	margin: 0 auto;
	-webkit-border-radius:10;
	-moz-border-radius: 10;
	border-radius:10px;
	background: #e77817;
	padding:13px 32px;
	border: 0;
	text-align: center;
	color:#fff !important;
	font-size:24px;
	text-decoration: none;
	letter-spacing:1px;
	}
A.NC-button:hover{
	background:#dc7012;
	}
.NC-video {
	display: block;
	width: 60px;
	height: 59px;
	background:url(http://www.sojump.com/images/indexnew/wjx_video.png) no-repeat;
	_background:none;
    _filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://www.sojump.com/images/indexnew/wjx_video.png");
	}
.NC-video:hover{
	background:url(http://www.sojump.com/images/indexnew/wjx_video-h.png) no-repeat;
	_background:none;
    _filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://www.sojump.com/images/indexnew/wjx_video-h.png");
	}
.Newdate{
	width:515px;
	height:27px;
	line-height:27px;
	color:#FFF;
	font-size:14px;
	letter-spacing:1px;
	margin-top:20px;
	padding-left:28px;
	clear:both;
	}
.Ndate-num{
	font-size:24px;
	}
.menuwrapper
{
    position:relative;
    margin-top:39px;
}
.MenuList{
	 background:#7bc4a0;
	min-width:980px;
	height:45px;
	filter:alpha(opacity=70);
	opacity:0.5;
	position:absolute;
	width:100%;
	}
.ML-box{
	width:980px;
	padding:0;
	height:45px;
	color:#fff;
	overflow:hidden;
	position:absolute;
	top:0;
	margin:0 0 0 -490px;
	left:50%;
	}
.ML-box li{
	display: inline;
	float: left;
	text-align:center;
	padding: 0px;
	line-height:45px;
	cursor: pointer;
	width:194px;
	border-left:1px solid #3c746b;
	}
a.indexcase,a.indexcase:visited{
	color:#FFF;
	font-size:16px;
	}
a.indexcase:hover{
	color:#ffff00;
	}
.NCC{
	width:980px;
	overflow:hidden;
	margin:0 auto;
	}
.NewBox{
	width:980px;
	margin:55px auto;
	overflow:hidden;
	}
.NBcon{
	background:url(http://www.sojump.com/images/indexnew/n-box-bg1.gif) no-repeat;
	width:470px;
	height:175px;
	float:left;
	padding:15px 0px;
	}
.NBcon_TT{
	width:430px;
	height:30px;
	margin:0 auto;
	line-height:30px;
	border-bottom:1px dashed #adb2b4
	}
.NBcon-ltxt{
	color:#2a85bf;
	width:75px;
	float:left;
	font-size:18px;
	}
.NBcon-rtxt{
	font-size:14px;
	float:right;
	width:130px;
	}
.NBcon-B{
	width:430px;
	overflow:hidden;
	margin:15px auto 0;
	}
.NBcon-CC h4{
	font-size:13px;
	font-weight:normal;
	padding:0; margin:0;
	padding-bottom:4px;
	}
.NBcon-pic{
	float:left;
	}
.NBcon-CC{
	float:left;
	width:315px;
	margin-left:22px;
	line-height:21px;
	font-size:13px;
	}
.NBcon-more{
	float:right;
	margin:15px 0px 0px 0px;
	}
.NB-button{
	border: 0;
	border-radius: 2px;
	display: inline-block;
	text-align: center;
	text-decoration: none;
	padding:2px 9px;
	color: #FFFFFF !important;
	text-align: center;
	}
.qpservice
{
   font-size:14px;height:22px;line-height:22px;display:inline-block;vertical-align:middle; margin-right:10px;
}
.qpservice *
{
    vertical-align:middle;
}
A.Nbtn{
	background:#75c5f0;
	font-size:12px !important;
	}
A.Nbtn2{
	font-size:12px !important;
	background:#7bc4a0;
	}
.NBcon2{
	background:url(http://www.sojump.com/images/indexnew/n-box-bg2.gif) no-repeat;
	width:470px;
	height:175px;
	padding:15px 0px;
	float:right;
	}
.NClient{
	width:980px;
	margin:0 auto;
	overflow: hidden;
	line-height:30px;
	font-size: 16px;
	text-align:center;
	}
.client_change{
	width:980px;
	margin:0 auto;
	position:relative;
	height:95px;
	text-align:left;
	}

.client_change li{
	margin:0 auto;
	width:899px;
	padding:25px 40px 15px;
	height:44px;
	position:absolute;
	overflow:hidden;
	_zoom:1;
	z-index:0;
	top:0;
	left:0px;
	opacity:0;
	filter:alpha(opacity=0);
	display:none\9;
	-moz-transition:opacity 1s ease;
	-webkit-transition:opacity 1s ease;
 }

.client_change .client_hide{
	opacity:0;
	filter:alpha(opacity=0);
	display:none\9;
	}
.client_change .client_show{
	opacity:1;
	filter:alpha(opacity=100);
	display:block\9;
	}
#clientarrow{
	position:absolute;
	z-index:99;
	top:0;
	left:0;
	width:100%;
	height:100%;
	}
.client_arrow{
	width:50%;
	height:100%;
	display:block;
	float:left;
	cursor:pointer;
	outline:none;
}
.client_arrow span{
	display:block;
	width:17px;
	height:52px;
	background:url(http://www.sojump.com/images/indexnew/Nclient_intro.gif) no-repeat;
	text-indent:-9999px;
	margin-top:25px;
	}
#page_front span{
	}
#page_next span{
	float:right;
	background-position:0 -52px;
	}

/*首页改版后的样式*/
.greenfont-14px{color: Green; font-size:14px; }

.liline{clear: both; margin:0; padding:0; line-height:0; height:10px; border-bottom: 1px solid #efefef;}
 #ulfaq li a:hover {
color: #F90;
}
#ulfaq li a {
color: #444;
}
.dianfont
{
-webkit-text-size-adjust: none;
font-size:8px;
height:1px;
line-height:16px;
padding:0 3px 0 0;
display:inline;
}
/*首页三角形样式*/
.bordCss
{
    height:0;
    width:0;
    overflow: hidden;
    font-size: 0;
    line-height: 0;
    border-color:transparent transparent transparent #FF9900 ;
    border-style:dashed dashed dashed solid ;
    border-width:5px;
    border-right-width:0;
    display:inline-block;
    margin:2px 2px 0 0 ;
}
.bordCssGreen
{
    border-color:transparent transparent transparent #26850d ;
    margin:2px 3px 0 0 ;
}
.bordBottomCss
{
    border-color: #FF9900 transparent transparent transparent;
    border-style:solid dashed dashed dashed ;
    border-width:5px;
    border-bottom-width:0;
    margin:0;
}
.bordBottomCssN
{

    border-style:solid dashed dashed dashed ;
    border-color:#333333 transparent transparent transparent ;
    border-width:3px;
    border-bottom-width:0;
    margin:0 0 4px 2px;
}
.bordBottomCssNF
{
    border-style:solid dashed dashed dashed ;
    border-color:#ffffff transparent transparent transparent ;
    border-width:3px;
    border-bottom-width:0;
    margin:0 0 4px 2px;
}
.spanLeftTxt{ display:inline-block; line-height:24px;cursor:pointer;}


/*用于jq页面分享问卷图标样式*/
.freejqbg{
    background-image:url("http://image.sojump.com/images/wjx/JoinQuestionnaire/freejqbg.gif");
    background-repeat:no-repeat;
    display: inline-block;
    overflow:hidden;
}
.copyqbg{
    background-position:-20px 0px;
    height:16px;
    width:16px;
    margin-right:5px;
}
.jiangbg{
    background-position:-40px 0px;
    height:16px;
    width:16px;
    margin-right:5px;
 }
.searchbg
{
    background-position:-60px 0px;
    height:15px;
    width:13px;
    margin-right:5px;
}
.cepingbg{
    background-position:-77px 2px;
    height:16px;
    width:16px;
    margin-right:5px;
 }
.designQbg
{
    background-position:-95px 0px;
    height:16px;
    width:16px;
}
.wjxhelpbg
{
    background-position:-115px 0px;
    height:16px;
    width:16px;
}
.search{
background: url(http://image.sojump.com/images/wjx/search.gif) no-repeat;
 height:16px;}
 .copyq
 {
     background: url(http://image.sojump.com/images/Master_Images/WjxVip/copy.gif) no-repeat;
 height:16px;
 }

.jiang{
 background:url(http://image.sojump.com/images/wjx/liwu.gif) no-repeat;
 height:16px;}
.ceping{
 background: url(http://image.sojump.com/images/wjx/ceping.png) no-repeat;
 height:16px;}
.designQ
{
 background: url(http://image.sojump.com/images/Master_Images/WjxVip/DesignNewQ.gif) no-repeat;
 width:16px;
 height:16px;
}
.wjxhelp
{
 background:url(http://image.sojump.com/images/Master_Images/WjxVip/wjxhelp.gif) no-repeat;
}
.yangben{
 background: url(http://image.sojump.com/images/wjx/yangben.gif) no-repeat;
 height:16px;}
.address
{
 background: url(http://image.sojump.com/images/Master_Images/WjxVip/group.gif) no-repeat;
 height:16px;
}

/*******我的问卷页面的“暂停”、“编辑”等使用样式*******/
#stuff ul
{
 FLOAT: left; MARGIN: 1px 0 1px 5px; WIDTH: auto
}
#stuff li
{
 CLEAR: none; PADDING-RIGHT: 0; PADDING-LEFT: 0; FLOAT: left; PADDING-BOTTOM: 0; PADDING-TOP: 0
}
#stuff li a,#sutff li a:active
{
   background-position: 7px 3px; border:1px solid #f5f5f5;
 display: inline-block;  margin: 2px 0;
 cursor: pointer; color:#454545; line-height: 22px; background-repeat: no-repeat;
 text-decoration: none;  padding:0 6px 0 27px;
}
#stuff LI A:hover,#stuff li a.hover
{
  color: #336699; background-color: #dff4ff;border:1px solid #c2e1ef;
}
.publish
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/publish.gif)
}
.copy
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/copy.gif)
}
.delete
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/cross.gif)
}
.pause
{
    BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/stop.gif)
}
.run
{
    BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/run.gif)
}
.invite
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/invite_ico.gif)
}
.emed
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/emed.gif)
}
.entries
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/application_view_list.gif)
}
.report
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/chart_bar.gif)
}
.source
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/arealMay.gif)
}
.jcfx
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/jcfx.gif)
}
.view
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/application_form.gif)
}
.edit
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/application_form_edit.gif)
}
.manage{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/manageQ.gif)}
.upload
{
    BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/uploadpic.gif)
}

.review
{
    BACKGROUND-IMAGE:url(http://www.sojump.com/App_Themes/Blue/Images/LeaveMessage/Outbox.gif)
}
.folder
{
    BACKGROUND-IMAGE:url("http://www.sojump.com/images/master_images/file_ico.gif")
}
.complete
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/complete.gif)
}
.password
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/key.gif)
}
.tag
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/tag.gif)
}
.key
{
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/Master_Images/WjxVip/buy.gif)
}
/***************Flash设置样式******************/
#divFlashSet
{
 border: 2px; border-color: #999; border-style: solid; float:left; background: #eeefff;
 font-size: 12px; width: 240px; line-height: 16px; padding:10px;margin-top:300px;
}
/**********下载答卷页面引用样式************/
.text2
{
 font-size: 12px;
 color: #333;
 line-height: 18px;
}
.tableCellPadding
{
 padding-right: 15px;
 padding-left: 0;
 padding-bottom: 1px;
 padding-top: 1px;
 white-space:nowrap;
 text-align:left;
}
.text
{
 COLOR: #444;
 font-size:12px;
 LINE-HEIGHT: 20px;
}



/*用于页面布局*/
#main
{
 PADDING-RIGHT: 0; PADDING-LEFT: 0; PADDING-BOTTOM: 20px; MARGIN: 0 0 0 20px; PADDING-TOP: 20px
}


#rbbox
{
    position:absolute;right:0;bottom:0; font-size: 12px; Z-INDEX:999999;
    overflow:hidden;
}
.messagetck {
width: 279px;
background: #5a9e00;
border: 1px solid #CFE19F;
padding: 5px;
}
.message_content {
background: white;
border: 1px solid white;
padding: 10px 15px 10px 15px;
}
.message_h1_span1 {
float: left;
font-weight: bold;
font-size: 14px;
color: #333;
height:23px;
line-height:23px;
}
.message_h1_span2 {
float: right;
}
.message_text {
padding: 0px 0px 0px 10px;
text-align: left;
}
.divContent
{
      font-size: 12px;  padding:3px;  width:220px;line-height:18px;
    color: #1f336b;
}

/*用于查看结果里面的表格样式*/

.tableResult
{
 border-bottom:2px solid #999999;
 border-top:1px solid #999999;
 border-left:1px solid #999999;
 border-right:2px solid #999999;
}
.tableResult  td
{
     border-right:1px solid #999999;
 border-bottom:1px solid #999999;
}

/*设置属性页面：得分设置引用的样式*/
.trCss
{
 background:#eee;
 height:20px;
 font-weight:bold;
 text-align:center;
}
.divContentscore
{
 background:#eff6fb;
 color:#444;
 width:474px;
 border:0;
 padding:10px;
}
/*用于更多成功案例页面*/
#divMMU li{width:760px; margin-top:8px;}
.liLeft{ margin-right:15px;  background:#eff7ff; padding:5px 0;}
.spanDate{padding-left:15px; font-weight:bold;}

/*用于专业版模版页面*/
.divQ{ margin-left:4px; width:212px; margin-bottom:10px;height:560px;vertical-align:middle;  overflow:auto; white-space: nowrap;}
.MenuBox .titBox a,
.MenuBox .titBox a:visited,
.MenuBox2 .titBox a,
.MenuBox2 .titBox a:visited {padding-left:20px;color:#003;font-size:12px;display:block;}
.MenuBox .titBox span a {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/ico_folder_open.gif) no-repeat 0 40%;}
.MenuBox .titBox span.Fst a {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/ico_folder_open_fst.gif) no-repeat 0 40%;}
.MenuBox .titBox span.Lst a {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/ico_folder_open_lst.gif) no-repeat 0 40%;}
.MenuBox2 .titBox span a {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/ico_folder.gif) no-repeat 0 40%;}
.MenuBox2 .titBox span.Fst a {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/ico_folder_fst.gif) no-repeat 0 40%;}
.MenuBox2 .titBox span.Lst a {line-height:150%;background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/icon_exit.gif) no-repeat 0 0;}
.MenuBox2 .txtBox {display:none;}
.MenuBox .txtBox ul li {padding-left:48px;line-height:150%;}
.MenuBox .txtBox .num {color:#e00;}
.MenuBox .txtBox ul {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/line_y.gif) repeat-y 4px 0;}
.MenuBox .txtBox ul li {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/t.gif) no-repeat 28px 40%; font-size:12px;}
.MenuBox .txtBox ul li.Lst {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/t_lst.gif) no-repeat 28px 10%;}

.MenuBox2 .txtBottom {display:none;}
.MenuBox .txtBottom ul li {padding-left:48px;line-height:150%;}
.MenuBox .txtBottom .num {color:#e00;}
.MenuBox .txtBottom ul li {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/t.gif) no-repeat 28px 40%; font-size:12px;}
.MenuBox .txtBottom ul li.Lst {background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/t_lst.gif) no-repeat 28px 10%;}
.MenuBox .txtBottom ul li.top{background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/t_lst.gif) no-repeat 28px 10%;}
.MenuBox .txtBottom span.Bot a{background:url(http://image.sojump.com/images/WJX/QuestionnaireStencil/ico_folder_bottom.gif) no-repeat 0 0;}

.divMouse{text-align: left}
.divMouse LI A
{
    PADDING-RIGHT: 6px; PADDING-BOTTOM: 0; MARGIN: 0 0; CURSOR: pointer; padding-left:4px;
    COLOR: #666; BACKGROUND-REPEAT: no-repeat; TEXT-DECORATION: none;  DISPLAY:  inline-block;
}
 .divMouse LI A:visited
{
    PADDING-RIGHT: 6px; PADDING-BOTTOM: 0; MARGIN: 0 0; CURSOR: pointer; padding-left:4px;
    COLOR: #666; BACKGROUND-REPEAT: no-repeat; TEXT-DECORATION: none;  DISPLAY:  inline-block;
}
.divMouse LI A:hover
{
     color:#ffffff; background-color:#3366cc;
}


/*用于问卷推荐服务系列页面的样式*/
ul.stat_tab {
  border-bottom: 2px solid #93D0F4;
    height: 27px;
   padding-top:30px;
   display:block;
}
ul.stat_tab li.current
{
    background:#B3DEF8;
}
 ul.stat_tab li {
 background: #DEDEDD;
    border-radius: 2px;
    color: #494949;
    display: block;
    float: left;
    font-size: 12px;
    font-weight: bold;
    height: 27px;
    line-height: 27px;
    margin-right: 2px;
    text-align: center;
    width: 95px;
}

 ul.stat_tab li a,ul.stat_tab li a:visited{
color: #403C39;
}

#divTabMenu
{ height: 24px; width: 840px; margin: 0px auto;border-bottom:4px #0978d5 solid;
    padding: 0px 0px 0px 0px; background: url(http://image.sojump.com/images/html/promotemsg/searchbg01.gif);
}
.btnsNormal A
{
 DISPLAY: inline; FONT-WEIGHT: bold; margin-left:12px;
 FONT-SIZE: 13px; FLOAT: left; PADDING-BOTTOM: 2px;  CURSOR: pointer; COLOR: #444444! important;
 PADDING-TOP: 5px; width:73px;line-height:17px;
 TEXT-DECORATION: none; text-align:center;BACKGROUND-IMAGE: url(http://image.sojump.com/images/html/promotemsg/searchonbgNo.gif) ;
}
.btnsActive A
{
 DISPLAY: inline;FONT-WEIGHT: bold;
 FONT-SIZE: 13px; FLOAT: left; PADDING-BOTTOM:2px; CURSOR: pointer; COLOR: #ffffff! important;
 PADDING-TOP: 5px;  line-height:17px; width:73px;text-align:center; margin-left:12px! important;
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/html/promotemsg/searchonbg.gif) ; TEXT-DECORATION: none;
}
.btnsNormal A:hover {
 background-repeat: repeat-x;background: url(http://image.sojump.com/images/html/promotemsg/searchonbgHover.gif); color:#05398c! important;line-height:17px;
 PADDING-TOP: 5px;PADDING-BOTTOM: 2px;DISPLAY: inline; width:73px;FONT-WEIGHT: bold; text-align:center;FONT-SIZE: 13px;
}
.btnsNormal a:visited{color:#444444;}


.btnsNormalL A
{
 DISPLAY: block; FONT-WEIGHT: bold; margin-left:15px;
 FONT-SIZE: 13px; FLOAT: left; PADDING-BOTTOM: 2px;  CURSOR: pointer; COLOR: #444444! important;
 PADDING-TOP: 5px; width:108px;line-height:17px;
 TEXT-DECORATION: none; text-align:center;BACKGROUND-IMAGE: url(http://image.sojump.com/images/html/promotemsg/searchonbgLNo.gif) ;
}
.btnsActiveL A
{
 DISPLAY: block;FONT-WEIGHT: bold;
 FONT-SIZE: 13px; FLOAT: left; PADDING-BOTTOM:2px; CURSOR: pointer; COLOR: #ffffff! important;
 PADDING-TOP: 5px;  line-height:17px; width:108px;text-align:center; margin-left:15px;
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/html/promotemsg/searchonbgL.gif) ; TEXT-DECORATION: none;
}
.btnsNormalL A:hover {
 background-repeat: repeat-x;background: url(http://image.sojump.com/images/html/promotemsg/searchonbgLHover.gif); color:#05398c! important;line-height:17px;
 PADDING-TOP: 5px;PADDING-BOTTOM: 2px;DISPLAY: block; width:108px;FONT-WEIGHT: bold; text-align:center;FONT-SIZE: 13px;
}
.btnsNormalL a:visited{color:#444444;}


.btnsNormalLL A
{
 DISPLAY: block; FONT-WEIGHT: bold; margin-left:15px;
 FONT-SIZE: 13px; FLOAT: left; PADDING-BOTTOM: 2px;  CURSOR: pointer; COLOR: #444444! important;
 PADDING-TOP: 5px; width:128px;line-height:17px;
 TEXT-DECORATION: none; text-align:center;BACKGROUND-IMAGE: url(http://image.sojump.com/images/html/promotemsg/searchonbgLLNo.gif) ;
}
.btnsActiveLL A
{
 DISPLAY: block;FONT-WEIGHT: bold;
 FONT-SIZE: 13px; FLOAT: left; PADDING-BOTTOM:2px; CURSOR: pointer; COLOR: #ffffff! important;
 PADDING-TOP: 5px;  line-height:17px; width:128px;text-align:center; margin-left:15px;
 BACKGROUND-IMAGE: url(http://image.sojump.com/images/html/promotemsg/searchonbgLL.gif) ; TEXT-DECORATION: none;
}
.btnsNormalLL A:hover {
 background-repeat: repeat-x;background: url(http://image.sojump.com/images/html/promotemsg/searchonbgLLHover.gif); color:#05398c! important;line-height:17px;
 PADDING-TOP: 5px;PADDING-BOTTOM: 2px;DISPLAY: block; width:128px;FONT-WEIGHT: bold; text-align:center;FONT-SIZE: 13px;
}
.btnsNormalLL a:visited{color:#444444;}

.btns A:active { COLOR: #ffffff;
 BACKGROUND-COLOR: #6299c5
}
.divPromoteService{ margin:0 auto; width:840px; padding:10px 0 20px; line-height:24px; color:#444444; font-size:13px;}
.divPromoteService b{ font-size:14px;}
.fontCheng{color:#ff6600;}
#succeedcase li{float:left;}

.libg{background-image: url(http://image.sojump.com/images/Html/ContactUs/Icon.gif);padding-left:15px; background-repeat: no-repeat;background-position : 0 45%;}

/*企业版自定义域名登录页面*/
#userlogin_body {
 PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(http://www.sojump.com/Images/wjx/vip/user_all_bg.gif) #226cc5 repeat-x 50% top; PADDING-BOTTOM: 0px; MARGIN: 110px 0px 0px; FONT: 12px/150% Arial, "宋体" ,Helvetica,sans-serif; PADDING-TOP: 0px; TEXT-DECORATION: none
}

#user_login {
 PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px
}
#user_login DL {
 PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px
}
#user_login DD {
 PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px
}
#user_login {
 MARGIN: 0px auto; WIDTH: 590px
}
.user_bottom_c A {
 COLOR: yellow!important;
  text-decoration:none;
}
.user_bottom_c A:hover {
 COLOR: #c00
}

.tbgrid td,.tbgrid th
{
   border:1px solid #DCE0E1;
}


div.bar {
background:transparent url(http://image.sojump.com/images/wjx/viewstat/vote_cl_bar.png) no-repeat scroll 0 0;
float:left;
height:16px;
margin:3px 0 0;
padding:0 0 0 1px;
width:152px;
text-align:left;
}
div.bar .precent
{
    overflow:hidden;
}
div .bar img
{
   border:0px;
   padding:0px;
}
/*****************************填写问卷与设计问卷*************
/*分页与分栏*/
.div_title_page_question{
    padding:2px 0;
    width:98%; margin:22px auto; clear:both;
    line-height:20px;
}
.div_title_cut_question{
    padding:2px 0; width:97%;margin:10px auto;
    line-height:20px;word-break:break-all;
    word-wrap: break-word;
}

  </style>
  <style rel="stylesheet" type="text/css">
      body
{
    font-family:"微软雅黑","Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    word-break:break-all;
    word-wrap: break-word;
}
.slider{width:100%;}
.imageSlider1 { margin:0;padding:0; height:20px; width:100%; background-image:url("http://image.sojump.com/images/wjx/JoinQuestionnaire/scrollbg.gif"); }
.imageBar1    { margin:0;padding:0; height:17px; width:10px; background-image:url("http://image.sojump.com/images/wjx/JoinQuestionnaire/scrfloat.gif"); }

.tableoption
{
     background: #CDD7CC; padding:3px;/*solid 1px*/
}
.tableoption td { border-bottom:1px solid #eeeeee; }
.div_table_radio_question ul {
clear:both;
}
.div_table_radio_question li
{
 margin-bottom:2px;
}
.div_table_radio_question li label,.div_table_radio_question li input,.div_table_radio_question td input
{
    cursor:pointer;
}

.div_table_radio_question li img {   border:solid 2px #eeeeee; padding:1px; display:block; }
.div_item_desc{margin-left:19px; font-weight:normal; color:#999999;}
.likertImageTypeList
{
     margin-left:10px; margin-top:5px;
}
.likertImageTypeList li
{
      margin-right:10px; list-style-type:none;
    float:left;
}
.likertImageTypeList li img
{
   vertical-align:middle;
}
.on3{background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/hand_24.gif) no-repeat;width:24px;height:24px; text-decoration:none;  cursor:pointer;}
.off3{background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/hand_24_off.gif) no-repeat;width:24px; height:24px;text-decoration:none; cursor:pointer;}

 .on2{background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/star_24.gif) no-repeat;width:24px;height:24px; text-decoration:none;  cursor:pointer;}
.off2{background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/star_24_off.gif) no-repeat;width:24px; height:24px;text-decoration:none; cursor:pointer;}

.onscore
{
    background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/piont_lv.png);background-color:#FFFFFF;overflow:hidden;border:solid 1px #dbdbdb;width:355px; height:20px;
}
.on6{background:none!important;text-align:center;border:solid 1px white; cursor:pointer;}
.off6{background:#fff;border:solid 1px white;text-align:center;cursor:pointer;}

.on4{background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/heart_24.gif) no-repeat;width:24px;height:24px; text-decoration:none;  cursor:pointer;}
.off4{background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/heart_24_off.gif) no-repeat;width:24px; height:24px;text-decoration:none; cursor:pointer;}

.on5{background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/right_24.gif) no-repeat;width:24px;height:24px; text-decoration:none;  cursor:pointer;}
.off5{background:url(http://image.sojump.com/images/wjx/JoinQuestionnaire/Rate/right_24_off.gif) no-repeat;width:24px; height:24px;text-decoration:none; cursor:pointer;}

.goTop{BACKGROUND-IMAGE: url(http://image.sojump.com/images/Mysojump/QuestionnaireMng/Design/GoTop1.gif)}
.goBottom {BACKGROUND-IMAGE: url(http://image.sojump.com/images/Mysojump/QuestionnaireMng/Design/GoBottom1.gif)}
.upMove {BACKGROUND-IMAGE: url(http://image.sojump.com/images/Mysojump/QuestionnaireMng/Design/UpMove.gif)}
.downMove {BACKGROUND-IMAGE: url(http://image.sojump.com/images/Mysojump/QuestionnaireMng/Design/DownMove.gif)}
.qButton{font-size:12px;width:82px; height:106px; font-weight:normal;}
.qButton UL {
            margin: 0;width:82px; height:20px;
        }
.qButton LI {
            background-color: #99ccff; PADDING:0;width:82px;
        }
.qButton LI a
{
 border: #fff 1px solid;padding-right: 6px; background-position: 5px 3px;  width:48px; height:20px;
 display: inline-block; padding-left: 26px;  padding-bottom: 0; margin: 0;cursor: pointer; color: #666;
 line-height: 20px; padding-top: 2px;  background-repeat: no-repeat; text-decoration: none;
}
.qButton LI a:hover {border: #999 1px solid; color: #336699;  width:48px;background-color: #ccc}
.matrixtitle{
     float:left;
}
 .survey{width:780px;line-height:20px; word-wrap: break-word; padding:0; margin:0 auto;}
 .surveyhead
   {
        line-height: 20px; text-align: center;
        width:96%;
        padding:40px 2% 30px;
   }
 .surveyhead h1
 {
     font-size:24px !important; font-weight: bold; color: #f53d05; vertical-align: middle;
       margin:0;padding:15px 0; line-height:24px;
  }
   .surveydescription
   {
        color:#555555;
        line-height:24px;
       text-align:left;
       font-size:16px;
       padding-bottom:15px;
        border-bottom:1px dashed #ccc;
        margin-left:0;
        margin-top:20px;
   }
   .surveycontent
   {
       margin:0;width:100%;
   }
   .errorMessage
   {
       color:Red;
       margin-left:20px;
       height:20px;
   }
.div_question
{
    border:2px solid  white;
    padding:4px;
    clear:both;
    margin:2px auto 10px;
    width:96%;
    height:auto;
}
.surveydescription img,.div_title_page_question img,.div_question img
{
    max-width:760px;
    _width:expression(this.width>760?"760px":"auto");
    overflow:hidden;
}
.div_question_mouseover {
    border:2px solid  #fdb553;
     cursor: pointer;
     padding:4px;
}
.div_question_mouseout {
    cursor:pointer;
}
.div_question_onclick
{
 border:2px solid  #66CAFF;
 padding:4px;
}
.div_question_error
{
 border:2px solid  red;
 padding:4px;
}
.div_topic_question{
    font-weight:bold;
    width:28px;
    float:left;
}
.div_topic_page_question{
    padding-top:1px;
    font-weight:bold;
}
.div_title_question_all{
    padding-top:2px;
    font-size:15px;
    color:#444444;
     font-weight:bold;
    height:auto;
    line-height:20px;
}
.div_title_question
{
    overflow:hidden;zoom:1;
}
.div_title_page_question{
    font-weight:bold;font-size: 14px;
}
.div_title_cut_question{
  font-size:14px;
}
.div_table_question{
 float:right;
 display:block;
 margin-bottom:4px;
 height:25px;
 clear:both;
}
.div_table_question_hide
{
    display:none;
}

.div_table_radio_question{
   clear:both;
   padding-top:5px;
   padding-left:24px;
   padding-bottom:2px;
   border-bottom:1px solid #EFEFEF;
   font-size:14px;
   color:#333333;
   _padding-left:27px;
}
.div_table_radio_question select {
border: 1px solid #7F9DB9;
padding: 3px;
vertical-align: middle;
}
.div_table_radio_question .inputtext
{
    line-height:22px;
    padding:2px;
}
.div_table_clear_top
{
    clear:both;
    margin-top:4px;
}
.div_table_clear_bottom
{
    clear:both;
    margin-bottom:10px;
}
.div_table_radio_question li
{
 float:left;
 list-style-type:none;
}
.ulradiocheck li{
  line-height:30px;
  position:relative;
}
.ulradiocheck li input
{
    position:absolute; top:6px;
}
.ulradiocheck li label
{
    display:block;
    padding-left:20px;
}
tr.labelname
{
    background:#eff6fb;
}
tr.labelname b
{
    color:#666;font-size:16px;
}
.div_ins_question
{
 padding-top:8px;
 color:#666666;
 padding-left:20px;
 line-height:18px;
 clear:both;
}
.option
{
	font-size:12px;
	background-color:#cdd7cc;

}
.div_title_attr_question {
 border:1px solid #cccccc;
 margin:5px 10px 10px;
 padding:5px;
 font-size:12px;
 background:#cfe7ff;
}
.div_btn_confirm_attr_question{
   margin:5px 10px 10px;
   padding:5px;
   font-size:12px;
   float:right;
}
.div_type_attr_question{
   border:1px solid #6290d2;
   margin:5px 10px 10px;
   padding:5px;
    font-size:12px;
}

.div_jump_attr_question{
   border:1px solid #6290d2;
   margin:5px 10px 10px;
   padding:5px;
   font-size:12px;
}
.div_default_attr_question {
 border:1px solid #cccccc;
 margin:5px 10px 10px;
 padding:5px;
 background:#cfe7ff;
 font-size:12px;
}
.qtypetip
{
    color:#0066FF;
    font-weight:normal;
    font-size:14px;
}
legend{display:none;}
fieldset{border:0;}

.shop-item {
position: relative;
float: left;
width: 200px;
border: 1px solid #D5D5D5;
box-shadow: 0 2px 2px #EBEBEB;
margin-bottom:8px !important;
margin-right:15px;
}
.shop-item:hover { border: 1px solid #95CDF3; box-shadow: 0 2px 3px #B9DFF0; }
.shop-item .img_place {
width:190px;
height: 126px;
margin:2px auto 4px;
overflow: hidden;
}
.shop-item .img_place img {
 max-width:160px;
 _width:expression(this.width>160?"160px":"auto");
 max-height:100px;
border:none;
}
.shop-item .text_place {
height: 95px;
position: relative;
margin:0 8px;
}
.haspic .item_name {
position: absolute;
left: 46%;
top: 0;
width: 50%;
height: 6em;
}
.shop-item .item_name {
width: 189px;
display: block;
margin-left: 8px;
color: #333;
font-size: 14px;
position: absolute;
top: 10px;
left: 0;
max-height: 32px;
height: 32px;
line-height:16px;
overflow: hidden;
text-overflow:ellipsis;
}
.shop-item .item_select {
margin-left: 8px;
position: absolute;
top: 48px;
left: 0;
z-index: 20;
}
.shop-item .item_price {
font-size: 12px;
font-weight: 600;
color: #0077B3;
margin-right: 5px;
position: absolute;
text-align: right;
top: 49px;
right: 0;
}
.item_select .operation
{
    display: inline-block;
height: 34px;
border: 1px solid #ABABAB;
width:34px;
line-height:33px;
text-align: center;
background: #EEE;
vertical-align: top;
padding: 0;
cursor: pointer;
float: left;
}
.item_select .remove {
 border-right: 0; border-radius: 2px 0 0 2px;
}
.item_select .add {
 border-left: 0;border-radius: 0 2px 2px 0;
}
.item_select .remove:hover, .item_select .add:hover { color: #0077B3; background: #fff; }
.item_select .itemnum {
outline: 0 none;
font-size: 12px;
cursor:default;
margin:0;
background:#fff;
}
.shopcart {
padding: 15px;
margin: 20px;
border: 1px solid #ACACAC;
background: #FFF;
}
.productslist {
border-bottom: 1px dashed #CCC;
padding-bottom: 8px;
margin-bottom: 4px;
}
.productitem {
padding: 4px;
position: relative;
font-size: 12px;
height:33px;
border-bottom: 1px solid #EFEFEF;
}
.productitem:last-child {
border-bottom: 0;
}
.productitem .fpname {
position: absolute;
left: 0;
top: 8px;
width: 60%;
height: 32px;
font-weight: bold;
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis;
}
.productitem .fpnum {
position: absolute;
left: 60%;
top: 8px;
width: 10%;
height: 32px;
}
.productitem .fpprice {
position: absolute;
left: 70%;
top: 8px;
width: 30%;
height: 32px;
text-align: right;
color: #0077B3;
}
.ftotalprice {
text-align: right;
font-size: 14px;
color: #0077B3;
font-weight: bold;
}
  </style>
  <style rel="stylesheet" type="text/css">
      body {
background: #ddf4ff url("http://image.sojump.com/images/newbg/oldbg2-bg.jpg") repeat-x;
}
#jqContent {
width:920px;
background:url("http://image.sojump.com/images/newbg/oldbg2.jpg") no-repeat top center;
padding-top:105px;
margin:0 auto;
}
#headerCss {
background: white no-repeat;
width: 920px;
margin: 0 auto;
}
#mainCss {
background: white;
width: 920px;
margin: 0 auto;
}
#footercss {
width: 920px;
margin: 0 auto;
background: white;
height: 20px;
}
.surveyhead h1{
color:#19a8ee;
}

input.submitbutton {
border:1px solid #0492d6;
background:#13a5ec;
}
input.submitbutton_hover
{
    background:#1eb0f6; color:#fff !important;
}
legend{display:none;}
fieldset{border:0;}
  </style>
 </head>
 <body>
  <div id="divNotRun" style="height:100px; text-align:center; display:none;"></div>
  <div id="jqContent" style="text-align: left; ">
   <div id="headerCss" style="overflow-x: hidden; overflow-y: hidden; ">
    <div id="ctl00_header">
     <div style="display:none;"></div>
    </div>
   </div>
   <div id="mainCss">
    <div id="mainInner">
     <div id="box">
         <style rel="stylesheet" type="text/css">html{ overflow-x:hidden;overflow-y:auto;}</style>
      <div class="survey" style="margin:0px auto;">
       <div class="surveyhead" id="ctl00_ContentPlaceHolder1_JQ1_divHead" style="border: 0px;">
        <h1 id="ctl00_ContentPlaceHolder1_JQ1_h1Name" style="position:relative;">
         <span id="ctl00_ContentPlaceHolder1_JQ1_lblQuestionnaireName">二维码与问卷链接</span>
        </h1>
        <div style="clear: both;"></div>
        <div class="surveydescription" id="ctl00_ContentPlaceHolder1_JQ1_divDec">
         
        </div>
        <div style="clear: both;"></div>
       </div>
       <div class="surveycontent" id="ctl00_ContentPlaceHolder1_JQ1_question">
        <div id="ctl00_ContentPlaceHolder1_JQ1_surveyContent">
         <fieldset class="fieldset" id="fieldset1">


            
           <div id="qrcode" style="width:100px; height:100px; margin-top:15px;margin:0 auto;">
           </div>
           
<div style="width:200px; height:100px; margin:0 auto;margin-top:15px;margin-left:304px;"><a href="http://127.0.0.1:8080${pageContext.request.contextPath}/questionnaire?qid=${qid}" class="button button-3d button-action button-pill" >打开问卷</a></div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

         </fieldset>
        </div>
        <div class="shopcart" id="shopcart" style="display:none;"></div>
       
         <div style="clear:both;"></div>
        </div>
       </div>
     </div>
    </div>
   </div>
   </div>
  </div>



  </body>
</html>