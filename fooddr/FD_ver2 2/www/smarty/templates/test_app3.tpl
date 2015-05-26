<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui">
	<title>푸드닥터</title>
	    <link rel="stylesheet" href="{$rootUri}/mo_css/jquery.mobile-1.4.2.css">
	    <link rel="stylesheet" href="{$rootUri}/mo_css/jqm-demos.css">
        <!-- <link rel="stylesheet" href="../../css/horizontal/horizontal.css">  -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
  

    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../css/horizontal/normalize.css">
    <link rel="stylesheet" href="../css/horizontal/font-awesome.css">
    <!-- <link rel="stylesheet" href="../css/horizontal/ospb.css"> -->
    <link rel="stylesheet" href="../css/horizontal/horizontal.css">



	    <!--link rel="shortcut icon" href="../favicon.ico"-->
	    <script src="{$rootUri}/mo_js/jquery.js"></script>
	    <script src="{$rootUri}/mo_js/index.js"></script>
	    <script src="{$rootUri}/mo_js/jquery.mobile-1.4.2.min.js"></script> 
        
        <script src="http://view.jqueryui.com/master/ui/datepicker.js"></script>
        <link rel="stylesheet" src="{$rootUri}/mo_js/jquery-ui.css"> 
        <script src="{$rootUri}/mo_js/jquery-ui.js"></script>  

        <script src="{$rootUri}/js/bootstrap-typeahead.js"></script>
        <script src="../js/horizontal/modernizr.js"></script>

        <style type="text/css">
            html {
                -webkit-touch-callout:none;
                -webkit-user-select:none;
                -webkit-tap-highlight-color:rgba(0, 0, 0, 0);
             }
       
            .ui-menu-item > a.ui-corner-all {
                    display: block;
                    padding: 3px 15px;
                    clear: both;
                    font-weight: normal;
                    line-height: 18px;
                    color: #000000;
                    white-space: nowrap;
                    background-color: #ffe;                 
/*                    &.ui-state-hover, &.ui-state-active {
                      color: #ffffff;
                      text-decoration: none;
                      background-color: #ffe;
                      border-radius: 0px;
                      -webkit-border-radius: 0px;
                      -moz-border-radius: 0px;
                      background-image: none;
                    }
*/        
            }
            .imgCircle{ width:68px; height:68px; background-color:blue }
        </style>
	</head>
<body style=" background-image:url({$rootUri}/imageA/m_img01.png)"> 

<!-- 식단 목록 -->

<!-- 식단 목록 -->

<section data-role="page" class="jqm-demos">

	    <div data-role="header" class="fdb_header01">  
                <div class="h_body">
                    <img src="{$rootUri}/imageB/m_img05_m3_i.png" width="58px;" class="h_img">
                    <div class="h_text">식단입력</div><div class="h_text2">휴일 포함한 <font color="#fc6120">3일치 식단</font>을 <br />입력해 주세요.</div>
                </div>
			</div><!-- /header -->

	    <div role="main" class="ui-content"> 
        <div style="padding:15px;">
        
            	<style>
				.ui-input-text {
					border-style:none !important;
				}
				.ui-input-search {
					border-style:none !important;
				}
				</style>
        	<div class="fdb_03_head">
            
                {if $smartyDay.count > 0}
                        <a href="#" class="fdb_03head_ov class_date_01" id="day_{$smartyDay.result[0].regDate}">
                        	<div class="fdb_03head_st class_day_01">{$smartyDay.result[0].month}월 {$smartyDay.result[0].day}일</div>
                        	<div class="fdb_03head_sb class_week_01">{$smartyDay.result[0].week}</div>
                        </a>
                {else}
                        <a href="#" id="picker_0" data-rel="popup" data-position-to="window" data-transition="pop" class="fdb_03head_ov class_date_03">
                            <div class="fdb_03head_st2 class_day_03"><img src="{$rootUri}/imageB/m_img07.png"></div>
                            <div class="fdb_03head_sb class_week_03"><span class="dateview">날짜입력</span>
                        <input type="text" class="datepicker" data-role="date" id="datepicker0" value="" data-date-format="mm-dd"  style="border-style:none;"/>
                        </div> 
                        </a>              
                {/if}    
                {if $smartyDay.count > 1}
                        <a href="#" class="fdb_03head_ov class_date_01" id="day_{$smartyDay.result[1].regDate}">
                            <div class="fdb_03head_st class_day_01">{$smartyDay.result[1].month}월 {$smartyDay.result[1].day}일</div>
                            <div class="fdb_03head_sb class_week_01">{$smartyDay.result[1].week}</div>
                        </a>
                {else}
                        <a href="#" id="picker_1" data-rel="popup" data-position-to="window" data-transition="pop" class="fdb_03head_non class_date_03">
                            <div class="fdb_03head_st2 class_day_03"><img src="{$rootUri}/imageB/m_img07.png"></div>
                            <div class="fdb_03head_sb class_week_03"><span class="dateview">날짜입력</span>
                        <input type="text" class="datepicker" data-role="date" id="datepicker1" value="" data-date-format="mm-dd"  style="border-style:none;"/>  
                        </div>
                        </a>              
                {/if}    
                {if $smartyDay.count > 2}
                        <a href="#" class="fdb_03head_ov class_date_01" id="day_{$smartyDay.result[2].regDate}">
                            <div class="fdb_03head_st class_day_01">{$smartyDay.result[2].month}월 {$smartyDay.result[2].day}일</div>
                            <div class="fdb_03head_sb class_week_01">{$smartyDay.result[2].week}</div>
                        </a>
                {else}
                        <a href="#" id="picker_2" data-rel="popup" data-position-to="window" data-transition="pop" class="fdb_03head_non class_date_03"  style="z-index:99">
                            <div class="fdb_03head_st2 class_day_03"><img src="{$rootUri}/imageB/m_img07.png"></div>
                            <div class="fdb_03head_sb class_week_03"><span class="dateview">날짜입력</span>
                        <input type="text" class="datepicker"   data-role="date"  id="datepicker2" value="" data-date-format="mm-dd"  />
                        </div>
                        </a>
                        
                {/if}    

            </div>

        	<div class="fdb_03stitle">
            	<span><img src="{$rootUri}/imageB/m_img08.png" width="35"></span>
           	 	<span class="fdb_03stitle_txt"><strong id="title_date">{$smartyDay.result[0].month}월 {$smartyDay.result[0].day}일 {$smartyDay.result[0].week}</strong> 섭취 식단 목록입니다.</span>
            </div>

            <div class="fdb_03body">

            	<!-- 입력 패턴 식단 / 아침-->
            	<div class="fdb_foodlist"  id="mo_list">
                	<div class="fdblist_head">
                    	<span style="background-color:#c8c626;">아침</span>
                    </div> 
                	<div class="fdblist_body">
                    	<span class="fdblist_body_edit" id="republic1"><a href="#" data-transition="slide" class="republic" >수정</a></span> 
                    	<span class="fdblist_body_list" id="meals_list_1">
                        	<span class="fdblist_body_list_data">쌀밥 10g</span>
                       	 	<span class="fdblist_body_list_data">돼지 김치찌개 40g</span>
                       	 	<span class="fdblist_body_list_data">두부 20g</span>
                        </span> 
                        <div class="fdb_pictlist">
                            <a href="#" style="background: url(../../images/m_img31.png) no-repeat center center; "></a>
                        </div>
                    </div>
                </div>
            
            	<!-- 입력 패턴 식단 / 점심-->
            	<div class="fdb_foodlist"  id="no_list">
                	<div class="fdblist_head">
                    	<span style="background-color:#947013;">점심</span>
                    </div> 
                	<div class="fdblist_body">
                    	<span class="fdblist_body_edit"  id="republic2"><a href="#" data-transition="slide" class="republic">수정</a></span> 
                    	<span class="fdblist_body_list" id="meals_list_2">
                        	<span class="fdblist_body_list_data">쌀밥 10g</span>
                       	 	<span class="fdblist_body_list_data">돼지 김치찌개 40g</span> 
                        </span> 
                        <div class="fdb_pictlist">
                            <a href="#" style="background: url(../../images/m_img31.png) no-repeat center center; "></a>
                        </div>
                    </div>
                </div>
            
            	<!-- 입력 패턴 식단 / 저녁 -->
            	<div class="fdb_foodlist" id="di_list">
                	<div class="fdblist_head">
                    	<span style="background-color:#e7ba08;">저녁</span>
                    </div> 
                	<div class="fdblist_body">
                    	<span class="fdblist_body_edit" id="republic3"><a href="#" data-transition="slide" class="republic" >수정</a></span> 
                    	<span class="fdblist_body_list" id="meals_list_3">
                        	<span class="fdblist_body_list_data">쌀밥 10g</span>
                       	 	<span class="fdblist_body_list_data">돼지 김치찌개 40g</span> 
                        </span> 
                        <div class="fdb_pictlist">
                            <a href="#" style="" class="fdb_pictlist_bt ui-link">
                            <div class="fdb_05head_st"><img src="../../imageB/m_img07.png"></div>
                            <div class="fdb_05head_sb">사진입력</div>                    
                            </a>
                        </div>   
                    </div>
                </div>
            
            	<!-- 입력 패턴 식단 / 오전간식 -->
            	<div class="fdb_foodlist">
                	<div class="fdblist_head">
                    	<span style="background-color:#82be9b;">오전간식</span>
                    </div> 
                	<div class="fdblist_body">
                    	<span class="fdblist_body_edit" id="republic4"><a href="#" data-transition="slide" class="republic" >수정</a></span> 
                    	<span class="fdblist_body_list" id="meals_list_4">
                        	<span class="fdblist_body_list_data">쌀밥 10g</span>
                       	 	<span class="fdblist_body_list_data">돼지 김치찌개 40g</span> 
                        </span> 
                        <div class="fdb_pictlist">
                            <a href="#" style="" class="fdb_pictlist_bt ui-link">
                            <div class="fdb_05head_st"><img src="../../imageB/m_img07.png"></div>
                            <div class="fdb_05head_sb">사진입력</div>                    
                            </a>
                        </div>                        
                    </div>
                </div>
            
            	<!-- 입력 패턴 식단 / 오후간식 -->
            	<div class="fdb_foodlist">
                	<div class="fdblist_head">
                    	<span style="background-color:#7fa619;">오후간식</span>
                    </div> 
                	<div class="fdblist_body">
                    	<span class="fdblist_body_edit" id="republic5"><a href="#" data-transition="slide" class="republic" >수정</a></span> 
                    	<span class="fdblist_body_list" id="meals_list_5">
                        	<span class="fdblist_body_list_data">쌀밥 10g</span>
                       	 	<span class="fdblist_body_list_data">돼지 김치찌개 40g</span> 
                        </span>
                        <div class="fdb_pictlist">
                            <a href="#" style="" class="fdb_pictlist_bt ui-link">
                            <div class="fdb_05head_st"><img src="../../imageB/m_img07.png"></div>
                            <div class="fdb_05head_sb">사진입력</div>                    
                            </a>
                        </div>                            
                    </div>
                </div>
            
            	<!-- 입력 패턴 식단 / 야간간식 -->
            	<div class="fdb_foodlist">
                	<div class="fdblist_head">
                    	<span style="background-color:#d47095;">야간간식</span>
                    </div> 
                	<div class="fdblist_body">
                    	<span class="fdblist_body_edit" id="republic6"><a href="#" data-transition="slide" class="republic" >수정</a></span> 
                    	<span class="fdblist_body_list" id="meals_list_6">
                        	<span class="fdblist_body_list_data">쌀밥 10g</span>
                       	 	<span class="fdblist_body_list_data">돼지 김치찌개 40g</span> 
                        </span>
                        <div class="fdb_pictlist">
                            <a href="#" style="" class="fdb_pictlist_bt ui-link">
                            <div class="fdb_05head_st"><img src="../../imageB/m_img07.png"></div>
                            <div class="fdb_05head_sb">사진입력</div>                    
                            </a>
                        </div>                            
                    </div>
                </div>
            </div>
                
        	<div class="fdb_foodtail">
            	<a href="#" data-transition="slide" id="meals_days"><div style="display:inline-block; text-align:center;"><span><img src="{$rootUri}/imageB/m_img10.png" width="40"></span><span class="fdb_foodtail_txt" >식단 추가</span></div></a>
            </div>
            
        </div>
		</div><!-- /content -->
    
    
    	<!-- 날짜 선택-->
    	<!-- 날짜 선택-->
    	<!-- 날짜 선택-->
    	<!-- 날짜 선택-->
        <div data-role="popup" id="popupDialog" data-overlay-theme="b" data-theme="a" data-dismissible="false" style="margin-top:-30px;"> 
            
             
            <div class="pop_head" style="padding:10px 10px 4px 10px; display:inline-block;min-width:293px;;">
            
            	<span class="pop_close01" style="float:right;; display:inline-block; margin-top:-20px;"><a href="#" data-rel="back"><img src="{$rootUri}/imageB/m_img12.png" width="60" ></a></span>
            	<span style="float:left; display:inline-block;"><img src="{$rootUri}/imageB/m_img11.png" width="40"></span>
                <span style="float:left; display:inline-block; padding-top:11px; padding-left:7px; font-size:18px; font-weight:bold; letter-spacing:-1px;">식단 날짜 선택</span>
            
            </div>
            <div class="pop_content" style="padding:2px 10px 10px 10px;">
            
            <!-- 데이터 피커 부분 -->
            
            <div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="display: block;"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-body-a ui-corner-top"><a class="ui-datepicker-prev ui-corner-all ui-btn ui-btn-icon-notext ui-btn-inline ui-icon-arrow-l ui-shadow" data-handler="prev" data-event="click" title="Prev"><span class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><a class="ui-datepicker-next ui-corner-all ui-btn ui-btn-icon-notext ui-btn-inline ui-icon-arrow-r ui-shadow" data-handler="next" data-event="click" title="Next"><span class="ui-icon ui-icon-circle-triangle-e">Next</span></a>
        <div class="ui-datepicker-title"><span class="ui-datepicker-year" style="font-size:20px;">2014년 4월</span></div></div><table class="ui-datepicker-calendar mobile-enhanced"><thead><tr>
                <th class="ui-datepicker-week-end ui-bar-a"><span title="Sunday">일</span></th>
                <th class="ui-bar-a"><span title="Monday">월</span></th>
                <th class="ui-bar-a"><span title="Tuesday">화</span></th>
                <th class="ui-bar-a"><span title="Wednesday">수</span></th>
                <th class="ui-bar-a"><span title="Thursday">목</span></th>
                <th class="ui-bar-a"><span title="Friday">금</span></th>
                <th class="ui-datepicker-week-end ui-bar-a"><span title="Saturday">토</span></th></tr></thead><tbody><tr>
                <td class="ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled ui-body-a" style="opacity: 1;">29</td>
                <td class="ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled ui-body-a" style="opacity: 1;">30</td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">1</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">2</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">3</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">4</a></td><td class="ui-datepicker-week-end  ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">5</a></td></tr><tr><td class="ui-datepicker-week-end  ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">6</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">7</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">8</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">9</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">10</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">11</a></td><td class="ui-datepicker-week-end  ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">12</a></td></tr><tr><td class="ui-datepicker-week-end  ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">13</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">14</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">15</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">16</a></td><td class="ui-datepicker-today ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-state-highlight ui-btn ui-btn-up-a" href="#">17</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">18</a></td><td class="ui-datepicker-week-end  ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">19</a></td></tr><tr><td class="ui-datepicker-week-end  ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">20</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">21</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">22</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">23</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn  ui-btn-active" href="#">24</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn  ui-btn-active" href="#">25</a></td><td class="ui-datepicker-week-end  ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn ui-btn-active" href="#" >26</a></td></tr><tr><td class="ui-datepicker-week-end  ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">27</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">28</a></td><td class="ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-btn" href="#">29</a></td><td class="ui-datepicker-current-day ui-body-a" data-handler="selectDay" data-event="click" data-month="3" data-year="2014"><a class="ui-state-default ui-state-active ui-btn" href="#">30</a></td>
        <td class="ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled ui-body-a" style="opacity: 1;">1</td>
        <td class="ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled ui-body-a" style="opacity: 1;">2</td>
        <td class="ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled ui-body-a" style="opacity: 1;">3</td></tr></tbody></table></div>
            
            
                
            </div>
            <div class="pop_tail">
                <a href="#"  data-rel="back">저장</a>
            </div>
             
        </div> 
    	<!-- 날짜 선택 끝-->
    
        <div data-role="footer" data-position="fixed" class="jqm-footer">
                <a href="#" style=" background:none; border:0;"  class="jqm-navmenu-link"><img src="{$rootUri}/imageB/m_img06.png" style="width:75px;"></a>  
        </div><!-- /footer --> 

	    <div data-role="panel" class="jqm-navmenu-panel" data-position="left" data-display="overlay" data-theme="a" id="rightpanel1" style="width:145px; background-color:#3f362b">
        	<div class="fdb_menu"  style="width:110px; text-align:center;">
           		<span style="display:inline-block; padding:5px;"><a href="FDLite_App01" data-ajax="false"><img src="{$rootUri}/imageB/m_img05_m1.png" style="width:100px;"></a></span>
           		<span style="display:inline-block; padding:5px;"><a href="FDLite_App02" data-ajax="false"><img src="{$rootUri}/imageB/m_img05_m2.png" style="width:100px;"></a></span>
           		<span style="display:inline-block; padding:5px;"><a href="FDLite_App03" data-ajax="false"><img src="{$rootUri}/imageB/m_img05_m3.png" style="width:100px;"></a></span>
           		<span style="display:inline-block; padding:5px;"><a href="FDLite_App04" data-ajax="false"><img src="{$rootUri}/imageB/m_img05_m4.png" style="width:100px;"></a></span>
            </div>
        </div><!-- /panel -->

</section><!-- /page -->



<!-- 섭취 음식리스트-->
<!-- 섭취 음식리스트-->
<!-- 섭취 음식리스트-->
<!-- 섭취 음식리스트-->
<!-- 섭취 음식리스트-->

<section data-role="page" class="jqm-demos" id="fd_recipe">

	    <div data-role="header" class="fdb_header02">  
                <div class="h_body">
                	<span><strong id="food_list_date">05월 05일 요일</strong> 섭취 목록입니다.</span>
               		<a  href="FDLite_App03"  data-rel="" id="back_button"><img src="{$rootUri}/imageB/m_img13.png" width="55"></a>
                 </div>
			</div><!-- /header -->



	    <div role="main" class="ui-content">         
        
        <div style="padding:5px 15px 15px 15px;">        
        
        	<div class="fdb_04_head">
            	<span style="width:49%; display:inline-block;">
                    <select name="select-choice-1" id="select_meals" >
                        <option>식사끼니</option> 
                        <option value="1">아침</option>  
                        <option value="2">점심</option>  
                        <option value="3">저녁</option>  
                        <option value="4">오전간식</option>  
                        <option value="5">오후간식</option>  
                        <option value="6">야간간식</option>  
                    </select>
                 </span>
            	<span style="width:49%; display:inline-block;">
                    <select name="select-choice-1" id="select_locate" >
                        <option>섭취장소</option> 
                        <option value="1">집</option> 
                        <option value="2">회사 </option> 
                        <option value="3">어린이집</option> 
                        <option value="4">외식</option>  
                        <option value="5">기타</option>  
                    </select>                    
                  </span>
            
            </div> 
             
            
            <div class="fdb_04body">
            
            <!-- <div class="fdb_04body" id="intakeListView"> -->
            
               <div id="intakeListView"> 
            	<!-- 리스트 연속-->
            	<div class="fdb_04body_list">
                	<a href="#">
                	<span class="fdb_04body_g">130g</span>
                	<span class="fdb_04body_check"><span class="fdb_check"><img src="{$rootUri}/imageB/m_img14_tran.png" width="28"></span></span>
                	<span class="fdb_04body_name">음식명/식품</span>
                    </a>
                </div>
                <!-- 리스트 연속 end -->
               </div>                 
                
                <div class="fdb_04body_tail_bt">
                    <a href="#"  data-transition="slide" class="fdb_04body_tail_bt01" id="stuffs_republic">재료수정</a>
                    <a href="#"  data-rel="popup" data-position-to="window" data-transition="pop" class="fdb_04body_tail_bt02 controlgram_bt">섭취량조절</a>
                    <a href="#" class="fdb_04body_tail_bt03"  id="food_del">삭제</a>
                </div>  
            
            </div>
            
     
        
<!-- <div class="fdb_04body_tail_bt">'
                        +'    <a href="#"  data-transition="slide" class="fdb_04body_tail_bt01" id="stuffs_republic">재료수정</a>'
                        +'    <a href="#"  data-rel="popup" data-position-to="window" data-transition="pop" class="fdb_04body_tail_bt02">섭취량조절</a>'
                        +'    <a href="#" class="fdb_04body_tail_bt03" id="food_del">삭제</a>'
                        +'</div>'; -->
                
        	<div class="fdb_foodtail">
            	<a href="#" data-transition="slide"  class="fdb_tail_bt01"  id="addIntake">
                    <div style="display:inline-block; text-align:center;"><span><img src="{$rootUri}/imageB/m_img10.png" width="40"></span><span class="fdb_foodtail_txt" >섭취 추가</span></div>
                </a>
            </div>
        </div>
		</div><!-- /content -->
    
		<!-- 섭취량 조절 -->
		<!-- 섭취량 조절 -->
		<!-- 섭취량 조절 -->
		<!-- 섭취량 조절 -->
		<!-- 섭취량 조절 -->
        
        <div data-role="popup" id="controlrecipe" data-overlay-theme="b" data-theme="a" data-dismissible="false" style="margin-top:-30px;"> 
            
            <div role="main" class="ui-content">
                <div class="pop_head" style="padding:10px 10px 0px 10px; display:block; height:45px;;">
                
                    <span class="pop_close01" style="float:right;; display:inline-block; margin-top:-20px;margin-right:-20px;"><a href="#" class="fdpop_close3" data-rel="back"><img src="{$rootUri}/imageB/m_img12.png" width="60" id="close"></a></span>
                    <span style="float:left; display:inline-block;"><img src="{$rootUri}/imageB/m_img15.png" width="40"></span>
                    <span style="float:left; display:inline-block; padding-top:11px; padding-left:7px; font-size:18px; font-weight:bold; letter-spacing:-1px;" id="modal_food_name">음식/식품명</span>
                
                </div>
                <div class="pop_content" style="padding:">
                <!-- 조절 컨트롤 부분 -->
                <!--div class="fdbcon_head">비교이미지를 참고하시고 섭취 재료량을 조절해 주세요.</div--->
                <div class="fdbcon_back">
               		<img src="{$rootUri}/imageB/m_img17.png" class="fdbcon_back_img02">
                	<span class="fdbcon_bar"> 

                    </span>
                </div>
                    
                </div>
                <div class="pop_tail2">
                	<span><a href="#" class="fdb_tail_bt2 prev" id="food_down"><img src="{$rootUri}/imageB/m_img19.png" width="70"></a></span>
                    <span><a href="#"  data-rel="back" class="fdb_tail_bt" id="save_food">저장</a></span>
                	<span><a href="#" class="fdb_tail_bt2 next" id="food_up"><img src="{$rootUri}/imageB/m_img18.png" width="70"></a></span>
                </div>
                
            </div>
        </div>
		<!-- 섭취량 조절 끝 -->

</section><!-- /page -->

                        <div id="controlgram" style="position:fixed; left:0px; top:50%; width:100%; z-index:1200; margin-top:-65px; visibility:hidden;">
                            <div class="fd_frame" id="centered" style="margin:auto 15px;">
                                <ul class="clearfix">
                                    <li id="sly_0" value="0.1">0.1g</li>
                                    <li id="sly_1" value="0.2">0.2g</li>
                                    <li id="sly_2" value="0.4">0.4g</li>
                                    <li id="sly_3" value="0.5">0.5g</li>
                                    <li id="sly_4" value="0.6">0.6g</li>
                                    <li id="sly_5" value="0.7">0.7g</li>
                                    <li id="sly_6" value="0.8">0.8</li>
                                    <li id="sly_7" value="0.9">0.9g</li>
                                    <li id="sly_8" value="1">1g</li>
                                    <li id="sly_9" value="2">2g</li>
                                    <li id="sly_10" value="4">4g</li>
                                    <li id="sly_11" value="5">5g</li>
                                    <li id="sly_12" value="6">6g</li>
                                    <li id="sly_13" value="7">7g</li>
                                    <li id="sly_14" value="8">8g</li>
                                    <li id="sly_15" value="9">9g</li>
                                    <li id="sly_16" value="10">10g</li>
                                    <li id="sly_17" value="11">11g</li>
                                    <li id="sly_18" value="12">12g</li>
                                    <li id="sly_19" value="13">13g</li>
                                    <li id="sly_20" value="14">14g</li>
                                    <li id="sly_21" value="15">15g</li>
                                    <li id="sly_22" value="16">16g</li>
                                    <li id="sly_23" value="17">17g</li>
                                    <li id="sly_24" value="18">18g</li>
                                    <li id="sly_25" value="19">19g</li>
                                    <li id="sly_26" value="20">20g</li>
                                    <li id="sly_27" value="22">22g</li> 
                                    <li id="sly_28" value="24">24g</li> 
                                    <li id="sly_29" value="26">26g</li>
                                    <li id="sly_30" value="28">28g</li>
                                    <li id="sly_31" value="30">30g</li>
                                    <li id="sly_32" value="32">32g</li> 
                                    <li id="sly_33" value="34">34g</li> 
                                    <li id="sly_34" value="36">36g</li>
                                    <li id="sly_35" value="38">38g</li> 
                                    <li id="sly_36" value="40">40g</li>
                                    <li id="sly_37" value="42">42g</li> 
                                    <li id="sly_38" value="44">44g</li> 
                                    <li id="sly_39" value="46">46g</li>
                                    <li id="sly_40" value="48">48g</li>
                                    <li id="sly_41" value="50">50g</li>
                                    <li id="sly_42" value="55">55g</li> 
                                    <li id="sly_43" value="60">60g</li> 
                                    <li id="sly_44" value="65">65g</li> 
                                    <li id="sly_45" value="70">70g</li> 
                                    <li id="sly_46" value="75">75g</li> 
                                    <li id="sly_47" value="80">80g</li>  
                                    <li id="sly_48" value="85">85g</li> 
                                    <li id="sly_49" value="90">90g</li>  
                                    <li id="sly_50" value="95">95g</li>  
                                    <li id="sly_51" value="100">100g</li> 
                                    <li id="sly_52" value="110">110g</li> 
                                    <li id="sly_53" value="120">120g</li> 
                                    <li id="sly_54" value="130">130g</li> 
                                    <li id="sly_55" value="140">140g</li> 
                                    <li id="sly_56" value="150">150g</li>  
                                    <li id="sly_57" value="160">160g</li>  
                                    <li id="sly_58" value="170">170g</li>  
                                    <li id="sly_59" value="180">180g</li>  
                                    <li id="sly_60" value="190">190g</li>  
                                    <li id="sly_61" value="200">200g</li> 
                                    <li id="sly_62" value="220">220g</li> 
                                    <li id="sly_63" value="240">240g</li> 
                                    <li id="sly_64" value="260">260g</li> 
                                    <li id="sly_65" value="280">280g</li> 
                                    <li id="sly_66" value="300">300g</li>  
                                    <li id="sly_67" value="320">320g</li>  
                                    <li id="sly_68" value="340">340g</li>  
                                    <li id="sly_69" value="360">360g</li>  
                                    <li id="sly_70" value="380">380g</li>   
                                    <li id="sly_71" value="400">400g</li>   
                                    <li id="sly_72" value="420">420g</li>  
                                    <li id="sly_73" value="440">440g</li>  
                                    <li id="sly_74" value="460">460g</li>  
                                    <li id="sly_75" value="480">480g</li>   
                                    <li id="sly_76" value="500">500g</li>  
                                    <li id="sly_77" value="550">550g</li>  
                                    <li id="sly_78" value="500">500g</li>  
                                    <li id="sly_79" value="550">550g</li>  
                                    <li id="sly_80" value="600">600g</li>  
                                    <li id="sly_81" value="650">650g</li>  
                                    <li id="sly_82" value="700">700g</li>  
                                    <li id="sly_83" value="750">750g</li>  
                                    <li id="sly_84" value="800">800g</li>  
                                    <li id="sly_85" value="850">850g</li>   
                                    <li id="sly_86" value="900">900g</li>  
                                    <li id="sly_87" value="950">950g</li>   
                                    <li id="sly_88" value="999">999g</li>
                                </ul>
                            </div>  
                         </div>

<script>
 /**********   +- 버튼은 5칸식 이동 할것      ******************/

 {literal}
$('.controlgram_bt').click(function(){ 
   $("#controlgram").css({"visibility":"visible"});
      //$("#controlgram").visible();
      //$('#controlgram').show(); 
     // $( "#controlgram" ).fadeIn(200, function() { });   
       $('#controlrecipe').popup('open');
});
 
$('.fdpop_close3').click(function(){ 
   $("#controlgram").css({"visibility":"hidden"});
      //$("#controlgram").visible();
      //$('#controlgram').show(); 
     // $( "#controlgram" ).fadeIn(200, function() { });   
       $('#controlrecipe').popup('close');
});
 
$(window).on("navigate", function (event, data) {
  var direction = data.state.direction;
  if (direction == 'back') {
   $("#controlgram").css({"visibility":"hidden"});
    // do something
  }
  if (direction == 'forward') {
    // do something else
  }
});
//////////////////////////////////////////////////////
$('.controlgram2_bt').click(function(){ 
   $("#controlgram").css({"visibility":"visible"});
      //$("#controlgram").visible();
      //$('#controlgram').show(); 
     // $( "#controlgram" ).fadeIn(200, function() { });   
       $('#controlrecipe2').popup('open');
});
 
$('.fdpop_close4').click(function(){ 
   $("#controlgram").css({"visibility":"hidden"});
      //$("#controlgram").visible();
      //$('#controlgram').show(); 
     // $( "#controlgram" ).fadeIn(200, function() { });

       $('#controlrecipe2').popup('close');
});
 
// $(window).on("navigate", function (event, data) {
//   var direction = data.state.direction;
//   if (direction == 'back') {
//    $("#controlgram").css({"visibility":"hidden"});
//     // do something
//   }
//   if (direction == 'forward') {
//     // do something else
//   }




{/literal} 
 
</script>
<!-- 식품 재료리스트-->
<!-- 식품 재료리스트-->
<section data-role="page" class="jqm-demos" id="fd_recipe_detail">

	   		<div data-role="header" class="fdb_header04">  
                <div class="h_body">
               		<img src="{$rootUri}/imageB/m_img15.png" width="50">
                	<span class="header04span"><strong id="category_name">음식/식품명</strong></span>
                </div>
			</div><!-- /header --> 

	    <div role="main" class="ui-content"> 
        
        
        <div style="padding:10px 15px 15px 15px;">
        
            <div class="fdb_04body" id="recipe_detail">
            
            	<!-- 리스트 연속-->
            	<div class="fdb_04body_list">
                	<a href="#">
                	<span class="fdb_04body_g">130g</span>
                	<span class="fdb_04body_check"><span class="fdb_check_hover"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span></span>
                	<span class="fdb_04body_name">식품재료명</span>
                    </a>
                </div>
                
            	<div class="fdb_04body_tail_bt"> 
                	<a href="#"  data-rel="popup" data-position-to="window" data-transition="pop" class="fdb_04body_tail_bt02 controlgram2_bt">섭취량조절</a>
                	<a href="#" class="fdb_04body_tail_bt03">삭제</a>
                </div> 
            
            </div> 
                
        	<div class="fdb_foodtail2">
            	<a  href="#" data-rel="" class="fdb_tail_bt01" id="stuffs_now_intake_init">
                    <div style="display:inline-block; text-align:center;"><span class="fdb_foodtail_txt">저장 완료</span></div>
                </a>                
                <a href="#"  data-transition="slide" class="fdb_tail_bt01" id="stuffs_init">
                    <div style="display:inline-block; text-align:center;"><span class="fdb_foodtail_txt">재료 추가</span></div>
                </a>
            </div>
        </div>
		</div><!-- /content -->
  
		<!-- 섭취량 조절 -->
		<!-- 섭취량 조절 -->
		<!-- 섭취량 조절 -->
		<!-- 섭취량 조절 -->
		<!-- 섭취량 조절 -->
        
        <div data-role="popup" id="controlrecipe2" data-overlay-theme="b" data-theme="a" data-dismissible="false" style="margin-top:-30px;"> 
            
            <div role="main" class="ui-content">
                <div class="pop_head" style="padding:10px 10px 0px 10px; display:block; height:45px;;">
                
                    <span class="pop_close01" style="float:right;; display:inline-block; margin-top:-20px;margin-right:-20px"><a href="#" class="fdpop_close4" data-rel="back"><img src="{$rootUri}/imageB/m_img12.png" width="60"id="close2"></a></span>
                    <span style="float:left; display:inline-block;"><img src="{$rootUri}/imageB/m_img15.png" width="40"></span>
                    <span style="float:left; display:inline-block; padding-top:11px; padding-left:7px; font-size:18px; font-weight:bold; letter-spacing:-1px;"  id="modal_stuffs_name">음식/식품명</span>
                
                </div>
                <div class="pop_content" style="padding:">
                <!-- 조절 컨트롤 부분 -->
                <!--div class="fdbcon_head">비교이미지를 참고하시고 섭취 재료량을 조절해 주세요.</div--->
                <div class="fdbcon_back">
               		<img src="{$rootUri}/imageB/m_img17.png" class="fdbcon_back_img02">
                	<span class="fdbcon_bar"> 
                    	
                    </span>
                </div>
                 
                
                    
                </div>
                <div class="pop_tail2">
                	<span><a href="#" class="fdb_tail_bt2 prev" id="intake_down"><img src="{$rootUri}/imageB/m_img19.png" width="70"></a></span>
                    <span><a href="#"  data-rel="back" class="fdb_tail_bt" id="save_stuffs">저장</a></span>
                	<span><a href="#" class="fdb_tail_bt2 next" id="intake_up"><img src="{$rootUri}/imageB/m_img18.png" width="70"></a></span>
                </div>
                
            </div>
        </div>
		<!-- 섭취량 조절 끝 -->

</section><!-- /page -->


<!-- 음식/식품 검색 추가-->
<!-- 음식/식품 검색 추가-->
<!-- 음식/식품 검색 추가-->
<!-- 음식/식품 검색 추가-->

<section data-role="page" class="jqm-demos" id="fd_recipe_add">

	   		<div data-role="header" class="fdb_header04">  
                <div class="h_body">
                   <input type="text" name="name4" id="auto_1" class="fdb_input03 typeahead" style="margin: 0 auto;padding-left:10px; width:300px;font-size:15px" data-provide="typeahead" data-items="24"  data-source='' placeholder="검색하실 음식/식품명을 입력하세요. "/>
                </div>
			</div><!-- /header --> 

	    <div role="main" class="ui-content"> 
        
        
        <div style="padding:5px 15px 15px 15px;">
        
            <div class="fdb_04body">
       			<div class="fdb_cont2 list_food_select" style="margin-bottom:10px;">음식</div>
                <div class="fdn_foodlist3 list_food_select">
                    <a href="#" data-transition="slide" id="food_1" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a01.png"><span class="fdb_fd_name">밥류</span></a>
                    <a href="#" data-transition="slide" id="food_2" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a02.png"><span class="fdb_fd_name">빵,과자류</span></a>
                    <a href="#" data-transition="slide" id="food_3" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a03.png"><span class="fdb_fd_name">면,만두류</span></a>
                    <a href="#" data-transition="slide" id="food_4" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a04.png"><span class="fdb_fd_name">죽류</span></a>
                    <a href="#" data-transition="slide" id="food_5" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a05.png"><span class="fdb_fd_name">국,탕류</span></a>
                    <a href="#" data-transition="slide" id="food_6" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a06.png"><span class="fdb_fd_name">찌개류</span></a>
                    <a href="#" data-transition="slide" id="food_7" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a07.png"><span class="fdb_fd_name">찜류</span></a>
                    <a href="#" data-transition="slide" id="food_8" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a08.png"><span class="fdb_fd_name">구이류</span></a>
                    <a href="#" data-transition="slide" id="food_9" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a09.png"><span class="fdb_fd_name">전,부침류</span></a>
                    <a href="#" data-transition="slide" id="food_10" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a10.png"><span class="fdb_fd_name">볶음류</span></a>
                    <a href="#" data-transition="slide" id="food_11" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a11.png"><span class="fdb_fd_name">조림류</span></a>
                    <a href="#" data-transition="slide" id="food_12" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a12.png"><span class="fdb_fd_name">튀김류</span></a>
                    <a href="#" data-transition="slide" id="food_13" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a13.png"><span class="fdb_fd_name">나물,무침류</span></a>
                    <a href="#" data-transition="slide" id="food_14" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a14.png"><span class="fdb_fd_name">김치류</span></a>
                    <a href="#" data-transition="slide" id="food_15" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a15.png"><span class="fdb_fd_name">회류</span></a>
                    <a href="#" data-transition="slide" id="food_16" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a16.png"><span class="fdb_fd_name">젓갈류</span></a>
                    <a href="#" data-transition="slide" id="food_17" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a17.png"><span class="fdb_fd_name">장아찌류</span></a>
                    <a href="#" data-transition="slide" id="food_18" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a18.png"><span class="fdb_fd_name">양념류</span></a>
                    <a href="#" data-transition="slide" id="food_19" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a19.png"><span class="fdb_fd_name">우유,유제품</span></a>
                    <a href="#" data-transition="slide" id="food_20" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a20.png"><span class="fdb_fd_name">음료,주류,차</span></a>
                    <a href="#" data-transition="slide" id="food_21" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a21.png"><span class="fdb_fd_name">과일류</span></a>
                    <a href="#" data-transition="slide" id="food_22" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a22.png"><span class="fdb_fd_name">단일식품</span></a>
                    <a href="#" data-transition="slide" id="food_23" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a23.png"><span class="fdb_fd_name">떡류</span></a>
                    <a href="#" data-transition="slide" id="food_24" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a24.png"><span class="fdb_fd_name">기타</span></a>
                    <!-- <a href="#fd_recipe_add2" data-transition="slide" id="food_24" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_a24.png"><span class="fdb_fd_name">기타</span></a> -->
                </div>
            
            
       			<div class="fdb_cont2" style="margin-bottom:10px;">식품</div>
                <div class="fdn_foodlist3">
                    <a href="#" data-transition="slide" id="stuffs_1" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b01.png"><span class="fdb_fd_name">곡류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_2" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b02.png"><span class="fdb_fd_name">감자,전분류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_3" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b03.png"><span class="fdb_fd_name">당류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_4" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b04.png"><span class="fdb_fd_name">두류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_5" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b05.png"><span class="fdb_fd_name">종실류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_6" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b06.png"><span class="fdb_fd_name">채소류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_7" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b07.png"><span class="fdb_fd_name">버섯류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_8" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b08.png"><span class="fdb_fd_name">과실류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_9" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b09.png"><span class="fdb_fd_name">육류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_10" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b10.png"><span class="fdb_fd_name">난류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_11" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b11.png"><span class="fdb_fd_name">어패류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_12" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b12.png"><span class="fdb_fd_name">해조류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_13" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b13.png"><span class="fdb_fd_name">우유,유제품</span></a>
                    <a href="#" data-transition="slide" id="stuffs_14" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b14.png"><span class="fdb_fd_name">유지류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_15" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b15.png"><span class="fdb_fd_name">음료.주류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_16" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b16.png"><span class="fdb_fd_name">조미료류</span></a>
                    <a href="#" data-transition="slide" id="stuffs_17" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b17.png"><span class="fdb_fd_name">기타</span></a>
                    <!-- <a href="#fd_recipe_add2" data-transition="slide" id="stuffs_17" class="fdb_fd_category"><img src="{$rootUri}/imageB/food_b17.png"><span class="fdb_fd_name">기타</span></a> -->
                </div>
            </div> 
        </div>
		</div><!-- /content -->
</section><!-- /page -->


<!-- 카테고리 중분류 검색 추가-->
<!-- 카테고리 중분류 검색 추가-->
<!-- 카테고리 중분류 검색 추가-->
<!-- 카테고리 중분류 검색 추가-->
<!-- 카테고리 중분류 검색 추가-->

<section data-role="page" class="jqm-demos" id="fd_recipe_add2">

	   		<div data-role="header" class="fdb_header04">  
                <div class="h_body">
                   <input type="text" name="name4" id="auto_2" class="fdb_input03 typeahead" style="margin: 0 auto;padding-left:10px; width:250px;font-size:12px" data-provide="typeahead" data-items="24"  data-source='' placeholder="검색하실 음식/식품명을 입력하세요. "/>
                </div>
			</div><!-- /header --> 

	    <div role="main" class="ui-content"> 
        
        
        <div style="padding:5px 15px 15px 15px;">
        
            <div class="fdb_04body" id="category_food_list">            
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_add3" data-transition="slide">
                	<span class="fdb_06body_click"><img src="{$rootUri}/imageB/m_img16.png" class="fdb_img04"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div> 
                      
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_add3" data-transition="slide">
                	<span class="fdb_06body_click"><img src="{$rootUri}/imageB/m_img16.png" class="fdb_img04"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div> 
                      
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_add3" data-transition="slide">
                	<span class="fdb_06body_click"><img src="{$rootUri}/imageB/m_img16.png" class="fdb_img04"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div> 
                      
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_add3" data-transition="slide">
                	<span class="fdb_06body_click"><img src="{$rootUri}/imageB/m_img16.png" class="fdb_img04"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div> 
            
            </div> 
            
        </div>
        
		</div><!-- /content -->

</section><!-- /page -->



<!-- 카테고리 중분류 검색 추가-->
<!-- 카테고리 중분류 검색 추가-->
<!-- 카테고리 중분류 검색 추가-->
<!-- 카테고리 중분류 검색 추가-->
<!-- 카테고리 중분류 검색 추가-->

<section data-role="page" class="jqm-demos" id="fd_recipe_add3">

	   		<div data-role="header" class="fdb_header04">  
                <div class="h_body">
                   <input type="text" name="name4" id="auto_3" class="fdb_input03 typeahead"  style="margin: 0 auto;padding-left:10px; width:250px;font-size:12px" data-provide="typeahead" data-items="24" data-source='' placeholder="검색하실 음식/식품명을 입력하세요. "/>
                </div>
			</div><!-- /header --> 

	    <div role="main" class="ui-content"> 
        
        
        <div style="padding:5px 15px 15px 15px;">
        
            <div class="fdb_04body" id="category_list">            
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_detail">
                	<span class="fdb_06body_check"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명카테고리명카테고리명카테고리명</span>
                    </a>
                </div>
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_detail">
                	<span class="fdb_06body_check"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명카테고리명카테고리명카테고리명</span>
                    </a>
                </div>
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_detail">
                	<span class="fdb_06body_check"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명카테고리명카테고리명카테고리명</span>
                    </a>
                </div>
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_detail">
                	<span class="fdb_06body_check"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div>
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_detail">
                	<span class="fdb_06body_check"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div>
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_detail">
                	<span class="fdb_06body_check"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div>
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_detail">
                	<span class="fdb_06body_check"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div>
            	<!-- 리스트 연속-->
            	<div class="fdb_06body_list">
                	<a href="#fd_recipe_detail">
                	<span class="fdb_06body_check"><img src="{$rootUri}/imageB/m_img14.png" width="28"></span>
                	<img src="{$rootUri}/imageB/m_img15.png" class="fdb_img03">
                	<span class="fdb_06body_name">카테고리명</span>
                    </a>
                </div>
            </div> 
        </div>
		</div><!-- /content -->
</section><!-- /page -->
     <!--script src="../js/horizontal/jquery.min.js"></script-->


<!-- image -->
<form method="POST" name="myform" enctype="multipart/form-data" action='/imgMealsUpload' id="photoImg" data-ajax="false" style="visibility:hidden;">
    <input type="hidden" name="MAX_FILE_SIZE" value="3000000" />
    <input type="file" accept="image/*" capture="camera" name='userfile' id='userfile'/>
<!--     <button class="ui-btn3 bt-size4 ui-in" value="사진등록" id="submit_bt">사진등록</button>  -->
</form>

    <script src="../../js/horizontal/plugins.js"></script>
    <script src="../../js/horizontal/sly.min.js"></script>
    <script src="../../js/horizontal/horizontal.js"></script>
<script>
  var serverUrl = '{$rootUri}/';

{literal}

        // var _gaq=[['_setAccount','UA-838758-7'],['_trackPageview']];
        // (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
        // g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
        // s.parentNode.insertBefore(g,s)}(document,'script'));

 $(document).ready(function($) {

            // var timer = undefined;
            $('#food_up').on('click', function(){
                // tictacP();
                // var val_li = $('.clearfix li.active').val();
                // $('.clearfix li.active').removeClass('active').addClass('');
                // var id_sp = sly_location(val_li);
                // if(id_sp > 84){
                //     $('#sly_88').addClass('active');
                // }else{
                //     $('#sly_'+(parseInt(id_sp)+5)).addClass('active');
                // }
                for (var i=0; i<5; i++){
                    $('#centered').sly('next');
                }
            }); 
            $('#food_down').on('click', function(){
                // tictacM();
                // var val_li = $('.clearfix li.active').val();
                // $('.clearfix li.active').removeClass('active').addClass('');
                // var id_sp = sly_location(val_li);
                // if(id_sp < 4){
                //     $('#sly_0').addClass('active');
                // }else{
                //     $('#sly_'+(parseInt(id_sp)-5)).addClass('active');
                // }
                for (var i=0; i<5; i++){
                    $('#centered').sly('prev');
                }
            }); 
            $('#intake_up').on('click', function(){
                // tictacPp();
                // var val_li = $('.clearfix li.active').val();
                // $('.clearfix li.active').removeClass('active').addClass('');
                // var id_sp = sly_location(val_li);
                // if(id_sp > 84){
                //     $('#sly_88').addClass('active');
                // }else{
                //     $('#sly_'+(parseInt(id_sp)+5)).addClass('active');
                // }
                for (var i=0; i<5; i++){
                    $('#centered').sly('next');
                }
            }); 
            $('#intake_down').on('click', function(){
                // tictacMm();
                // var val_li = $('.clearfix li.active').val();
                // $('.clearfix li.active').removeClass('active').addClass('');
                // var id_sp = sly_location(val_li);
                // if(id_sp < 4){
                //     $('#sly_0').addClass('active');
                // }else{
                //     $('#sly_'+(parseInt(id_sp)-5)).addClass('active');
                // }
                for (var i=0; i<5; i++){
                    $('#centered').sly('prev');
                }
            }); 

            // $('#food_up').on('mousedown', function(){
            //     timer = tictacP();
            //     timer = window.setInterval('tictacP()', 200);
            // }); 
            // $('#food_up').on('mouseup', function(){
            //     timer = window.clearInterval(timer);
            // }); 
            // $('#food_down').on('mousedown', function(){
            //     timer = tictacM();
            //     timer = window.setInterval('tictacM()', 200);
            // }); 
            // $('#food_down').on('mouseup', function(){
            //     timer = window.clearInterval(timer);
            // });
            // $('#intake_up').on('mousedown', function(){
            //     timer = tictacPp();
            //     timer = window.setInterval('tictacP()', 200);
            // }); 
            // $('#intake_up').on('mouseup', function(){
            //     timer = window.clearInterval(timer);
            // }); 
            // $('#intake_down').on('mousedown', function(){
            //     timer = tictacMm();
            //     timer = window.setInterval('tictacM()', 200);
            // }); 
            // $('#intake_down').on('mouseup', function(){
            //     timer = window.clearInterval(timer);
            // });              
 });

function sly_location(data){
    var intDate = parseInt(data*10)/10;
    var val_sly = 0;
    var index_sly = 0;
    if(intDate <= 0.1){
        val_sly = 0.1;
        index_sly = 0;
    }else if(intDate > 0.1 && intDate <= 0.2){
        val_sly = 0.2;
        index_sly = 1;
    }else if(intDate > 0.2 && intDate <= 0.4){
        val_sly = 0.4;
        index_sly = 2;
    }else if(intDate > 0.4 && intDate <= 0.5){
        val_sly = 0.5;
        index_sly = 3;
    }else if(intDate > 0.5 && intDate <= 0.6){
        val_sly = 0.6;
        index_sly = 4;
    }else if(intDate > 0.6 && intDate <= 0.7){
        val_sly = 0.7;
        index_sly = 5;
    }else if(intDate > 0.7 && intDate <= 0.8){
        val_sly = 0.8;
        index_sly = 6;
    }else if(intDate > 0.8 && intDate <= 0.9){
        val_sly = 0.9;
        index_sly = 7;
    }else if(intDate > 0.9 && intDate <= 1){
        val_sly = 1;
        index_sly = 8;
    }else if(intDate > 1 && intDate <= 2){
        val_sly = 2;
        index_sly = 9;
    }else if(intDate > 2 && intDate <= 4){
        val_sly = 4;
        index_sly = 10;
    }else if(intDate > 4 && intDate <= 5){
        val_sly = 5;
        index_sly = 11;
    }else if(intDate > 5 && intDate <= 6){
        val_sly = 6;
        index_sly = 12;
    }else if(intDate > 6 && intDate <= 7){
        val_sly = 7;
        index_sly = 13;
    }else if(intDate > 7 && intDate <= 8){
        val_sly = 8;
        index_sly = 14;
    }else if(intDate > 8 && intDate <= 9){
        val_sly = 9;
        index_sly = 15;
    }else if(intDate > 9 && intDate <= 10){
        val_sly = 10;
        index_sly = 16;
    }else if(intDate > 10 && intDate <= 11){
        val_sly = 11;
        index_sly = 17;
    }else if(intDate > 11 && intDate <= 12){
        val_sly = 12;
        index_sly = 18;
    }else if(intDate > 12 && intDate <= 13){
        val_sly = 13;
        index_sly = 19;
    }else if(intDate > 13 && intDate <= 14){
        val_sly = 14;
        index_sly = 20;
    }else if(intDate > 14 && intDate <= 15){
        val_sly = 15;
        index_sly = 21;
    }else if(intDate > 15 && intDate <= 16){
        val_sly = 16;
        index_sly = 22;
    }else if(intDate > 16 && intDate <= 17){
        val_sly = 17;
        index_sly = 23;
    }else if(intDate > 17 && intDate <= 18){
        val_sly = 18;
        index_sly = 24;
    }else if(intDate > 18 && intDate <= 19){
        val_sly = 19;
        index_sly = 25;
    }else if(intDate > 19 && intDate <= 20){
        val_sly = 20;
        index_sly = 26;
    }else if(intDate > 20 && intDate <= 22){
        val_sly = 22;
        index_sly = 27;
    }else if(intDate > 22 && intDate <= 24){
        val_sly = 24;
        index_sly = 28;
    }else if(intDate > 24 && intDate <= 26){
        val_sly = 26;
        index_sly = 29;
    }else if(intDate > 26 && intDate <= 28){
        val_sly = 28;
        index_sly = 30;
    }else if(intDate > 28 && intDate <= 30){
        val_sly = 30;
        index_sly = 31;
    }else if(intDate > 30 && intDate <= 32){
        val_sly = 32;
        index_sly = 32;
    }else if(intDate > 32 && intDate <= 34){
        val_sly = 34;
        index_sly = 33;
    }else if(intDate > 34 && intDate <= 36){
        val_sly = 36;
        index_sly = 34;
    }else if(intDate > 36 && intDate <= 38){
        val_sly = 38;
        index_sly = 35;
    }else if(intDate > 38 && intDate <= 40){
        val_sly = 40;
        index_sly = 36;
    }else if(intDate > 40 && intDate <= 42){
        val_sly = 42;
        index_sly = 37;
    }else if(intDate > 42 && intDate <= 44){
        val_sly = 44;
        index_sly = 38;
    }else if(intDate > 44 && intDate <= 46){
        val_sly = 46;
        index_sly = 39;
    }else if(intDate > 46 && intDate <= 48){
        val_sly = 48;
        index_sly = 40;
    }else if(intDate > 48 && intDate <= 50){
        val_sly = 50;
        index_sly = 41;
    }else if(intDate > 50 && intDate <= 55){
        val_sly = 55;
        index_sly = 42;
    }else if(intDate > 55 && intDate <= 60){
        val_sly = 60;
        index_sly = 43;
    }else if(intDate > 60 && intDate <= 65){
        val_sly = 65;
        index_sly = 44;
    }else if(intDate > 65 && intDate <= 70){
        val_sly = 70;
        index_sly = 45;
    }else if(intDate > 70 && intDate <= 75){
        val_sly = 75;
        index_sly = 46;
    }else if(intDate > 75 && intDate <= 80){
        val_sly = 80;
        index_sly = 47;
    }else if(intDate > 80 && intDate <= 85){
        val_sly = 85;
        index_sly = 48;
    }else if(intDate > 85 && intDate <= 90){
        val_sly = 90;
        index_sly = 49;
    }else if(intDate > 90 && intDate <= 95){
        val_sly = 95;
        index_sly = 50;
    }else if(intDate > 95 && intDate <= 100){
        val_sly = 100;
        index_sly = 51;
    }else if(intDate > 100 && intDate <= 110){
        val_sly = 110;
        index_sly = 52;
    }else if(intDate > 110 && intDate <= 120){
        val_sly = 120;
        index_sly = 53;
    }else if(intDate > 120 && intDate <= 130){
        val_sly = 130;
        index_sly = 54;
    }else if(intDate > 130 && intDate <= 140){
        val_sly = 140;
        index_sly = 55;
    }else if(intDate > 140 && intDate <= 150){
        val_sly = 150;
        index_sly = 56;
    }else if(intDate > 150 && intDate <= 160){
        val_sly = 160;
        index_sly = 57;
    }else if(intDate > 160 && intDate <= 170){
        val_sly = 170;
        index_sly = 58;
    }else if(intDate > 170 && intDate <= 180){
        val_sly = 180;
        index_sly = 59;
    }else if(intDate > 180 && intDate <= 190){
        val_sly = 190;
        index_sly = 60;
    }else if(intDate > 190 && intDate <= 200){
        val_sly = 200;
        index_sly = 61;
    }else if(intDate > 200 && intDate <= 220){
        val_sly = 220;
        index_sly = 62;
    }else if(intDate > 220 && intDate <= 240){
        val_sly = 240;
        index_sly = 63;
    }else if(intDate > 240 && intDate <= 260){
        val_sly = 260;
        index_sly = 64;
    }else if(intDate > 260 && intDate <= 280){
        val_sly = 280;
        index_sly = 65;
    }else if(intDate > 280 && intDate <= 300){
        val_sly = 300;
        index_sly = 66;
    }else if(intDate > 300 && intDate <= 320){
        val_sly = 320;
        index_sly = 67;
    }else if(intDate > 320 && intDate <= 340){
        val_sly = 340;
        index_sly = 68;
    }else if(intDate > 340 && intDate <= 360){
        val_sly = 360;
        index_sly = 69;
    }else if(intDate > 360 && intDate <= 380){
        val_sly = 380;
        index_sly = 70;
    }else if(intDate > 380 && intDate <= 400){
        val_sly = 400;
        index_sly = 71;
    }else if(intDate > 400 && intDate <= 420){
        val_sly = 420;
        index_sly = 72;
    }else if(intDate > 420 && intDate <= 440){
        val_sly = 440;
        index_sly = 73;
    }else if(intDate > 440 && intDate <= 460){
        val_sly = 460;
        index_sly = 74;
    }else if(intDate > 460 && intDate <= 480){
        val_sly = 480;
        index_sly = 75;
    }else if(intDate > 480 && intDate <= 500){
        val_sly = 500;
        index_sly = 76;
    }else if(intDate > 500 && intDate <= 550){
        val_sly = 550;
        index_sly = 77;
    }else if(intDate > 550 && intDate <= 600){
        val_sly = 600;
        index_sly = 78;
    }else if(intDate > 600 && intDate <= 650){
        val_sly = 650;
        index_sly = 79;
    }else if(intDate > 650 && intDate <= 700){
        val_sly = 700;
        index_sly = 80;
    }else if(intDate > 700 && intDate <= 750){
        val_sly = 750;
        index_sly = 81;
    }else if(intDate > 750 && intDate <= 800){
        val_sly = 800;
        index_sly = 82;
    }else if(intDate > 800 && intDate <= 850){
        val_sly = 850;
        index_sly = 83;
    }else if(intDate > 850 && intDate <= 900){
        val_sly = 900;
        index_sly = 84;
    }else if(intDate > 900 && intDate <= 950){
        val_sly = 950;
        index_sly = 85;
    }else if(intDate > 950 && intDate <= 999){
        val_sly = 9;
        index_sly = 86;
    }else{
        val_sly = 50;
        index_sly = 41;
    }
    return index_sly;
}

function tictacP(){
        var val_center = $('#pop_food_center').text();
        var diffLeft = 0;
        var diffRight = 0;
        var centerInt = 0;
        // 0~1 : 0.1 단위  1~50 : 1단위  50 ~100 : 5단위 100~500 : 10단위 500~999 : 50단위 // 최소 0.1 ~ 최대 999
        if(parseInt(val_center*10)/10 <= 0.1){
            centerInt = 0.2;
            diffLeft = 0.1;
            diffRight = 0.3;
        }else if(parseInt(val_center*10)/10 > 0.1 && parseInt(val_center) < 1){
            var errorInt = parseInt(val_center*10)/10; 
            centerInt = parseInt((errorInt+0.15)*10)/10;
            diffLeft = parseInt(errorInt*10)/10;
            diffRight = parseInt((errorInt+0.25)*10)/10 ;
        }else if(parseInt(val_center) >= 1 && parseInt(val_center) < 50){
            centerInt = parseInt(val_center)+1;
            diffLeft = parseInt(val_center);
            diffRight = parseInt(val_center)+2;
        }else if(parseInt(val_center) >= 50 && parseInt(val_center) < 100){
            centerInt = parseInt(val_center)+5;
            diffLeft = parseInt(val_center);
            diffRight = parseInt(val_center)+10;
        }else if(parseInt(val_center) >= 100 && parseInt(val_center) < 500){
            centerInt = parseInt(val_center/10)*10 +10;
            diffLeft = parseInt(val_center/10)*10;
            diffRight = parseInt(val_center/10)*10 +20;
        }else if(parseInt(val_center) >= 500 && parseInt(val_center) < 1000){
            centerInt = parseInt(val_center/10)*10+50;
            diffLeft = parseInt(val_center/10)*10;
            diffRight = parseInt(val_center/10)*10+100;
        }else if(parseInt(val_center) >= 1000){
            centerInt = parseInt(val_center/10)*10;
            diffLeft = centerInt-50;
            diffRight = 1000;
            alert("더 이상 추가할 수 없습니다.");
        }
        $('#pop_food_center').text(centerInt);
        $('#pop_food_left').text(diffLeft+"g");
        $('#pop_food_right').text(diffRight+"g");  
}
function tictacM(){
        var val_center = $('#pop_food_center').text();
        var diffLeft = 0;
        var diffRight = 0;
        var centerInt = 0;
        // 0~1 : 0.1 단위  1~50 : 1단위  50 ~100 : 5단위 100~500 : 10단위 500~999 : 50단위 // 최소 0.1 ~ 최대 999
        if(parseInt(val_center*10)/10 <= 0.1){
            centerInt = 0.1;
            diffLeft = 0;
            diffRight = 0.2;
            alert("더 이상 내릴 수 없습니다.");            
        }else if(parseInt(val_center*10)/10 > 0.1 && parseInt(val_center*10)/10 <= 1){ 
            centerInt = parseInt((val_center - 0.1)*10)/10;
            diffLeft = parseInt((val_center  - 0.2)*10)/10;
            diffRight = parseInt(val_center*10)/10;
        }else if(parseInt(val_center) > 1 && parseInt(val_center) < 50){
            if(parseInt(val_center) == 2){
                diffLeft = 0.9;
            }else{
                diffLeft = parseInt(val_center) - 2;
            } 
            centerInt = parseInt(val_center) - 1;
            diffRight = parseInt(val_center);
        }else if(parseInt(val_center) >= 50 && parseInt(val_center) < 100){
            centerInt = parseInt(val_center) - 5;
            diffLeft = parseInt(val_center) - 10;
            diffRight = parseInt(val_center);
        }else if(parseInt(val_center) >= 100 && parseInt(val_center) < 500){
            centerInt = parseInt(val_center/10)*10 - 10;
            diffLeft = parseInt(val_center/10)*10 - 20;
            diffRight = parseInt(val_center/10)*10;
        }else if(parseInt(val_center) >= 500 && parseInt(val_center) < 1000){
            centerInt = parseInt(val_center/10)*10 - 50;
            diffLeft = parseInt(val_center/10)*10 - 100;
            diffRight = parseInt(val_center/10)*10;
        }else if(parseInt(val_center) >= 1000){
            centerInt = parseInt(val_center/10)*10 - 50;
            diffLeft = parseInt(val_center/10)*10 - 100;
            diffRight = parseInt(val_center/10)*10;

        }
        $('#pop_food_center').text(centerInt);
        $('#pop_food_left').text(diffLeft+"g");
        $('#pop_food_right').text(diffRight+"g");       
}

function tictacPp(){
                var val_center = $('#pop_center').text();
        
                var diffLeft = 0;
                var diffRight = 0;
                var centerInt = 0;
                // 0~1 : 0.1 단위  1~50 : 1단위  50 ~100 : 5단위 100~500 : 10단위 500~999 : 50단위 // 최소 0.1 ~ 최대 999
                if(parseInt(val_center*10)/10 <= 0.1){
                    centerInt = 0.2;
                    diffLeft = 0.1;
                    diffRight = 0.3;
                }else if(parseInt(val_center*10)/10 > 0.1 && parseInt(val_center) < 1){
                    var errorInt = parseInt(val_center*10)/10; 
                    centerInt = parseInt((errorInt+0.15)*10)/10;
                    diffLeft = parseInt(errorInt*10)/10;
                    diffRight = parseInt((errorInt+0.25)*10)/10 ;
                }else if(parseInt(val_center) >= 1 && parseInt(val_center) < 50){
                    centerInt = parseInt(val_center)+1;
                    diffLeft = parseInt(val_center);
                    diffRight = parseInt(val_center)+2;
                }else if(parseInt(val_center) >= 50 && parseInt(val_center) < 100){
                    centerInt = parseInt(val_center)+5;
                    diffLeft = parseInt(val_center);
                    diffRight = parseInt(val_center)+10;
                }else if(parseInt(val_center) >= 100 && parseInt(val_center) < 500){
                    centerInt = parseInt(val_center/10)*10 +10;
                    diffLeft = parseInt(val_center/10)*10;
                    diffRight = parseInt(val_center/10)*10 +20;
                }else if(parseInt(val_center) >= 500 && parseInt(val_center) < 1000){
                    centerInt = parseInt(val_center/10)*10+50;
                    diffLeft = parseInt(val_center/10)*10;
                    diffRight = parseInt(val_center/10)*10+100;
                }else if(parseInt(val_center) >= 1000){
                    centerInt = parseInt(val_center/10)*10;
                    diffLeft = centerInt-50;
                    diffRight = 1000;
                    alert("더 이상 추가할 수 없습니다.");
                }
                $('#pop_center').text(centerInt);
                $('#pop_left').text(diffLeft+"g");
                $('#pop_right').text(diffRight+"g");   
}
function tictacMm(){
                var val_center = $('#pop_center').text();

                var diffLeft = 0;
                var diffRight = 0;
                var centerInt = 0;
                // 0~1 : 0.1 단위  1~50 : 1단위  50 ~100 : 5단위 100~500 : 10단위 500~999 : 50단위 // 최소 0.1 ~ 최대 999
                if(parseInt(val_center*10)/10 <= 0.1){
                    centerInt = 0.1;
                    diffLeft = 0;
                    diffRight = 0.2;
                    alert("더 이상 내릴 수 없습니다.");            
                }else if(parseInt(val_center*10)/10 > 0.1 && parseInt(val_center*10)/10 <= 1){ 
                    centerInt = parseInt((val_center - 0.1)*10)/10;
                    diffLeft = parseInt((val_center  - 0.2)*10)/10;
                    diffRight = parseInt(val_center*10)/10;
                }else if(parseInt(val_center) > 1 && parseInt(val_center) < 50){
                    if(parseInt(val_center) == 2){
                        diffLeft = 0.9;
                    }else{
                        diffLeft = parseInt(val_center) - 2;
                    } 
                    centerInt = parseInt(val_center) - 1;
                    diffRight = parseInt(val_center);
                }else if(parseInt(val_center) >= 50 && parseInt(val_center) < 100){
                    centerInt = parseInt(val_center) - 5;
                    diffLeft = parseInt(val_center) - 10;
                    diffRight = parseInt(val_center);
                }else if(parseInt(val_center) >= 100 && parseInt(val_center) < 500){
                    centerInt = parseInt(val_center/10)*10 - 10;
                    diffLeft = parseInt(val_center/10)*10 - 20;
                    diffRight = parseInt(val_center/10)*10;
                }else if(parseInt(val_center) >= 500 && parseInt(val_center) < 1000){
                    centerInt = parseInt(val_center/10)*10 - 50;
                    diffLeft = parseInt(val_center/10)*10 - 100;
                    diffRight = parseInt(val_center/10)*10;
                }else if(parseInt(val_center) >= 1000){
                    centerInt = parseInt(val_center/10)*10 - 50;
                    diffLeft = parseInt(val_center/10)*10 - 100;
                    diffRight = parseInt(val_center/10)*10;

                }
                $('#pop_center').text(centerInt);
                $('#pop_left').text(diffLeft+"g");
                $('#pop_right').text(diffRight+"g");   
}



// ajax init
function getAjax (httpUrl, method, sendData, callback) {
    $.ajax({
        type:method,
        contentType: 'applicaation/json',
        url:httpUrl,
        timeout:8000,  // I chose 8 secs for kicks
        tryCount : 0,
        retryLimit : 5,
        dataType: 'json',
        data:sendData,
        success:function (data, textStatus, jqXHR) {
            if(typeof callback === "function"){
                callback(data);
            }
        },
        error:function (jqXHR, textStatus, errorThrown) {
            data = {ret:'false'};
            callback(data);
            // alert('Error connect to server');
        }
    })
}

function getJsonString (obj) {
    return JSON.stringify(obj);
}
// ajax End

// 음식 소분류 목록 
var food_small = {/literal}{$food_small}{literal};
// day
var mealsDays = {/literal}{$mealsDays}{literal};
// userStuffs
var userStuffs = {/literal}{$meals}{literal};

var href_URL = $(location).attr("href");
var href = href_URL;

// var href = "http://www.fooddr.co.kr/FDLite_App03";
// 음식 섭취 정보 
var intakeInfo = {
    info:{
        date:null,
        meals:null,
        locate:null
    }
}
// 음식 리스트 
var now_intake = {};
//달력 클릭시 // 테스트
if(mealsDays.length > 0){
    intakeInfo.info.date = mealsDays[0].regDate;
    var spDate = intakeInfo.info.date.split("-");
    $('#title_date').text(spDate[1]+"월 "+spDate[2]+"일");
 }

$('.fdb_03head_ov').removeClass("fdb_03head_ov").addClass("fdb_03head");
$("#day_"+intakeInfo.info.date).removeClass("fdb_03head").addClass("fdb_03head_ov");

//미등록 선택시 
$('.fdb_03head_non').on("click", function(){
   var dayClass = $(this).attr("id");
   $('.fdb_03head_ov').removeClass("fdb_03head_ov").addClass("fdb_03head");       
   $("#"+dayClass).removeClass("fdb_03head_non").addClass("fdb_03head_ov");
   // re_fdb_03head($(this).attr("id"));
});

//등록돤 날짜 선택시 
$('.fdb_03head').on("click", function(){ 
    var dayClass = $(this).attr("id");
    var split_id = dayClass.split("_");

    $('.fdb_03head_ov').removeClass("fdb_03head_ov").addClass("fdb_03head");
    $("#"+dayClass).removeClass("fdb_03head").addClass("fdb_03head_ov");
    var replace_id = dayClass.replace("day_","");
    intakeInfo.info.date = replace_id;


    // var spDate = intakeInfo.info.date.split("-");
    // $('#title_date').text(spDate[1]+"월 "+spDate[2]+"일");

    mealsList(intakeInfo.info.date);
    // re_fdb_03head_non();
});
// function re_fdb_03head_non(){
//    var dayClass = $(this).attr("id");
//    $('.fdb_03head_ov').removeClass("fdb_03head_ov").addClass("fdb_03head");       
//    $("#"+dayClass).removeClass("fdb_03head_non").addClass("fdb_03head_ov");
// }

// function re_fdb_03head(id){
//     var dayClass = $(this).attr("id");
//     var split_id = dayClass.split("_");

//     $('.fdb_03head_ov').removeClass("fdb_03head_ov").addClass("fdb_03head");
//     $("#"+dayClass).removeClass("fdb_03head").addClass("fdb_03head_ov");
//     var replace_id = dayClass.replace("day_","");
//     intakeInfo.info.date = replace_id;


//     // var spDate = intakeInfo.info.date.split("-");
//     // $('#title_date').text(spDate[1]+"월 "+spDate[2]+"일");

//     mealsList(intakeInfo.info.date);
// }

$('.fdb_03head_ov').on("click", function(){ 
    var dayClass = $(this).attr("id");
    $('.fdb_03head_ov').removeClass("fdb_03head_ov").addClass("fdb_03head");
    $("#"+dayClass).removeClass("fdb_03head").addClass("fdb_03head_ov");
    var replace_id = dayClass.replace("day_","");
    intakeInfo.info.date = replace_id;
    mealsList(intakeInfo.info.date);
});

$('.class_date_03').on("click", function(){
 $('.fdb_foodlist').hide();
});

$(function() {
  // $ mobile.page.prototype.options.degradeInputs = false;
  $( "#datepicker0" ).datepicker({ dateFormat: 'mm-dd' });
  $( "#datepicker1" ).datepicker({ dateFormat: 'mm-dd' });
  $( "#datepicker2" ).datepicker({ dateFormat: 'mm-dd' });
  // mealsInit($('.ui-btn-active div input').val());
});

$("#datepicker0").datepicker({
        changeMonth: true,
        changeYear: true,
        onSelect: function(date) { //달력에서 날짜를 선택시 호출되는 메소드
            try{
                    dateView(date);
                }catch (e) {}
        }
})
$("#datepicker1").datepicker({
        changeMonth: true,
        changeYear: true,
        onSelect: function(date) { //달력에서 날짜를 선택시 호출되는 메소드
            try{
                    dateView(date);
                }catch (e) {}
        }
})
$("#datepicker2").datepicker({
        changeMonth: true,
        changeYear: true,
        onSelect: function(date) { //달력에서 날짜를 선택시 호출되는 메소드
            try{
                    dateView(date);
                }catch (e) {}
        }
})

function dateView(date){
    var datepic = $('.fdb_03head_ov .class_week_03 .ui-shadow-inset .datepicker').val();  // "05/14/2014"
    if(datepic != ""){
        var spDate = datepic.split("/");
        $('#title_date').text(spDate[0]+"월 "+spDate[1]+"일");

        $('.fdb_03head_ov .class_week_03 .dateview').text(spDate[0]+"월 "+spDate[1]+"일");
    }
}


 $('#datepicker0').hide();
 $('#datepicker1').hide();
 $('#datepicker2').hide();


$("#picker_0").click(function() {
 $('#datepicker0').show();
  $( "#datepicker0" ).focus();
  $('.ui-datepicker').css("background","#ffe");
 $('#datepicker0').hide();
  

});

$("#picker_1").click(function() { 
 $('#datepicker1').show();
  $( "#datepicker1" ).focus();
  $('.ui-datepicker').css("background","#ffe");
 $('#datepicker1').hide();

});

$("#picker_2").click(function() { 
 $('#datepicker2').show();
 $( "#datepicker2" ).focus();
  $('.ui-datepicker').css("background","#ffe");
 $('#datepicker2').hide();

});

// $(".datepicker").hide(); 

// 섭취 창 클로스
$('#close').on('click', function(){
    $( "#controlrecipe" ).popup("close");
});
$('#close2').on('click', function(){
    $( "#controlrecipe2" ).popup("close");
});
// app03 메인 리스트 뷰
function mealsList(day){
    // list init
    
    for(var i=1;i<7;i++){
         $('#meals_list_'+i).parent().parent().show();
    } 
    if($('.fdb_03head_ov').length > 0){
        var id_select = $('.fdb_03head_ov').attr("id");
        var id_set = id_select.split("_");
        if(id_set[0] != 'picker'){
            var spDate = intakeInfo.info.date.split("-");
            $('#title_date').text(spDate[1]+"월 "+spDate[2]+"일");
        }        
    }

    $('.fdblist_body_list span').remove();

    var m1_tr = '';
    var m2_tr = '';
    var m3_tr = '';
    var m4_tr = '';
    var m5_tr = '';
    var m6_tr = '';
// 사진 초기화 
    $('.fdb_pictlist').remove();    
// 끼니 사진을 위한 끼니 번호 
    var m_no = {}
// 사진이 있는 지 확인 
    var m_img = {};

    for (var i=0; i<userStuffs.length;i++){
        if(userStuffs[i].day == day){
            var intake_round = userStuffs[i].intake;
            if(parseInt(userStuffs[i].intake) > 10){
                intake_round = Math.round(intake_round);
            }
            if(userStuffs[i].meals == "아침"){
                m1_tr += '<span class="fdblist_body_list_data">'+userStuffs[i].food+' '+intake_round+'g</span>';
                m_no[1] = userStuffs[i].ino;
                m_img[1] = userStuffs[i].image;
            }else if(userStuffs[i].meals == "점심"){
                m2_tr += '<span class="fdblist_body_list_data">'+userStuffs[i].food+' '+intake_round+'g</span>';
                m_no[2] = userStuffs[i].ino;
                m_img[2] = userStuffs[i].image;
            }else if(userStuffs[i].meals == "저녁"){
                m3_tr += '<span class="fdblist_body_list_data">'+userStuffs[i].food+' '+intake_round+'g</span>';
                m_no[3] = userStuffs[i].ino;
                m_img[3] = userStuffs[i].image;
            }else if(userStuffs[i].meals == "오전간식"){
                m4_tr += '<span class="fdblist_body_list_data">'+userStuffs[i].food+' '+intake_round+'g</span>';
                m_no[4] = userStuffs[i].ino;
                m_img[4] = userStuffs[i].image;
            }else if(userStuffs[i].meals == "오후간식"){
                m5_tr += '<span class="fdblist_body_list_data">'+userStuffs[i].food+' '+intake_round+'g</span>';
                m_no[5] = userStuffs[i].ino;
                m_img[5] = userStuffs[i].image;
            }else if(userStuffs[i].meals == "야간간식"){
                m6_tr += '<span class="fdblist_body_list_data">'+userStuffs[i].food+' '+intake_round+'g</span>';
                m_no[6] = userStuffs[i].ino;
                m_img[6] = userStuffs[i].image;
            }
        }
    }
    $('#meals_list_1').append(m1_tr);    
    $('#meals_list_2').append(m2_tr);    
    $('#meals_list_3').append(m3_tr);    
    $('#meals_list_4').append(m4_tr);    
    $('#meals_list_5').append(m5_tr);    
    $('#meals_list_6').append(m6_tr);

// image append 
    for (var j=1; j<7; j++){
        if(m_img[j] == null){
           $('#meals_list_'+j).parent().append('<div class="fdb_pictlist"><a href="#" style="" class="fdb_pictlist_bt ui-link" id="info_'+m_no[j]+'"><div class="fdb_05head_st"><img src="../../imageB/m_img07.png"></div><div class="fdb_05head_sb">사진입력</div></a></div> ');     
        }else{
           $('#meals_list_'+j).parent().append('<div class="fdb_pictlist"><a href="#" style="background: url(../../img_m/thumbnail/'+m_img[j]+') no-repeat center center; "  class="fdb_pictlist_bt" id="info_'+m_no[j]+'"></a></div>');     
       }
    }
// image click event 
    $('.fdb_pictlist_bt').on('click', function(){
        $('#userfile').trigger('click'); 
        var id_string = $(this).attr("id");
        var id = id_string.replace('info_','');
        // alert(id);
        getAjax(serverUrl+'imageCookies','post',getJsonString({'no': id}),function(data){
          if(data == "success"){

          }else{
            alert("통신 문제 !!!");
          }
        });        
    });
//
    $("#userfile").change(function(){ 
      document.myform.submit();
    }); 

    for(var i=1;i<7;i++){
        if( $('#meals_list_'+i+' span').length == 0){
            $('#meals_list_'+i).parent().parent().hide();
        }
    }    
}

mealsList(intakeInfo.info.date);

// 수정 버튼 클릭시 
$('.fdblist_body_edit').on("click", function(){

    // userStuffs = [];
    $('#select_meals').css("display","none" );
    $('#select_locate').css("display","none");
    var re_href = href.replace('#fd_recipe','');
     if ($('.fdb_03head_ov').length > 0){
        var id_select = $('.fdb_03head_ov').attr("id");
        var id_set = id_select.split("_");
        if(id_set[0] == 'picker'){
            var datepic = $('.fdb_03head_ov .class_week_03 .ui-shadow-inset .datepicker').val();  // "05/14/2014"
            if(datepic != ""){
                var spDate = datepic.split("/");
                intakeInfo.info.date = spDate[2]+"-"+spDate[0]+"-"+spDate[1];

                document.location.href = re_href+"#fd_recipe";
                var id_val = $(this).attr("id");
                var re_id = id_val.replace("republic","");
                intakeInfo.info.meals = re_id;
                newintakeList(intakeInfo.info.date, intakeInfo.info.meals);
            }else{
              alert("날짜를 선택 하여 주세요!");
            }    
        }else{
            var id_val = $(this).attr("id");
            var re_id = id_val.replace("republic","");
            intakeInfo.info.meals = re_id;
            document.location.href = re_href+"#fd_recipe";
            newintakeList(intakeInfo.info.date, intakeInfo.info.meals);
        }    
     }else{
        alert("날짜를 선택 하여 주세요!");        
     }
});

//식단 추가 버튼 클릭
$('#meals_days').on('click', function(){

    $('#select_meals').css("display","block" );
    $('#select_locate').css("display","block");

    if ($('.fdb_03head_ov').length > 0 && intakeInfo.info.date != "undefined--undefined"){
        var id_select = $('.fdb_03head_ov').attr("id");
        var id_set = id_select.split("_");
        if(id_set[0] == 'picker'){
            var datepic = $('.fdb_03head_ov .class_week_03 .ui-shadow-inset .datepicker').val();  // "05/14/2014"
            if(datepic != ""){
                var spDate = datepic.split("/");
                // dateView();
                intakeInfo.info.date = spDate[2]+"-"+spDate[0]+"-"+spDate[1];
                document.location.href = href+"#fd_recipe";
                intakeInfo.info.meals = 0;
                newintakeList(intakeInfo.info.date, intakeInfo.info.meals);
            }else{
              alert("날짜를 선택 하여 주세요!");
            }
        }else{
            document.location.href = href+"#fd_recipe";
            intakeInfo.info.meals = 0;
            newintakeList(intakeInfo.info.date, intakeInfo.info.meals);
        }
    }else{
        alert("날짜를 선택 하여 주세요!");
    }

});
//날짜, 끼니, 장소 목록 라스트 뷰
function newintakeList(day, meals){
    
    $('#intakeListView div').remove();

    // date 
    var split_date = day.split("-");
    var weekObj = {0:"일요일",1:"월요일",2:"화요일",3:"수요일",4:"목요일",5:"금요일",6:"토요일"};
    var d_date = new Date(day);
    $('#food_list_date').text(split_date[1]+"월 "+split_date[2]+"일 "+weekObj[d_date.getDay()]);


    $('#select_meals').selectmenu();
    $('#select_meals').selectmenu('refresh', true);
    $('#select_locate').selectmenu();
    $('#select_locate').selectmenu('refresh', true);

    var mealsSelect = $('select#select_meals');
    mealsSelect[0].selectedIndex = meals;
    mealsSelect.selectmenu("refresh");

    if(userStuffs.length != 0){
        var mealsObj = {"1":"아침","2":"점심","3":"저녁","4":"오전간식","5":"오후간식","6":"야간간식"};
        var locObj = {"집":1,"회사":2,"어린이집":3,"외식":4,"기타":5};
        var lot = 0;
        var intakeListView_tr ='';
        var class_hover_init = '';
        $('#select_meals').val(meals);
        for (var i = 0; i < userStuffs.length; i++) {
            if(userStuffs[i].day == day && userStuffs[i].meals == mealsObj[meals]){
                lot = locObj[userStuffs[i].locate];
                //숫자 정리
                var intake_round = userStuffs[i].intake;  
                if(parseInt(userStuffs[i].intake) > 10){
                    intake_round = Math.round(intake_round);
                }
                class_hover_init += userStuffs[i].no+"-";
                intakeListView_tr += '<div class="fdb_04body_list" id="intakeList_'+userStuffs[i].code+'">'
                            +'    <a href="#" class="fd_intake_List" id="food_clcik_'+userStuffs[i].no+'">'
                            +'    <span class="fdb_04body_g" id="food_intake_'+userStuffs[i].no+'">'+intake_round+'g</span>'
                            +'    <span class="fdb_04body_check"><span class="fdb_check" id="food_hover_'+userStuffs[i].no+'"><img src="../imageB/m_img14.png" width="28"></span></span>'
                            +'    <span class="fdb_04body_name" id="food_name_'+userStuffs[i].no+'">'+userStuffs[i].food+'</span>'
                            +'    </a>'
                            +'</div>';
            }
        };
        var locSelect = $('select#select_locate');
        locSelect[0].selectedIndex = lot;
        locSelect.selectmenu("refresh");
        $('#intakeListView').append(intakeListView_tr);           
    }
    // var fdb_04body_tr = '<div class="fdb_04body_tail_bt">'
    //                     +'    <a href="#"  data-transition="slide" class="fdb_04body_tail_bt01" id="stuffs_republic">재료수정</a>'
    //                     +'    <a href="#"  data-rel="popup" data-position-to="window" data-transition="pop" class="fdb_04body_tail_bt02">섭취량조절</a>'
    //                     +'    <a href="#" class="fdb_04body_tail_bt03" id="food_del">삭제</a>'
    //                     +'</div>';


                  
    // $('#intakeListView').append(fdb_04body_tr);
    // $(".fdb_check_hover").removeClass("fdb_check_hover").addClass("fdb_check");  
    // select hover 
    var split_hover = class_hover_init.split("-");
    $("#food_hover_"+split_hover[0]).removeClass("fdb_check").addClass("fdb_check_hover");
    //locate setting
    intakeInfo.info.locate = lot; 
    //now_intake setting 
    for (var i = 0; i < userStuffs.length; i++) {
        if(userStuffs[i].no == split_hover[0]){
            now_intake = userStuffs[i];
        }
    };
    // // 리스트 
    $('.fd_intake_List').on('click', function(){
        $('.fdb_check_hover').removeClass("fdb_check_hover").addClass("fdb_check");
        var id_str = $(this).attr("id");
        var id_rep = id_str.replace("food_clcik_","food_hover_");
        $('#'+id_rep).removeClass("fdb_check").addClass("fdb_check_hover");
        var rep_no = id_str.replace("food_clcik_","");
        for (var i = 0; i < userStuffs.length; i++) {
            if(userStuffs[i].no == rep_no){
                now_intake = userStuffs[i];
            }
        };        
    });
}


    // 재료수정
    $('#stuffs_republic').on('click', function(){
        if($('#intakeListView div').length == 1 || $('.fdb_check_hover').length == 0){
            alert("선택한 음식이 없습니다.");

        }else{
            
            document.location.href = href+'#fd_recipe_detail';

            var food_id = $('.fdb_check_hover').attr("id");
            var re_food_id = food_id.replace("food_hover_","");
            recipe_category(re_food_id);
        }
    });
    // 섭취량 조절
    $('.fdb_04body_tail_bt02').on('click', function(){

        if($('#intakeListView div').length == 1){
            alert("선택한 음식이 없습니다.");
            return false;
        }


        $( "#controlrecipe" ).popup();

        // $('.clearfix').css("-webkit-transform","matrix(1, 0, 0, 1, -2, 0)");
        // alert($(this).attr("id"));
        if($('.fdb_check_hover').length > 0){
            $( "#controlrecipe" ).popup("open");
            var id_hover = $('.fdb_check_hover').attr("id");
            var rep_intake = id_hover.replace("food_hover_","food_intake_");
            var intake_gram = $('#'+rep_intake).text();
            var val_center =  intake_gram.replace("g","");
            var rep_foodname = id_hover.replace("food_hover_","food_name_");
            var foodName_text = $('#'+rep_foodname).text();
            $('#modal_food_name').text(foodName_text);
            var diffLeft = 0;
            var diffRight = 0;
            var centerInt = 0;
            // 0~1 : 0.1 단위  1~50 : 1단위  50 ~100 : 5단위 100~500 : 10단위 500~999 : 50단위 // 최소 0.1 ~ 최대 999
            if(parseInt(val_center) < 0.1){
                centerInt = 0.1;
                diffLeft = 0;
                diffRight = 0.2;
            }else if(parseInt(val_center) >= 0.1 && parseInt(val_center) < 1){ 
                centerInt = parseInt(val_center*10)/10;
                diffLeft = centerInt-0.1;
                diffRight = centerInt+0.1;
            }else if(parseInt(val_center) >= 1 && parseInt(val_center) < 50){
                centerInt = parseInt(val_center);
                diffLeft = centerInt-1;
                diffRight = centerInt+1;
            }else if(parseInt(val_center) >= 50 && parseInt(val_center) < 100){
                centerInt = parseInt(val_center);
                diffLeft = centerInt-5;
                diffRight = centerInt+5;
            }else if(parseInt(val_center) >= 100 && parseInt(val_center) < 500){
                centerInt = parseInt(val_center/10)*10;
                diffLeft = centerInt-10;
                diffRight = centerInt+10;
            }else if(parseInt(val_center) >= 500 && parseInt(val_center) < 1000){
                centerInt = parseInt(val_center/10)*10;
                diffLeft = centerInt-50;
                diffRight = centerInt+50;
            }else if(parseInt(val_center) >= 1000){
                centerInt = parseInt(val_center/10)*10;
                diffLeft = centerInt-50;
                diffRight = 1000;
            }

            $('#pop_food_center').text(centerInt);
            $('#pop_food_left').text(diffLeft+"g");
            $('#pop_food_right').text(diffRight+"g");
        }else{
            $( "#controlrecipe" ).popup("close");
            alert("식품을 선택하세요!");

        }
    });

    // pop save
    $('#save_food').on('click', function(){
        var id_hover = $('.fdb_check_hover').attr("id");
        var code_split = id_hover.split("_");
        var str_rep = now_intake.recipe;
        var perInt = Math.round($('.clearfix li.active').val()*100/now_intake.intake)/100;
        // var perInt = Math.round($('#pop_food_center').text()*100/now_intake.intake)/100;
        var arr_rec = str_rep.split(";");
        var recipe_int = '';
        var intake_v = 0;
        for(var i=0;i<arr_rec.length;i++){
            if(arr_rec[i] != ""){
                var code_s = arr_rec[i].split(":");
                var val_sp = parseInt(perInt*code_s[1]*100)/100;
                arr_rec[i] = code_s[0]+":"+val_sp+":"+code_s[2];
                intake_v += val_sp;
                recipe_int += arr_rec[i]+";";
            }
        }
        var substr_recipe = recipe_int.substring(0,recipe_int.length-1);
        now_intake.recipe = substr_recipe;
        now_intake.intake = intake_v;
        var precentage_up = parseInt(intake_v*100/now_intake.avgIntake);
        now_intake.percentage = precentage_up;
        // // DB save
        now_intake_food_update();
    });

    //삭제
    $('#food_del').on('click',function(){

        if($('#intakeListView div').length == 1){
            alert("선택한 음식이 없습니다.");
        }else{
            if($('.fdb_check_hover').length > 0){
                    //저장 항목을 지움
                    now_intake_food_delete();  

            }else{
                alert("삭제 하실 식품을 선택하세요!");
            }    
        }

    });




// 일 / 끼니 / 위치 update
function now_intake_food_update(){

    getAjax(serverUrl+'updateMeals','post',getJsonString({'no':now_intake.no, 'intake':now_intake.intake, 'recipe':now_intake.recipe, 'percentage':now_intake.percentage}),function(data){
        if(data.count > 0){
            userStuffs = data.userStuffs;
            newintakeList(intakeInfo.info.date, intakeInfo.info.meals);
        }else{
          alert("오류가 발생 하였습니다.");
        }
    });                  
}

//음식/식품 목록 제거 
function now_intake_food_delete(){

    getAjax(serverUrl+'delMeals','post',getJsonString({'no':now_intake.no}),function(data){
        if(data.count > 0){
            userStuffs = data.userStuffs;
            newintakeList(intakeInfo.info.date, intakeInfo.info.meals);
        }else{
          alert("서버에 문제가 있습니다. 잠시 후 다시 실행하여 주세요.");
        }
    });                  
}


// intakeListView 리스트 선택 삭제  
function intakeListView_del(day, meals, no){
   getAjax(serverUrl+'delMeals','post',getJsonString({'no':now_intake.no}),function(data){
        if(data.count > 0){
            var re_userStuffs = [];
            if(userStuffs.length > 0){
                for (var i = 0; i < userStuffs.length; i++) {
                    if(userStuffs[i].no != no){
                        re_userStuffs.push(userStuffs[i]);
                    }
                };
                userStuffs = re_userStuffs;
            }
            newintakeList(day, meals);

       }else{
          alert("서버에 문제가 있습니다. 잠시 후 다시 실행하여 주세요.");
        }
    });   
}

// 섭취추가 버튼
$('#addIntake').on('click', function(){
    // check //
    if($('#select_meals').val() == '식사끼니' || $('#select_locate').val() == '섭취장소'){
        alert("끼니,장소 입력헤주세요.");
    }else{
        // intakeInfo.info input
        $('#select_meals').css("display","none" );
        $('#select_locate').css("display","none");

        $('#auto_1').val("");

        now_intake = {};
        intakeInfo.info.meals = $('#select_meals').val();
        intakeInfo.info.locate = $('#select_locate').val();
        // move
        $('.list_food_select').show();
        document.location.href = href+"#fd_recipe_add";

         $( ".fdb_input03" ).autocomplete({
            source: availableTags,
            messages : {
                noResults: '',
                results: function() {}
            },
            select: function( event, ui ) {
                // select_autocomplete(ui.item.value);
                var auto_value = ui.item.value;
                var split_auto_value = auto_value.split("_");
                var id_st = "auto_"+split_auto_value[0];
                // intake_category(id_st, split_auto_value[1]);
                var chenk_du = intake_category(id_st, split_auto_value[1]);
                if(chenk_du == false){
                    ui.item.value = '';
                    ui.item.label = '';
                }
            }
         });

    }
});

// 음식/식품 분류 선택시 리스트 불러오기 
$('.fdb_fd_category').on('click', function(){
    // alert($(this).attr("id"));
    $('#auto_1').val("");
    $('#auto_3').val("");

    var id_category = $(this).attr("id");
    var id_split = id_category.split("_");
    if(id_split[0] == "food"){// 음식 소분류 불러오기
        // console.log("food = "+id_split[1]);
        document.location.href = href+"#fd_recipe_add2";
        $('#category_food_list div').remove(); // remove
        var tr_small = '';
        for (var i in food_small){
            if(food_small[i].food_no == parseInt(id_split[1])){
                tr_small += '<div class="fdb_06body_list">'
                        +'    <a href="#" data-transition="slide" class="food_small_catgory" id="food_'+id_split[1]+food_small[i].small_no+'">'
                        +'    <span class="fdb_06body_click"><img src="../imageB/m_img16.png" class="fdb_img04"></span>'
                        +'    <img src="../imageB/m_img15.png" class="fdb_img03">'
                        +'    <span class="fdb_06body_name">'+food_small[i].name+'</span>'
                        +'    </a>'
                        +'</div>';
            } 
        }
       $('#category_food_list').append(tr_small);
       // click event 
       $('.food_small_catgory').on('click', function(){
            document.location.href = href+"#fd_recipe_add3";
            $('#category_list div').remove();  // remove
            // console.log($(this).attr("id"));
            var food_category = $(this).attr("id");
            var food_replace = food_category.replace("food_",'');
            getAjax(serverUrl+'getFoodKNS','post',getJsonString({'no':parseInt(food_replace)}),function(data){
                if(data.count > 0){
                    // console.log(data);
                    var tr_struffs = '';
                    for (var i in data.result){
                        tr_struffs += '<div class="fdb_06body_list">'
                                +'    <a href="#" data-transition="slide" class="intake_category" id="food_'+data.result[i].code+'">'
                                +'    <span class="fdb_06body_click"><img src="../imageB/m_img16.png" class="fdb_img04"></span>'
                                +'    <img src="../imageB/m_img15.png" class="fdb_img03">'
                                +'    <span class="fdb_06body_name" id="food_name_'+data.result[i].code+'">'+data.result[i].food+'</span>'
                                +'    </a>'
                                +'</div>';
                    }
                    $('#category_list').append(tr_struffs);
                    $('.intake_category').on('click', function(){
                        var id_sg = $(this).attr("id");
                        var rep_sg = id_sg.replace('food_','food_name_');
                        var food_name = $('#'+rep_sg).text();
                        intake_category(id_sg, food_name);
                    });                
                }else{
                  alert("오류가 발생 하였습니다.");
                }
            });
        }); 
    }else{// 식품 목록 불러오기     
        // console.log("stuffs = "+id_split[1]);
        document.location.href = href+"#fd_recipe_add3";

         $( ".fdb_input03" ).autocomplete({
            source: availableTags2,
            messages : {
                noResults: '',
                results: function() {}
            },
            select: function( event, ui ) {
                // select_autocomplete(ui.item.value);
                var auto_value = ui.item.value;
                var split_auto_value = auto_value.split("_");
                var id_st = "auto_"+split_auto_value[0];
                // intake_category(id_st, split_auto_value[1]);
                var chenk_du = intake_category(id_st, split_auto_value[1]);
                if(chenk_du == false){
                    ui.item.value = '';
                    ui.item.label = '';
                }               
            }
         });



        $('#category_list div').remove();  // remove
        // ajax
        getAjax(serverUrl+'getFoodstuffs','post',getJsonString({'no':parseInt(id_split[1])}),function(data){
            if(data.count > 0){
                // console.log(data);
                var tr_struffs = '';
                for (var i in data.result){
                    tr_struffs += '<div class="fdb_06body_list">'
                            +'    <a href="#" data-transition="slide" class="intake_category" id="stuffs_'+data.result[i].code+'">'
                            +'    <span class="fdb_06body_click"><img src="../imageB/m_img16.png" class="fdb_img04"></span>'
                            +'    <img src="../imageB/m_img15.png" class="fdb_img03">'
                            +'    <span class="fdb_06body_name" id="stuffs_name_'+data.result[i].code+'">'+data.result[i].food+'</span>'
                            +'    </a>'
                            +'</div>';
                }
                $('#category_list').append(tr_struffs);
                $('.intake_category').on('click', function(){
                    var id_sg = $(this).attr("id");
                    var rep_sg = id_sg.replace('stuffs_','stuffs_name_');
                    var food_name = $('#'+rep_sg).text();
                    intake_category(id_sg, food_name);
                });                
            }else{
              alert("오류가 발생 하였습니다.");
            }
        });
    } 
});
// 음식/식품 리스트 클릭시 체크

function intake_category(id, name){
    // console.log(id);
    var id_split = id.split("_");
    if(id_split[1].length > 7){
        var stuffsList = $('#recipe_detail .fdb_04body_list a');
        if(stuffsList.length > 0){
            for (var i = 0; i < stuffsList.length; i++) {
                var id_stuffs_list = stuffsList[i].id;
                var id_replace = id_stuffs_list.replace("stuffs_List_","");
                if(id_replace == id_split[1]){
                    alert("중복된 식품입니다.");
                    return false;  
                }
            };
        }
    }else{
        var intake_div = $('#intakeListView div'); 

        if(intake_div.length > 0){
            for (var i = 0; i < intake_div.length; i++) {
                var div_id = intake_div[i].id;
                var rep_div = div_id.replace('intakeList_','');
                if(rep_div == id_split[1]){
                    alert("중복된 음식입니다.");
                    return false;                    
                }
            };
        }
    }   
    // ajax summit 
    // 재료가 추가에 관한 조건문 
    if(now_intake.no == undefined){
        getAjax(serverUrl+'insertTotalfood','post',getJsonString({'day':intakeInfo.info.date, 'meals':intakeInfo.info.meals, 'locate':intakeInfo.info.locate,'code':id_split[1], 'food':name}),function(data){
            if(data.count > 0){
                userStuffs = data.userStuffs;
                document.location.href = href+"#fd_recipe_detail";
                 // console.log(data["result"][0]["no"]);
                recipe_category(data["result"][0]["no"]);
                newintakeList(intakeInfo.info.date, intakeInfo.info.meals);// 전체 리스트
                mealsList(intakeInfo.info.date);
            }else{
              alert("오류가 발생 하였습니다.");
            }
        });     
    }else{
        if(id_split[1].length > 7){
            //recipe
            var array_rec = now_intake.recipe;
            var ch_reci = array_rec.substring(array_rec.length-1, array_rec.length); 
            if(ch_reci != ";"){
                now_intake.recipe += ';'
            }
            now_intake.recipe += name +':'+ '100' +':' +id_split[1];
            //intake
            now_intake.intake = parseInt(now_intake.intake*100)/100 + 100;
            //percentage
            var precentage_up = parseInt(now_intake.intake*100/now_intake.avgIntake);
            now_intake.percentage = precentage_up;
            document.location.href = href+"#fd_recipe_detail";

            now_intake_update();
///////////////////// 창 띄우기 06.18 ///////////////////////////////////////// 
            // stuffs_popup(name, id_split[1]);
            addStuffs["name"] = name;
            addStuffs["code"] = id_split[1];
//////////////////////////////////////////////////////////////////////////////
        }else{
            alert("식품만 추가 할 수 있습니다.");
        }
    }
}
//////////////////////////////////////////////////////////////////////////// 06.18
var addStuffs = {'name' : '', 'code' : ''};

// function stuffs_popup(name, code){
//    // $( "#controlrecipe2" ).popup();
//    // $( "#controlrecipe2" ).popup("open"); 

//     // $("#controlgram").css({"visibility":"visible"});
//     // $('#controlrecipe2').popup('open');

//     $('.fdb_check_hover').removeClass("fdb_check_hover").addClass("fdb_check");
//     $('#hover_'+ code).removeClass("fdb_check").addClass("fdb_check_hover");
// }
// ////////////////////////////////////////////////////////////////////////////
$('#stuffs_init').on('click', function(){

    $('#auto_1').val("");
    $('#auto_3').val("");

    $('.list_food_select').hide();
    document.location.href = href+"#fd_recipe_add";
    
      $( ".fdb_input03" ).autocomplete({
        source: availableTags2,
        messages : {
            noResults: '',
            results: function() {}
        },
        select: function( event, ui ) {
            // select_autocomplete(ui.item.value);
            var auto_value = ui.item.value;
            var split_auto_value = auto_value.split("_");
            var id_st = "auto_"+split_auto_value[0];
            // intake_category(id_st, split_auto_value[1]);
            var chenk_du = intake_category(id_st, split_auto_value[1]);
            if(chenk_du == false){
                ui.item.value = '';
                ui.item.label = '';
            }
        }
     }); 
    //fd_recipe_add
});

//음식/식품 선택 시 재료 목록 view
function recipe_category(no){

    //
    $('.fdb_check_hover').removeClass("fdb_check_hover").addClass("fdb_check");
    getAjax(serverUrl+'getRecipeInfoApp','post',getJsonString({'no':no}),function(data){
        if(data.count > 0){
            // userStuffs 정렬 
            var sam_obj = [];
            for (var i=0;i<userStuffs.length;i++){
                if(userStuffs[i].no != no){
                    sam_obj.push(userStuffs[i]);
                }
            }

            userStuffs = sam_obj;            
            // 정렬 끝 
            userStuffs.push(data);
            now_intake = data;           
            // http://www.fooddr.co.kr/FDLite_App03#fd_recipe 리스트 셋팅 
            // fd_recipe_list();

            $('#recipe_detail div').remove();  // remove 
            // console.log(data);
            $('#category_name').text(data.food);
            var recipe_str = data.recipe;
            var array_recipe = recipe_str.split(";");
            var category_tr = '';
            var class_hover = '';
            for(var i=0;i<array_recipe.length;i++){
                if(array_recipe[i] != ""){
                    var val_recipe = array_recipe[i].split(":"); 
                    class_hover += val_recipe[2]+"-";
                    category_tr += '<div class="fdb_04body_list">'
                                +'    <a href="#" class="fd_stuffs_List" id="stuffs_List_'+val_recipe[2]+'">'
                                +'    <span class="fdb_04body_g" id="intake_gram_'+val_recipe[2]+'">'+val_recipe[1]+'g</span>'
                                +'    <span class="fdb_04body_check"><span class="fdb_check" id="hover_'+val_recipe[2]+'"><img src="../imageB/m_img14.png" width="28"></span></span>'
                                +'    <span class="fdb_04body_name" id="name_'+val_recipe[2]+'">'+val_recipe[0]+'</span>'
                                +'    </a>'
                                +'</div>';
                }
            }
            category_tr += '<div class="fdb_04body_tail_bt"> '
                            +'    <a href="#"  data-rel="popup" data-position-to="window" data-transition="pop" class="fdb_04body_tail_bt02 controlgram2_bt">섭취량조절</a>'
                            +'    <a href="#" class="fdb_04body_tail_bt03" id="now_intake_del">삭제</a>'
                            +'</div> ';
            
            $('#recipe_detail').append(category_tr);
            var split_hover = class_hover.split("-");
            // ('.fdb_check_hover').removeClass("fdb_check_hover").addClass("fdb_check"); 
            $("#hover_"+split_hover[0]).attr('fdb_check','fdb_check_hover');  
            // 리스트 
            $('.fd_stuffs_List').on('click', function(){
                $('.fdb_check_hover').removeClass("fdb_check_hover").addClass("fdb_check");
                var id_str = $(this).attr("id");
                var id_rep = id_str.replace("stuffs_List_","hover_");
                $('#'+id_rep).removeClass("fdb_check").addClass("fdb_check_hover");
 
            });
            // 수정 저장 클릭 
            $('.fd_summit').on('click', function(){
                // array 저장 
                console.log("정렬 해서 저장");
            }); 
            // 재료추가
            $('.fd_stuffs_add').on('click', function(){
                console.log("페이지 이동");
                // document.location.href = href+"#fd_recipe_add";
            });
//////////////////////////////////////06.18//////////////////////////////////
            if(addStuffs["name"] != ''){
                $( "#controlrecipe2" ).popup();
                $('.fdb_check_hover').removeClass("fdb_check_hover").addClass("fdb_check");
                $("#hover_"+addStuffs["code"]).removeClass("fdb_check").addClass("fdb_check_hover");
                $("#controlgram").css({"visibility":"visible"});
                $('#controlrecipe2').popup('open');
                $('#modal_stuffs_name').text(addStuffs["name"]);
            }


//////////////////////////////////////////////////////////////////////////////////
            // 섭취량 조절
            $('.fdb_04body_tail_bt02').on('click', function(){
                $( "#controlrecipe2" ).popup();
                if($('.fdb_check_hover').length > 0){
                    // $( "#controlrecipe2" ).popup("open");

                    var id_hover = $('.fdb_check_hover').attr("id");
                    var rep_intake = id_hover.replace("hover_","intake_gram_");
                    // var intake_gram = $('#'+rep_intake).text();
                    var rep_stuffsName = id_hover.replace("hover_","name_");
                    // var val_center =  intake_gram.replace("g","");

                    var stuffs_name = $('#'+rep_stuffsName).text();


                    $('#modal_stuffs_name').text(stuffs_name);

                    $('.controlgram2_bt').click(function(){ 
                       $("#controlgram").css({"visibility":"visible"});
                          $('#controlrecipe2').popup('open');
                    });
                     
/*
                    var id_hover = $('.fdb_check_hover').attr("id");
                    var rep_intake = id_hover.replace("hover_","intake_gram_");
                    var intake_gram = $('#'+rep_intake).text();
                    var rep_stuffsName = id_hover.replace("hover_","name_");
                    var val_center =  intake_gram.replace("g","");

                    var stuffs_name = $('#'+rep_stuffsName).text();

        
                    var diffLeft = 0;
                    var diffRight = 0;
                    var centerInt = 0;
                    // 0~1 : 0.1 단위  1~50 : 1단위  50 ~100 : 5단위 100~500 : 10단위 500~999 : 50단위 // 최소 0.1 ~ 최대 999
                    if(parseInt(val_center) < 0.1){
                        centerInt = 0.1;
                        diffLeft = 0;
                        diffRight = 0.2;
                    }else if(parseInt(val_center) >= 0.1 && parseInt(val_center) < 1){ 
                        centerInt = parseInt(val_center*10)/10;
                        diffLeft = centerInt-0.1;
                        diffRight = centerInt+0.1;
                    }else if(parseInt(val_center) >= 1 && parseInt(val_center) < 50){
                        centerInt = parseInt(val_center);
                        diffLeft = centerInt-1;
                        diffRight = centerInt+1;
                    }else if(parseInt(val_center) >= 50 && parseInt(val_center) < 100){
                        centerInt = parseInt(val_center);
                        diffLeft = centerInt-5;
                        diffRight = centerInt+5;
                    }else if(parseInt(val_center) >= 100 && parseInt(val_center) < 500){
                        centerInt = parseInt(val_center/10)*10;
                        diffLeft = centerInt-10;
                        diffRight = centerInt+10;
                    }else if(parseInt(val_center) >= 500 && parseInt(val_center) < 1000){
                        centerInt = parseInt(val_center/10)*10;
                        diffLeft = centerInt-50;
                        diffRight = centerInt+50;
                    }else if(parseInt(val_center) >= 1000){
                        centerInt = parseInt(val_center/10)*10;
                        diffLeft = centerInt-50;
                        diffRight = 1000;
                    }

                    $('#pop_center').text(centerInt);
                    $('#pop_left').text(diffLeft+"g");
                    $('#pop_right').text(diffRight+"g");
                    // $('#pop_food_center').text(centerInt);
                    // $('#pop_food_left').text(diffLeft+"g");
                    // $('#pop_food_right').text(diffRight+"g");

                    // $('#pop_center').text(val_center);
                    // $('#pop_left').text(parseInt(val_center*90)/100+"g");
                    // $('#pop_right').text(parseInt(val_center*110)/100+"g");
*/                    
                }else{
                    $( "#controlrecipe2" ).popup("close");
                    alert("식품을 선택하세요!");
                    return false;

                }
            });
            // 삭제 
            $('#now_intake_del').on('click', function(){
                // 아이디 
                if($('.fdb_check_hover').length > 0){
                    if($('#recipe_detail div').length > 2){
                        //재료만 지우고 update
                        var id_hover = $('.fdb_check_hover').attr("id");
                        var rep_id = id_hover.replace('hover_','');
                        var recipe_del = now_intake.recipe;
                        var split_del = recipe_del.split(";");
                        var st_recipe = '';
                        var st_intake = '';
                        for (var i = 0; i < split_del.length; i++) {
                            var st_del = split_del[i].split(":");
                            if(st_del[2] != rep_id){
                                st_recipe += split_del[i]+";";
                                st_intake += st_del[1];
                            }
                        };
                        now_intake.recipe = st_recipe.substring(0, st_recipe.length-1);
                        now_intake.intake = st_intake;
                        var precentage_up = parseInt(st_intake*100/now_intake.avgIntake);
                        now_intake.percentage = precentage_up;

                        now_intake_update();
                    }else{
                        //저장 항목을 지움
                        now_intake_delete();  
                    }
                }else{
                    alert("삭제 하실 식품을 선택하세요!");
                }    
            });
            // pop intake value control up
            // $("#intake_up").on('click',function(){
            //     var val_center = $('#pop_center').text();
        
            //     var diffLeft = 0;
            //     var diffRight = 0;
            //     var centerInt = 0;
            //     // 0~1 : 0.1 단위  1~50 : 1단위  50 ~100 : 5단위 100~500 : 10단위 500~999 : 50단위 // 최소 0.1 ~ 최대 999
            //     if(parseInt(val_center*10)/10 <= 0.1){
            //         centerInt = 0.2;
            //         diffLeft = 0.1;
            //         diffRight = 0.3;
            //     }else if(parseInt(val_center*10)/10 > 0.1 && parseInt(val_center) < 1){
            //         var errorInt = parseInt(val_center*10)/10; 
            //         centerInt = parseInt((errorInt+0.15)*10)/10;
            //         diffLeft = parseInt(errorInt*10)/10;
            //         diffRight = parseInt((errorInt+0.25)*10)/10 ;
            //     }else if(parseInt(val_center) >= 1 && parseInt(val_center) < 50){
            //         centerInt = parseInt(val_center)+1;
            //         diffLeft = parseInt(val_center);
            //         diffRight = parseInt(val_center)+2;
            //     }else if(parseInt(val_center) >= 50 && parseInt(val_center) < 100){
            //         centerInt = parseInt(val_center)+5;
            //         diffLeft = parseInt(val_center);
            //         diffRight = parseInt(val_center)+10;
            //     }else if(parseInt(val_center) >= 100 && parseInt(val_center) < 500){
            //         centerInt = parseInt(val_center/10)*10 +10;
            //         diffLeft = parseInt(val_center/10)*10;
            //         diffRight = parseInt(val_center/10)*10 +20;
            //     }else if(parseInt(val_center) >= 500 && parseInt(val_center) < 1000){
            //         centerInt = parseInt(val_center/10)*10+50;
            //         diffLeft = parseInt(val_center/10)*10;
            //         diffRight = parseInt(val_center/10)*10+100;
            //     }else if(parseInt(val_center) >= 1000){
            //         centerInt = parseInt(val_center/10)*10;
            //         diffLeft = centerInt-50;
            //         diffRight = 1000;
            //         alert("더 이상 추가할 수 없습니다.");
            //     }
            //     $('#pop_center').text(centerInt);
            //     $('#pop_left').text(diffLeft+"g");
            //     $('#pop_right').text(diffRight+"g");     

            //     // $('#pop_center').text(parseInt(val_center*110)/100);
            //     // $('#pop_left').text(val_center*1+"g");
            //     // $('#pop_right').text(parseInt(val_center*120)/100+"g");                
            // });
            // pop intake value control up
            // $("#intake_down").on('click',function(){
            //     var val_center = $('#pop_center').text();

            //     var diffLeft = 0;
            //     var diffRight = 0;
            //     var centerInt = 0;
            //     // 0~1 : 0.1 단위  1~50 : 1단위  50 ~100 : 5단위 100~500 : 10단위 500~999 : 50단위 // 최소 0.1 ~ 최대 999
            //     if(parseInt(val_center*10)/10 <= 0.1){
            //         centerInt = 0.1;
            //         diffLeft = 0;
            //         diffRight = 0.2;
            //         alert("더 이상 내릴 수 없습니다.");            
            //     }else if(parseInt(val_center*10)/10 > 0.1 && parseInt(val_center*10)/10 <= 1){ 
            //         centerInt = parseInt((val_center - 0.1)*10)/10;
            //         diffLeft = parseInt((val_center  - 0.2)*10)/10;
            //         diffRight = parseInt(val_center*10)/10;
            //     }else if(parseInt(val_center) > 1 && parseInt(val_center) < 50){
            //         if(parseInt(val_center) == 2){
            //             diffLeft = 0.9;
            //         }else{
            //             diffLeft = parseInt(val_center) - 2;
            //         } 
            //         centerInt = parseInt(val_center) - 1;
            //         diffRight = parseInt(val_center);
            //     }else if(parseInt(val_center) >= 50 && parseInt(val_center) < 100){
            //         centerInt = parseInt(val_center) - 5;
            //         diffLeft = parseInt(val_center) - 10;
            //         diffRight = parseInt(val_center);
            //     }else if(parseInt(val_center) >= 100 && parseInt(val_center) < 500){
            //         centerInt = parseInt(val_center/10)*10 - 10;
            //         diffLeft = parseInt(val_center/10)*10 - 20;
            //         diffRight = parseInt(val_center/10)*10;
            //     }else if(parseInt(val_center) >= 500 && parseInt(val_center) < 1000){
            //         centerInt = parseInt(val_center/10)*10 - 50;
            //         diffLeft = parseInt(val_center/10)*10 - 100;
            //         diffRight = parseInt(val_center/10)*10;
            //     }else if(parseInt(val_center) >= 1000){
            //         centerInt = parseInt(val_center/10)*10 - 50;
            //         diffLeft = parseInt(val_center/10)*10 - 100;
            //         diffRight = parseInt(val_center/10)*10;

            //     }
            //     $('#pop_center').text(centerInt);
            //     $('#pop_left').text(diffLeft+"g");
            //     $('#pop_right').text(diffRight+"g");   

            //     // $('#pop_center').text(parseInt(val_center*90)/100);
            //     // $('#pop_left').text(parseInt(val_center*80)/100+"g");
            //     // $('#pop_right').text(val_center*1+"g");                
            // });
            


        }else{
          alert("서버에 문제가 있습니다. 잠시 후 다시 실행하여 주세요.");
        }
    });    
}
// intake control save
$('#save_stuffs').on('click', function(){

////////////////////////////////////////////////////    
    addStuffs = {'name' : '', 'code' : ''};
/////////////////////////////////////////////////////
    var id_hover = $('.fdb_check_hover').attr("id");
    var code_split = id_hover.split("_");
    var str_rep = now_intake.recipe;
    var arr_rec = str_rep.split(";");
    var recipe_int = '';
    var intake_v = 0;
    for(var i=0;i<arr_rec.length;i++){
        if(arr_rec[i] != ""){
            var code_s = arr_rec[i].split(":");
            if(code_split[1] == code_s[2]){
                // var val_sp = $('#pop_center').text();
                var val_sp = $('.clearfix li.active').val();
                arr_rec[i] = code_s[0]+":"+val_sp+":"+code_s[2];
                intake_v += parseInt(val_sp*100)/100;
            }else{
                intake_v += parseInt(code_s[1]*100)/100;
            }
            recipe_int += arr_rec[i]+";";
        }
    }
    now_intake.recipe = recipe_int;
    now_intake.intake = intake_v;
    var precentage_up = parseInt(intake_v*100/now_intake.avgIntake);
    now_intake.percentage = precentage_up;
    // DB save
    now_intake_update();
});
//저장 완료 클릭시 now_intake init
$('#stuffs_now_intake_init').on('click', function(){
    now_intake = {};
    document.location.href = href+"#fd_recipe";
});
//음식/식품 업데이트 
function now_intake_update(){

    getAjax(serverUrl+'updateMeals','post',getJsonString({'no':now_intake.no, 'intake':now_intake.intake, 'recipe':now_intake.recipe, 'percentage':now_intake.percentage}),function(data){
        if(data.count > 0){
            userStuffs = data.userStuffs;
            recipe_category(now_intake.no);
            newintakeList(intakeInfo.info.date, intakeInfo.info.meals);
        }else{
          alert("서버에 문제가 있습니다. 잠시 후 다시 실행하여 주세요.");
        }
    });                  
}
//음식/식품 목록 제거 
function now_intake_delete(){

    getAjax(serverUrl+'delMeals','post',getJsonString({'no':now_intake.no}),function(data){
        if(data.count > 0){
            userStuffs = data.userStuffs;
            recipe_category(now_intake.no);
            newintakeList(intakeInfo.info.date, intakeInfo.info.meals);
        }else{
          alert("서버에 문제가 있습니다. 잠시 후 다시 실행하여 주세요.");
        }
    });                  
}
$('#back_button').on('click', function(){
    $('#select_meals').css("display","block" );
    $('#select_locate').css("display","block");
    mealsList(intakeInfo.info.date);
});

////////////////////////////////////////////////////////////////////
// var substringMatcher = function(strs) {
//   return function findMatches(q, cb) {
//     var matches, substringRegex;
 
//     // an array that will be populated with substring matches
//     matches = [];
 
//     // regex used to determine if a string contains the substring `q`
//     substrRegex = new RegExp(q, 'i');
 
//     // iterate through the pool of strings and for any string that
//     // contains the substring `q`, add it to the `matches` array
//     $.each(strs, function(i, str) {
//       if (substrRegex.test(str)) {
//         // the typeahead jQuery plugin expects suggestions to a
//         // JavaScript object, refer to typeahead docs for more info
//         matches.push({ value: str });
//       }
//     });
 
//     cb(matches);
//   };
// };

// $(function() {

var availableTags =['000000001_물','11001_누룬밥','11002_누룽지','11003_쌀밥','11004_찰밥','11005_현미밥','12001_강남콩밥','12002_녹두밥','12003_밤밥','12004_밤팥밥','12005_보리밥','12006_수수밥','12007_오곡밥','12008_옥수수밥','12009_완두콩밥','12010_율무밥','12011_잡곡밥','12012_조밥','12013_차수수밥','12014_차조밥','12015_콩밥','12016_팥밥','13001_감자밥','13002_고구마밥','13003_야채밥','13004_영양밥(돌솥밥)','13005_콩나물밥','14001_김치볶음밥','14002_야채볶음밥','14003_비빔밥','14004_새우볶음밥','14005_쇠고기볶음밥','14006_열무비빔밥','14007_오므라이스','14008_참치볶음밥','14009_콩나물비빔밥','15001_국밥','15002_계란덮밥','15003_닭고기덮밥','15004_돈육카레라이스','15005_두부덮밥','15006_두부카레라이스','15007_버섯덮밥','15008_쇠고기덮밥','15009_순대국밥','15010_오징어덮밥','15011_잡채밥','15012_잡탕밥','15013_짜장밥','15014_참치회덮밥','15015_한치회덮밥','15016_해물덮밥','16001_김밥','16002_김초밥','16003_생선초밥','16004_유부초밥','21001_건포도빵','21002_고로케','21003_곰보빵(소보로)','21004_데니쉬페이스트리,과일(패스트푸드)','21005_데니쉬페이스트리,시나몬(패스트푸드)','21006_데니쉬페이스트리,치즈(패스트푸드)','21007_도우넛,링','21008_도우넛,팥','21009_롤빵,소프트롤','21010_롤빵,하드롤','21011_머핀','21012_모카빵','21013_바게뜨빵,마늘바게뜨','21014_버리토(패스트푸드)','21015_베이걸,건포도계피,토스트','21016_블란서빵','21017_비스켓(패스트푸드)','21018_비스켓(KFC)','21019_비스켓,버터밀크(웬디스)','21020_샌드위치,계란,치즈','21021_샌드위치,로스트비프','21022_샌드위치,생선','21023_샌드위치,아침용샌드위치(웬디스)','21024_샌드위치,치킨','21025_샌드위치,햄,치즈','21026_슈크림','21027_식빵','21028_엔칠라다(패스트푸드)','21029_옥수수빵','21030_와플','21031_잉글리쉬머핀,버터포함(패스트푸드)','21032_쨈빵','21033_찐빵,고기','21034_찐빵,팥','21035_쵸코파이(롯데)','21036_카스테라','21037_커스터드','21038_케이크,당근케이크','21039_케이크,롤케이크','21040_케이크,바나나케이크','21041_케이크,생크림,블루베리','21042_케이크,쇼트케이크','21043_케이크,스폰지케이크','21044_케이크,엔젤케이크','21045_케이크,쵸코케이크','21046_케이크,치즈케이크','21047_케이크,컵케이크','21048_케이크,파운드케이크','21049_케이크,후르트케이크','21050_크로쌍','21051_크로쌍,계란과치즈','21052_크로쌍,버터','21053_크림빵','21054_타코(패스트푸드)','21055_토스트','21056_파이,고구마파이','21057_파이,딸기파이','21058_파이,블랙베리','21059_파이,블루베리','21060_파이,사과파이(맥도날드)','21061_파이,애플파이','21062_파이,애플파이(버거킹)','21063_파이,체리파이','21064_파이,체리파이(맥도날드)','21065_파이,체리파이(버거킹)','21066_파이,파인애플파이','21067_파이,피칸파이','21068_파이,피칸파이(버거킹)','21069_파이,호박파이','21070_팥빵','21071_패스트리','21072_푸딩,커스터드','21073_피자','21074_피자,디럭스(패스트푸드)','21075_피자,소시지(패스트푸드)','21076_피자,쇠고기,(패스트푸드)','21077_피자,슈프림(패스트푸드)','21078_피자,씬크리스피,슈퍼슈프림(피자헛)','21079_피자,씬크리스피,슈프림(피자헛)','21080_피자,씬크리스피,치즈(피자헛)','21081_피자,씬크리스피,페퍼로니(피자헛)','21082_피자,야채(패스트푸드)','21083_피자,치즈(패스트푸드)','21084_피자,치즈,쇠고기,야채(패스트푸드)','21085_피자,콤비네이션피자(패스트푸드)','21086_피자,크러스트,슈퍼슈프림(피자헛)','21087_피자,크러스트,슈프림(피자헛)','21088_피자,크러스트,치즈(피자헛)','21089_피자,크러스트,페퍼로니(피자헛)','21090_피자,팬피자,슈프림(피자헛)','21091_피자,팬피자,치즈(피자헛)','21092_피자,팬피자,페퍼로니(피자헛)','21093_피자,팬피자.슈퍼슈프림(피자헛)','21094_피자,페퍼로니(패스트푸드)','21095_핫도그(패스트푸드)','21096_핫도그,칠리(패스트푸드)','21097_핫케익','21098_햄버거(로이로저스)','21099_햄버거(맥도날드)','21100_햄버거(버거킹)','21101_햄버거(패스트푸드)','21102_햄버거,더블버거(웬디스)','21103_햄버거,더블버거(패스트푸드)','21104_햄버거,더블와퍼(버거킹)','21105_햄버거,더블치즈버거(웬디스)','21106_햄버거,더블치즈와퍼(버거킹)','21107_햄버거,로스트비프샌드위치(로이로저스)','21108_햄버거,맥디엘티(맥도날드)','21109_햄버거,바버거(로이로저스)','21110_햄버거,베이컨치즈버거(로이로저스)','21111_햄버거,베이컨치즈버거(버거킹)','21112_햄버거,베이컨치즈버거(웬디스)','21113_햄버거,빅맥(맥도날드)','21114_햄버거,빅클래식더블햄버거(웬디스)','21115_햄버거,빅클래식버거(웬디스)','21116_햄버거,빅클래식치즈버거(웬디스)','21117_햄버거,싱글버거(웬디스)','21118_햄버거,싱글치즈버거(웬디스)','21119_햄버거,어린이용키즈버거(웬디스)','21120_햄버거,와퍼샌드위치(버거킹)','21121_햄버거,와퍼쥬니어샌드위치(버거킹)','21122_햄버거,와퍼쥬니어치즈샌드위치(버거킹)','21123_햄버거,치즈버거(로이로저스)','21124_햄버거,치즈버거(맥도날드)','21125_햄버거,치즈버거(버거킹)','21126_햄버거,치즈버거(패스트푸드)','21127_햄버거,치즈와퍼(버거킹)','21128_햄버거,치킨샌드위치(버거킹)','21129_햄버거,치킨클럽샌드위치(웬디스)','21130_햄버거,쿼터파운더(맥도날드)','21131_햄버거,쿼터파운더와치즈(맥도날드)','21132_햄버거,크로상샌드위치(버거킹)','21133_햄버거,햄치즈샌드위치(버거킹)','21134_햄버거,휘쉬필레버거(웬디스)','21135_호밀빵','21136_후렌치토스트(버거킹)','21137_후렌치토스트(웬디스)','22001_감자스낵,포테이토칩','22002_감자스낵,프링글즈(오리지날)','22003_강정,들깨강정','22004_강정,땅콩강정','22005_강정,보리강정','22006_강정,쌀강정','22007_강정,엿강정','22008_강정,콩강정','22009_건빵','22010_과자,꼬깔콘(롯데)','22011_과자,마가렛트(롯데)','22012_과자,버터쿠키(나비스코)','22013_과자,빠다코코넛(롯데)','22014_과자,애플잼(롯데)','22015_과자,엄마손파이(롯데)','22016_과자,젝크(롯데)','22017_과자,쵸이스(롯데)','22018_과자,쵸코칩쿠키(롯데)','22019_과자,커스타드(롯데)','22020_과자,프레즐','22021_과자,하비스트(롯데)','22022_나쵸(패스트푸드)','22023_모나카','22024_비스켓','22025_산자','22026_센베이','22027_스낵,나쵸','22028_스낵,밀가루','22029_스낵,새우맛','22030_스낵,콘칩스','22031_스낵과자','22032_웨하스,바닐라','22033_유과,찹쌀유과','22034_유과,콩유과','22035_전병,셈베이,김','22036_전병,찹쌀','22037_치즈나쵸(패스트푸드)','22038_쿠키','22039_쿠키,땅콩버터','22040_크래커','22041_크래커,땅콩샌드','22042_크래커,치즈샌드','22043_한과,다식,검정깨,','22044_한과,다식,송화','22045_한과,약과','22046_한과,참깨강정','22047_한과,찹쌀산자','31001_국수장국','31002_닭칼국수','31003_도토리국수','31004_라면','31005_메밀국수','31006_물냉면','31007_비빔국수','31008_비빔냉면','31009_컵라면(큰것)','31010_수제비','31011_스파게티(패스트푸드)','31012_스파게티와미트볼(패스트푸드)','31013_야채라면','31014_열무김치국수','31015_우동','31016_울면,인스턴트','31017_유부국수','31018_짜장면','31019_짜장면,인스턴트','31020_짬뽕','31021_쫄면','31022_칡냉면(비빔면)','31023_칼국수','31024_칼국수,인스턴트','31025_컵라면(작은것)','31026_콩국수','31027_하이면,인스턴트','31028_회냉면','31029_메밀국수(일식)','31030_열무김치냉면','32001_고기만두','32002_군만두','32003_김치만두','32004_김치만두국','32005_떡만두국','32006_만두국','32007_만두탕수','32008_물만두','32009_비빔만두','32010_찐만두','32011_튀김만두','41001_감자죽','41002_고기죽','41003_깨죽','41004_단팥죽','41005_닭죽','41006_버섯죽','41007_새우죽','41008_수수죽','41009_야채죽','41010_잣죽','41011_전복죽','41012_죽,율무죽','41013_죽,흰죽','41014_죽,흰죽,인스턴트','41015_팥죽','41016_호박죽','42001_스프,쇠고기스프','42002_스프,콩소메','42003_스프,크림스프,아스파라거스','42004_스프,쇠고기야채스프','42005_스프,양송이스프','51001_감자국','51002_감자당면국','51003_감자미역국','51004_감자수제비국','51005_감자어묵국','51006_감자호박국','51007_건새우미역국','51008_경단미역국','51009_계란국','51010_계란파국','51011_김당면국','51012_김치국','51013_김치무국','51014_김치수제비국','51015_김치콩나물국','51016_다시멸치미역국','51017_당면국','51018_대구국','51019_대합미역국','51020_대합찜국','51021_동태국','51022_두부계란탕','51023_두부김치국','51024_두부어묵새우젓국','51025_떡국','51026_떡어묵국','51027_모시조개국','51028_무국','51029_무새우젓국','51030_무채어묵국','51031_미역국','51032_버섯국','51033_북어계란국','51034_북어국','51035_북어콩나물국','51036_새우젓호박국','51037_쇠고기국','51038_쇠고기두부국','51039_쇠고기무국','51040_쇠고기콩나물국','51041_어묵국','51042_오징어국','51043_오징어무국','51044_유부국','51045_조개국','51046_조개살두부국','51047_조개살배추국','51048_참치김치국','51049_참치미역국','51050_콩나물국','51051_콩나물무채국','51052_토란국','51053_표고버섯북어국','51054_호박새우젓국','51055_홍합무국','51056_홍합미역국','52001_감자고비된장국','52002_감자된장국','52003_감자두부된장국','52004_건새우아욱국','52005_근대된장국','52006_근대조개국','52007_꽃게된장국','52008_냉이된장국','52009_단배추된장국','52010_달래된장국','52011_두부된장국','52012_시금치조개국','52013_무된장국','52014_미역된장국','52015_바지락냉이토장국','52016_배추된장국','52017_솎음배추국','52018_시금치된장국','52019_시래기된장국','52020_쑥국','52021_아욱국','52022_열무감자국','52023_열무두부국','52024_왜된장국','52025_우거지국','52026_재치조개국','52027_조개된장국','52028_콩나물된장국','52029_해물된장국','52030_호박달래찌개','52031_호박된장찌개','52032_호박잎된장국','52033_홍합우거지국','53001_갈비탕','53002_감자탕','53003_곰갈비탕','53004_곰탕','53005_꼬리곰탕','53006_꽃게탕','53007_내장탕','53008_닭계장','53009_닭곰탕','53010_닭무국','53011_닭백숙','53012_도가니탕','53013_돈육개장','53014_두부탕','53015_보신탕','53016_삼계탕','53017_선지곱창국','53018_선지국','53019_설렁탕','53020_쇠고기두부탕','53021_쇠고기탕국','53022_순대국','53023_오리탕','53024_육개장','53025_조개탕','53026_짬뽕국','53027_추어탕','53028_해물탕','54001_가지냉국','54002_미역냉국','54003_미역오이냉국','61001_가자미매운탕','61002_갈치찌개','61003_고등어매운탕','61004_고등어찌개','61005_굴두부백탕','61006_굴두부찌개','61007_긴따루찌개','61008_꽁치찌개','61009_낙지찌개','61010_대구매운탕','61011_대구지리','61012_대구탕','61013_도미찌개','61014_동태매운탕','61015_동태찌개','61016_망둥어찌개','61017_메기매운탕','61018_명란알찌개','61019_미꾸라지매운탕','61020_민어매운탕','61021_병어찌개','61022_복매운탕','61023_복지리','61024_붕어매운탕','61025_삼치찌개','61026_쏘가리매운탕','61027_아구매운탕','61028_알탕','61029_어묵김치찌개','61030_연어찌개','61031_오징어찌개','61032_옥도미매운탕','61033_우럭매운탕','61034_임연수찌개','61035_잉어매운탕','61036_적어매운탕','61037_조기매운탕','61038_조기찌개','61039_참치김치찌개','61040_참치두부찌개','61041_참치찌개','61042_참치탕','61043_청어찌개','61044_해물잡탕','62001_닭매운탕','62002_돈육감자탕','62003_돈육김치찌개','62004_돼지고기찌개','62005_부대고기찌개','62006_쇠고기두부찌개','62007_쇠고기찌개','62008_햄김치찌개','62009_햄섞어찌개','63001_감자찌개','63002_냉이된장찌개','63003_달래된장찌개','63004_된장찌개','63005_두부된장찌개','63006_미더덕된장찌개','63007_쇠고기청국장찌개','63008_왜된장버섯탕','63009_우거지찌개','63010_우렁된장찌개','63011_청국장찌개','64001_곱창전골','64002_국수전골','64003_김치전골','64004_불낙전골','64005_쇠고기전골(스끼야끼)','64006_양송이버섯전골','64007_징기스칸','64008_표고버섯전골','65001_양송이버섯찌개','65002_섞어찌개','65003_순두부찌개','65004_연두부찌개','65005_콩비지찌개','71001_가오리찜','71002_가자미찜','71003_갈치찜','71004_고등어찜','71005_꼬막찜','71006_꽃게찜','71007_대구찜','71008_대합찜','71009_도미찜','71010_동태찜','71011_망둥어찜','71012_미더덕찜','71013_바지락찜','71014_북어찜','71015_아구찜','71016_알찜','71017_오징어순대','71018_오징어찜','71019_우럭찜','71020_자반고등어찜','71021_조기찜','71022_참치계란찜','71023_홍어찜','72001_갈비찜','72002_닭찜','72003_도가니수육','72004_돼지갈비고구마찜','72005_돼지갈비찜','72006_돼지족발찜','72007_쇠갈비떡찜','72008_쇠갈비찜','72009_우설찜','72010_편육','73001_깻잎찜','73002_애호박찜','73003_양배추찜','73004_호박잎찜','74001_계란찜','74002_두부찜','74003_순대','81001_가리비구이','81002_가자미구이(fried flounder)','81003_갈치구이','81004_고등어구이','81005_굴비구이','81006_긴따루구이','81007_꽁치구이','81008_넙치구이','81009_도미구이','81010_명태,노가리구이','81011_민어구이','81012_뱅어포구이','81013_병어고추장구이','81014_병어구이','81015_볼락구이','81016_북어양념구이','81017_삼치구이','81018_삼치양념구이','81019_연어구이','81020_오징어양념구이','81021_임연수구이','81022_장어구이','81023_적어구이','81024_전어구이','81025_조기구이','81026_조기양념구이','81027_쥐포구이','81028_참치구이','81029_청어구이','81030_가자미구이(Grilled Flounder)','81031_갈치구이(Panfried Flounder)','81032_고등어구이(Panfried~','81033_굴비구이(Panfried~','81034_긴따루구이(Panfried~','81035_꽁치구이(Panfried~','81036_넙치구이(Panfried~','81037_도미구이(Panfried~','81038_민어구이(Pantried~','81039_병어구이(Pantried~','81040_볼락구이(Pantried~','81041_삼치구이(Pantried~','81042_임연수구이(Pantried~','81043_적어구이(Pantried~','81044_전어구이(Pantried~','81045_조기구이(Pantried~','81046_청어구이(Pantried~','82001_갈매기살구이','82002_갈비구이','82003_내장구이','82004_닭갈비','82005_닭불고기','82006_돼지고기구이','82007_돼지불고기','82008_멧돼지구이','82009_불고기','82010_삼겹살구이','82011_쇠고기산적','82012_쇠등심구이','82013_오리고기로스','82014_칠면조구이','82015_통닭','82016_햄구이','83001_감자구이','83002_김구이','83003_더덕구이','83004_도라지구이','83005_두부양념구이','83006_떡고치구이','83007_옥수수구이','83008_우엉구이','91001_굴전','91002_맛살전','91003_새우전','91004_어묵전','91005_오징어옥수수전','91006_전유어(동태전)','91007_조개파전','91008_해물채소전','91009_해물파전','91010_홍합쑥갓전','91011_홍합전','92001_돼지고기완자전','92002_쇠간전','92003_쇠고기완자전','92004_천엽전','93001_가지전','93002_감자전','93003_김치빈대떡','93004_김치전','93005_깻잎전','93006_녹두전(빈대떡)','93007_더덕산적','93008_두릅적','93009_두부빈대떡','93010_버섯전','93011_부추전','93012_부추파전','93013_야채전','93014_양파전','93015_연근전','93016_파전','93017_풋고추표고전','93018_호박전','93019_화양적','94001_계란,스크램블드에그','94002_계란,스크램블드에그(패스트푸드)','94003_계란,오믈렛','94004_계란,햄오믈렛','94005_계란말이','94006_계란채소말이','94007_계란햄말이','94008_계란후라이','94009_햄부침','95001_두부부침','95002_두부전','101001_건꼴뚜기볶음','101002_건새우볶음','101003_건새우케찹볶음','101004_고추멸치볶음','101005_낙지볶음','101006_마늘쫑어묵볶음','101007_멸치야채볶음','101008_문어볶음','101009_뱅어포볶음','101010_북어볶음','101011_어묵볶음','101012_어묵양파볶음','101013_오징어떡볶음','101014_오징어버섯볶음','101015_오징어볶음','101016_오징어어묵볶음','101017_오징어채볶음','101018_오징어해물볶음','101019_잔멸치볶음','101020_잔멸치소세지볶음','101021_쥐포볶음','101022_참치김치볶음','101023_참치야채볶음','101024_호박홍합볶음','102001_곱창볶음','102002_김치소세지볶음','102003_닭고추장볶음','102004_닭떡볶음','102005_닭볶음','102006_닭살야채볶음','102007_돈육두루치기','102008_돼지고기고추장볶음','102009_돼지고기김치볶음','102010_돼지고기볶음','102011_돼지고기야채볶음','102012_돼지곱창볶음','102013_베이컨볶음','102014_소간야채볶음','102015_소세지야채볶음','102016_쇠고기고추장볶음','102017_쇠고기마늘볶음','102018_쇠고기버섯볶음','102019_쇠고기볶음','102020_쇠고기야채볶음','102021_쇠고기오이볶음','102022_쇠고기표고볶음','102023_철판구이볶음','102024_칠면조볶음','102025_햄김치볶음','102026_햄야채볶음','103001_가지볶음','103002_감자야채볶음','103003_감자어묵볶음','103004_감자채볶음','103005_감자풋고추볶음','103006_감자햄볶음','103007_고구마줄기볶음','103008_고비볶음','103009_고사리볶음','103010_고춧잎볶음','103011_근대볶음','103012_김치볶음','103013_깻잎나물볶음','103014_느타리버섯볶음','103015_도라지볶음','103016_마늘쫑볶음','103017_멸치깻잎볶음','103018_무청볶음','103019_미역줄기볶음','103020_미역줄기잡채','103021_버섯볶음','103022_버섯채소볶음','103023_부추볶음','103024_야채볶음','103025_양파볶음','103026_오이볶음','103027_우엉볶음','103028_죽순볶음','103029_취나물볶음','103030_호박볶음','104001_두부고추장볶음','104002_두부두루치기','104003_떡볶기','104004_떡볶기(전통)','104005_라면볶음','104006_라볶기','104007_마파두부','104008_카레떡볶음','104009_콩볶음','105001_구절판','105002_도토리묵김치잡채','105003_떡잡채','105004_목이버섯잡채','105005_부추잡채','105006_잡채','105007_콩나물잡채','105008_팔보채','111001_갈치조림','111002_어묵조림','111003_가자미조림','111004_고등어조림','111005_꽁치조림','111006_동태조림','111007_병어조림','111008_북어조림','111009_빙어조림','111010_삼치조림','111011_양미리조림','111012_어묵케찹조림','111013_어묵햄조림','111014_오징어조림','111015_오징어포고추조림','111016_자반고등어조림','111017_장어조림','111018_적어조림','111019_전어조림','111020_쥐포조림','111021_청어조림','111022_홍합조림','112001_달걀(계란)조림','112002_닭다리조림','112003_닭도리탕','112004_닭조림','112005_돼지고기갈비강정','112006_돼지고기메추리알조림','112007_돼지고기완자조림','112008_돼지고기장조림','112009_메추리알조림','112010_소세지어묵조림','112011_소세지조림','112012_쇠갈비조림','112013_쇠고기장조림','112014_우엉쇠고기조림','112015_풋고추소세지조림','112016_햄조림','113001_감자조림','113002_고구마조림','113003_깻잎조림','113004_다시마조림','113005_당근조림','113006_마늘쫑조림','113007_무조림','113008_양송이버섯조림','113009_연근조림','113010_완두콩조림','113011_우엉어묵조림','113012_우엉조림','113013_토란조림','113014_풋고추조림','113015_호박조림','114001_강남콩조림','114002_검정콩조림','114003_두부양념조림','114004_땅콩조림','114005_유부조림','114006_콩조림(콩자반)','121001_가자미튀김','121002_갈치튀김','121003_고등어튀김','121004_굴비튀김','121005_꽁치튀김','121006_대구튀김','121007_도미튀김','121008_동태튀김','121009_멸치튀김','121010_뱅어포튀김','121011_병어튀김','121012_북어강정','121013_삼치튀김','121014_새우까스','121015_생선까스','121016_생선까스정식','121017_어묵탕수','121018_어묵튀김','121019_연어튀김','121020_오징어탕수','121021_우럭튀김','121022_임연수튀김','121023_조기튀김','121024_쥐포튀김','121025_참치강정','121026_참치튀김','121027_청어튀김','121028_탕수어','121029_황새치튀김','122001_깐풍기','122002_닭강정','122003_닭고기탕수육','122004_닭다리튀김(패스트푸드)','122005_닭카레튀김','122006_닭튀김','122007_닭튀김(패스트푸드)','122008_닭튀김,맥치킨(맥도날드)','122009_돈까스','122010_돈까스양념튀김','122011_돈까스정식','122012_돈까스탕수','122013_돼지고기강정','122014_돼지고기튀김','122015_라조기','122016_비프스튜','122017_비후까스','122018_비후까스정식','122019_소세지튀김','122020_쇠고기튀김','122021_양념통닭','122022_탕수육','122023_함박스테이크정식','122024_햄커틀렛','122025_햄버거','123001_가지튀김','123002_감자연근튀김','123003_감자튀김','123004_감자튀김,후렌치후라이','123005_감자튀김,후렌치후라이(롯데리아)','123006_감자튀김,후렌치후라이(맥도날드)','123007_감자튀김,후렌치후라이(버거킹)','123008_감자튀김,후렌치후라이(웬디스)','123009_감자튀김,후렌치후라이(KFC)','123010_고구마깻잎튀김','123011_고구마채튀김','123012_고추튀김','123013_김튀김','123014_깻잎튀김','123015_다시마튀각','123016_도라지튀김','123017_미역야채튀김','123018_미역튀각','123019_야채튀김','123020_양파,어니언링(패스트푸드)','123021_연근튀김','123022_파래야채튀김','123023_풋고추튀김','123024_홍합튀김','124001_계란,스카치에그','124002_두부탕수육','124003_두부튀김','124004_맛탕','124005_식빵튀김','124006_옥수수튀김','131001_겨자채','131002_김무침','131003_노각무침','131004_단무지무침','131005_달래무무침','131006_도라지무침','131007_도라지북어포무침','131008_도토리묵무침','131009_두부냉채','131010_두부톳무침','131011_마늘쫑무침','131012_무말랭이무침','131013_무미역생채','131014_무생채','131015_미나리무침','131016_미역오이초무침','131017_미역초무침','131018_부추겉절이','131019_부추양배추무침','131020_삼색냉채','131021_상추겉절이','131022_쑥갓생채','131023_양배추겉절이','131024_양파겉절이','131025_열무무침','131026_오이부추무침','131027_오이생채','131028_오이양배추무침','131029_오이양파무침','131030_오이지무침','131031_오이피클','131032_잔파무침','131033_콩나물냉채','131034_톳나물','131035_파래무생채','131036_파래무침','131037_풋마늘초무침','131038_해파리냉채','131039_호박오가리무침','132001_떡맛살샐러드','132002_야채샐러드','132003_양배추샐러드','132004_양상추샐러드','132005_옥수수샐러드','132006_참치샐러드','132007_참치야채샐러드','132008_코올슬로우','132009_콩샐러드','133001_가지나물','133002_고구마줄기무침','133003_고비나물','133004_고사리나물','133005_고추잎나물','133006_근대나물','133007_깻잎나물','133008_냉이나물','133009_느타리콩나물무침','133010_다시마채무침','133011_단배추된장무침','133012_더덕무침','133013_도라지나물','133014_두릅무침','133015_머위나물','133016_무말랭이오징어무침','133017_무숙채','133018_미나리나물','133019_미역나물','133020_배추나물','133021_배추숙주나물','133022_비름나물','133023_쇠고기무나물','133024_숙주나물','133025_숙주맛살무침','133026_숙주미나리무침','133027_숙주부추나물','133028_시금치나물','133029_시래기나물','133030_쑥갓나물','133031_씀바귀나물','133032_어묵콩나물부추무침','133033_오징어풋마늘무침','133034_취나물','133035_콩나물','133036_콩나물겨자채','133037_콩나물미나리무침','133038_탕평채','133039_토란대무침','134001_게맛살무침','134002_골뱅이무침','134003_굴무생채','134004_굴무침','134005_꼴뚜기무침','134006_낙지무침','134007_노가리채무침','134008_대구포무침','134009_멸치잔파무침','134010_문어무침','134011_북어채무침','134012_새우무침','134013_소라무침','134014_어리굴젓무침','134015_오징어무침','134016_오징어미역초무침','134017_오징어어묵무침','134018_오징어젓무무침','134019_오징어젓무침','134020_오징어채무침','134021_조개젓무침','134022_쥐포무침','134023_창란젓무무침','134024_피조개무침','134025_홍어회무침','134026_홍합무침','135001_닭고기냉채','135002_사태초무침','135003_쇠고기김무침','135004_편육겨자채','135005_편육무침','141001_갓김치','141002_고들빼기김치','141003_깍두기','141004_나박김치','141005_동치미','141006_무청김치','141007_무초절이','141008_배추김치','141009_보쌈김치','141010_부추김치','141011_열무김치','141012_오이소배기','141013_유채김치','141014_장김치','141015_총각김치','141016_파김치','151001_가다랭이회','151002_가리비회','151003_가자미회','151004_개불','151005_굴,석화','151006_낙지','151007_노래미회','151008_농어회','151009_다금바리회','151010_도미회','151011_멍게,우렁쉥이','151012_멸치회','151013_모듬회','151014_민어회','151015_방어회','151016_밴뎅이회','151017_뱅어회','151018_병어회','151019_빙어회','151020_새우','151021_소라회','151022_송어회','151023_숭어회','151024_쏘가리회','151025_아귀회','151026_오징어회','151027_우럭회','151028_은어회','151029_준치회','151030_참다랑어회','151031_해삼','152001_소간회','152002_소양(천엽)회','152003_육회','153001_미나리강회','153002_부추강회','153003_파강회','161001_가다랭이내장젓','161002_갈치젓','161003_게알젓','161004_게장','161005_꼴뚜기젓','161006_꼴뚜기젓,양념','161007_대구,아가미젓','161008_대구젓','161009_멸치액젓','161010_멸치젓','161011_명란젓','161012_명란젓양념','161013_민어알젓','161014_바지락젓','161015_밴뎅이젓','161016_새우젓','161017_성게알젓','161018_송어젓','161019_아가미젓','161020_아미젓','161021_어란젓','161022_어리굴젓','161023_연어알젓','161024_연어젓','161025_오징어내장젓','161026_오징어젓','161027_은어내장젓','161028_전복젓','161029_전어젓','161030_조개젓','161031_조기젓','161032_창란젓','161033_창란젓양념','161034_청어알젓','161035_황새치젓','171001_깻잎장아찌','171002_나라쓰게','171003_단무지','171004_마늘장아찌','171005_무짠지','171006_오이숙장아찌','171007_오이지','171008_오이피클','181001_간장,양념간장','181002_간장,양조간장','181003_간장,왜간장','181004_간장,죽염간장','181005_고추장','181006_고추장볶음','181007_굴소스','181008_돈까스소스','181009_된장,쌈된장','181010_된장,양조된장','181011_된장,왜된장','181012_된장,한식된장','181013_마늘가루','181014_마요네즈','181015_머스터드소스','181016_멸치다시다','181017_미림','181018_분말조미료,멸치','181019_분말조미료,쇠고기','181020_샐러드드레싱,따우전드아일랜드','181021_샐러드드레싱,이탈리안','181022_샐러드드레싱,후렌치','181023_생강가루','181024_소금','181025_소금,고운소금','181026_소금,굵은소금','181027_소금기름','181028_쇠고기다시다','181029_스파게티소스,분말','181030_식초','181031_식초,과일식초,감식초','181032_식초,사과','181033_식초,쌀식초','181034_식초,양조식초','181035_식초,현미','181036_쌈장','181037_쌈장(고추장함유)','181038_양파가루','181039_와사비,분말','181040_우스터소스','181041_짜장','181042_짜장(춘장)','181043_청국장,생','181044_청국장,청국장분말','181045_초장','181046_칠리가루','181047_카레가루','181048_템페','181049_토마토,소스,통조림','181050_토마토케찹','181051_파슬리,말린것','181052_파프리카분말','181053_프렌치드레싱','181054_핫소스','181055_혼합장(쌈장)','181056_후추,검은색','181057_후추가루','191001_분유,전지분유','191002_분유,조제분유','191003_분유,탈지분유','191004_연유','191005_우유','191006_우유,저지방가공유,쵸코','191007_우유,저지방가공유,커피','191008_우유,저지방우유','191009_우유,쵸코렛','192001_샤베트','192002_쉐이크,딸기','192003_쉐이크,딸기(맥도날드)','192004_쉐이크,딸기(패스트푸드)','192005_쉐이크,바닐라','192006_쉐이크,바닐라(롯데리아)','192007_쉐이크,바닐라(맥도날드)','192008_쉐이크,바닐라(버거킹)','192009_쉐이크,바닐라(패스트푸드)','192010_쉐이크,쵸코렛','192011_쉐이크,쵸코렛(맥도날드)','192012_쉐이크,쵸코렛(버거킹)','192013_쉐이크,쵸코렛(패스트푸드)','192014_아이스밀크','192015_아이스크림','192016_아이스크림,누크바(롯데)','192017_아이스크림,더블비안코(롯데)','192018_아이스크림,딸기썬대','192019_아이스크림,딸기썬대(맥도날드)','192020_아이스크림,맥스(롯데)','192021_아이스크림,바닐라아이스크림(콘)','192022_아이스크림,셀렉션(롯데)','192023_아이스크림,소프트(패스트푸드)','192024_아이스크림,스크류바(롯데)','192025_아이스크림,월드콘(롯데)','192026_아이스크림,조안나(롯데)','192027_아이스크림,캐러멜썬대(맥도날드)','192028_아이스크림,콘(맥도날드)','192029_아이스크림,핫퍼지썬대(맥도날드)','192030_아이스크림,호두,임페리얼골드(롯데)','192031_요구르트,액상','192032_요구르트,호상','192033_요구르트,호상,딸기','192034_치즈,모짜렐라','192035_치즈,체다','192036_크림','201001_과일탄산음료','201002_구아바음료','201003_그레이프 환타','201004_당근쥬스','201005_두유,애플두유','201006_두유음료','201007_라이트콜라','201008_레모네이드','201009_레몬라임소다','201010_밤넥타','201011_분말청량음료','201012_사이다','201013_사이다(롯데리아)','201014_생강넥타','201015_소다,그레이프소다','201016_소다,클럽소다','201017_소다수,크림소다','201018_슬라이스','201019_식혜','201020_식혜,캔','201021_이온음료','201022_콜라','201023_콜라,다이어트스후라이트','201024_콜라,다이어트슬라이스','201025_콜라,다이어트체리콕','201026_콜라,다이어트콕(코카콜라)','201027_콜라,다이어트펩시','201028_콜라,루트비어','201029_콜라,체리콕','201030_콜라,코카콜라','201031_콜라,코카콜라,클래식','201032_콜라,펩시라이트','201033_콜라,펩시콜라','201034_토마토쥬스','201035_후르츠펀치','202001_드라이진','202002_럼','202003_마운틴듀','202004_막걸리','202005_매실주','202006_맥주','202007_맥주,생맥주','202008_보드카','202009_브랜디','202010_샴페인','202011_소주','202012_위스키','202013_진','202014_청주','202015_카테일,톰칼린스','202016_칵테일,데이커리','202017_칵테일,마티니','202018_칵테일,맨하탄','202019_칵테일,버번앤소다','202020_칵테일,블러드메리','202021_칵테일,스크류드라이버','202022_칵테일,위스키싸우어','202023_칵테일,진토닉','202024_칵테일,피나콜라다','202025_포도주,백포도주','202026_포도주,적포도주','203001_감잎차','203002_결명자차','203003_계피차','203004_구기자차','203005_녹차','203006_두충차','203007_보리차','203008_쌍화차','203009_오미자차','203010_우롱차','203011_유자차','203012_율무차','203013_인삼차','203014_치커리차','203015_캔커피','203016_커피,설탕','203017_커피,설탕,프림','203018_커피,원두,블랙','203019_커피,프림','203020_코코아,핫쵸코','203021_코코아,핫쵸코(버거킹)','203022_코코아,핫쵸코(웬디스)','203023_현미차','203024_홍삼차','203025_홍차','203026_홍차,캔','211001_감,연시','211002_구아바','211003_귤','211004_금귤(낑깡)','211005_다래','211006_단감','211007_대추','211008_딸기','211009_라임','211010_레몬','211011_망고','211012_머루','211013_멜론(머스크)','211014_멜론(백설)','211015_무화과','211016_바나나','211017_배','211018_버찌','211019_복숭아,백도','211020_복숭아,황도','211021_블루베리','211022_사과,국광','211023_사과,아오리','211024_사과,조나골드','211025_사과,홍옥','211026_사과,후지','211027_산딸기','211028_살구','211029_석류','211030_수박','211031_아보카도','211032_앵두','211033_양수박','211034_엘더베리','211035_오렌지','211036_자두','211037_자몽','211038_참외','211039_키위','211040_파인애플','211041_파파야','211042_포도','211043_포도,거봉','211044_사과,부사','212001_오렌지쥬스(생과일)','212002_구아바과즙음료','212003_딸기넥타','212004_라임쥬스','212005_레몬쥬스','212006_머루과즙','212007_배넥타','212008_복숭아넥타','212009_사과쥬스','212010_살구넥타','212011_오렌지,천연과즙','212012_오렌지,캔쥬스','212013_자두넥타','212014_자몽쥬스','212015_코코넛밀크','212016_파인애플,과즙음료','212017_파인애플,천연과즙','212018_파인애플,캔쥬스','212019_포도,과즙음료','212020_포도,천연과즙','212021_포도,캔쥬스','212022_후르츠펀치,캔','213001_귤통조림','213002_깐포도통조림','213003_버찌통조림','213004_복숭아,백도,통조림','213005_복숭아,황도,통조림','213006_블루베리통조림','213007_사과통조림','213008_살구통조림','213009_토마토통조림','213010_파인애플통조림','213011_후르츠칵테일,통조림','214001_감,곶감','214002_건포도','214003_과일샐러드','214004_과일칵테일','214005_귤쨈','214006_대추,말린것','214007_딸기쨈','214008_마말레이드','214009_바나나(말린것)','214010_복숭아쨈','214011_사과,말린것','214012_사과쨈','214013_살구쨈','214014_포도쨈','221001_보리미숫가루','221002_옥수수,단옥수수,찐것','221003_옥수수,볶은것','221004_옥수수,찰옥수수,찐것','221005_찹쌀미숫가루','221006_팝콘','222001_감자,구운것','222002_감자,구운것,치즈포함','222003_감자,매쉬드포테이토(패스트푸드)','222004_감자,베이크드포테이토,치즈,베이컨소스','222005_감자,베이크드포테이토,치즈소스','222006_감자,삶은것','222007_감자,아침용감자(웬디스)','222008_감자,찐것','222009_감자,해쉬브라운포테이토','222010_감자,해쉬브라운포테이토(맥도날드)','222011_감자샐러드(패스트푸드)','222012_감자샐러드(KFC)','222013_고구마,구운것','222014_고구마,생것','222015_고구마,찐것','223001_두부','223002_순두부','223003_연두부','223004_콩,베이크드빈(KFC)','224001_개암,볶은것','224002_깨,볶은것','224003_땅콩,말린것','224004_땅콩,볶은것','224006_땅콩,조미한것','224007_땅콩,커피땅콩','224008_마카다미아','224009_마카다미아,조미한것','224010_밤,구운것,군밤','224011_밤,삶은것','224012_밤,생것','224013_브라질너트,볶은것','224014_아몬드,조미한것','224015_은행,삶은것','224016_잣,볶은것','224017_캐슈넛,조미한것','224018_코코낫,말린것,구운것','224019_피스타치오,조미한것','224020_피칸,말린것','224021_피칸,볶은것','224022_해바라기씨,볶은것','224023_호두,볶은것','224024_호박씨,조미한것','225001_꽃양배추,생것','225002_당근','225003_들깻잎','225004_땅두릅,데친것','225005_마늘','225006_무,왜무','225007_배추','225008_상추쌈','225009_상추','225010_셀러리','225011_쑥갓','225012_아기양배추','225013_야채쌈','225014_양배추','225015_양배추쌈','225016_양상추','225017_양파','225018_오이','225019_원추리','225020_청경채','225021_치커리','225022_케일','225023_토마토','225024_파,쪽파','225025_풋고추,고추','225026_피망,푸른것','225027_호박잎','226001_닭고기 가슴,구운것','226002_닭고기 가슴살,구운것','226003_닭고기 날개,구운것','226004_닭고기 넙적다리,구운것','226005_닭고기,간,삶은것','226006_닭고기,삶은것','226007_닭고기,전기통닭','226008_닭다리,구운것','226009_돼지갈비,구운것','226010_돼지갈비,삶은것','226011_돼지고기,간,삶은것','226012_돼지고기,허파,삶은것','226013_돼지등심,구운것','226014_돼지등심,브로일','226015_돼지등심,삶은것','226016_돼지사태,구운것','226017_돼지안심,구운것','226018_돼지안심,브로일','226019_돼지어깨등심,구운것','226020_송아지갈비,구운것','226021_송아지고기,삶은것','226022_송아지등심,구운것','226023_쇠고기갈비,수입,구운것','226024_쇠고기갈비,수입,브로일','226025_쇠고기대접살,수입,브로일','226026_쇠고기사태,수입,삶은것','226027_쇠고기안심,수입,브로일','226028_쇠고기양지,수입,삶은것','226029_쇠고기채끝,수입,브로일','226030_양고기갈비,구운것','226031_양고기갈비,브로일','226032_양고기다리살,구운것','226033_양고기어깨살,브로일','226034_오리고기,집오리,구운것','226035_칠면조,살코기,구운것','227001_가재,삶은것','227002_갑오징어,데친것','227003_게,삶은것','227004_굴(양식산)','227005_굴,자연산','227006_까나리,자건품','227007_꼴뚜기,데친것','227008_대하구이','227009_문어,백문어,건','227010_상어알','227011_석굴','228001_계란,난백,삶은것','228002_계란,난백,생것','228003_계란,난황,삶은것','228004_계란,난황,생것','228005_계란,수란','228006_계란,전란,삶은것','228007_계란,전란,생것','228008_계란,후라이','228009_메추리알,삶은것','228010_메추리알,생것','228011_오리알,생것','228012_오리알,피단','228013_청둥오리알','229001_김,구운것','229002_다시마','229003_다시마쌈','229004_생미역','231001_가래떡','231002_개피떡','231003_백설기','231004_송편,검정콩속','231005_송편,깨','231006_송편,팥고물속','231007_수수경단','231008_수수부침','231009_시루떡,붉은팥고물','231010_쑥개피떡','231011_쑥설기','231012_약식','231013_인절미,콩고물','231014_인절미,팥고물','231015_절편','231016_증편','231017_찰시루떡','231018_찹쌀경단','231019_찹쌀떡','231020_찹쌀전병','241001_껌','241002_껌,무설탕','241003_껌,슈가리스자일리톨(롯데)','241004_껌,스카시망고스틴(롯데)','241005_껌,월드풍선껌(롯데)','241006_껌,쥬시후레쉬(롯데)','241007_껌,풍선껌','241008_껌,후라보노(롯데)','241009_꿀','241010_꿀,들깨꿀','241011_꿀,밤꿀','241012_꿀,싸리꿀','241013_꿀,아카시아꿀','241014_꿀,잡화꿀','241015_꿀,토종꿀','241016_로얄젤리','241017_머쉬멜로우','241018_사탕','241019_사탕,누가사탕','241020_사탕,누가사탕,살구','241021_사탕,드롭스','241022_사탕,땅콩누가사탕','241023_사탕,롯데사랑방(롯데)','241024_사탕,목캔디(롯데)','241025_사탕,박하사탕','241026_사탕,버터스카치사탕','241027_사탕,생캔디(롯데)','241028_사탕,스카치세가지맛(롯데)','241029_사탕,알사탕','241030_사탕,요구르트300(롯데)','241031_사탕,참새방앗간복숭아맛(롯데)','241032_설탕','241033_스낵,팝콘','241034_스낵,팝콘,소금,지방','241035_시럽','241036_시럽,딸기시럽','241037_시럽,쵸코시럽','241038_씨리얼(라이스 크리스피)','241039_씨리얼(아몬드푸레이크)','241040_씨리얼(코코링)','241041_씨리얼(코코팝스)','241042_씨리얼(콘첵스)','241043_씨리얼(콘푸로스트)','241044_씨리얼(콘프레이크)','241045_씨리얼(코코넛 첵스)','241046_양갱,팥','241047_엿,검은엿','241048_엿,고구마엿','241049_엿,깨엿','241050_엿,흰엿','241051_옥수수통조림','241052_옥수수통조림,크림스타일','241053_옥수수통조림,홀커넬스타일','241054_젤로','241055_젤리','241056_젤리,구미','241057_쵸코렛','241058_쵸코렛,가나(롯데)','241059_쵸코렛,땅콩쵸코볼,M&M_s','241060_쵸코렛,밀크','241061_쵸코렛,밀크,라이스씨리얼','241062_쵸코렛,빼빼로(롯데)','241063_쵸코렛,새알쵸코렛,M&M_s','241064_쵸코렛,스위트쵸코렛','241065_쵸코렛,아몬드쵸코렛','241066_쵸코렛,엘리스(롯데)','241067_쵸코렛,제로(롯데)','241068_쵸코렛,쵸코볼','241069_쵸코렛,크런키(롯데)','241070_쵸코렛,화이트','241071_카라멜,밀크','242001_돼지바베큐','242002_돼지베이컨,구운것','242003_런천미트,통조림','242004_베이컨','242005_소시지,리용','242006_소시지,볼로냐','242007_소시지,비엔나,위너','242008_소시지,이태리','242009_소시지,푸랑크푸르트','242010_육포,쇠고기','242011_콩통조림,포크앤빈스','242012_편육,돼지머리','242013_햄,등심','242014_햄,로스','242015_햄,본레스,구운것','242016_햄,본레스,생것','242017_햄,어깨살','242018_햄통조림','242019_햄통조림,구운것','243001_가다랭이,반건품','243002_가다랭이통조림','243003_가리비통조림','243004_가오리,조미품','243005_건멸치','243006_게,왕게통조림','243007_고등어통조림','243008_골뱅이통조림','243009_굴통조림','243010_꽁치통조림','243011_대구포','243012_대합통조림','243013_마른오징어,구운것','243014_명태,노가리','243015_명태포','243016_민어,조미품','243017_바지락통조림','243018_밴댕이(자건품)','243019_뱅어포','243020_복어(조미품)','243021_성게통조림','243022_소라통조림','243023_송어통조림','243024_숭어알훈제품','243025_어묵(게맛살)','243026_어묵(오뎅)','243027_연어통조림','243028_연어훈제품','243029_오징어구이,훈제,조미','243030_오징어젓,양념','243031_오징어채,조미','243032_오징어포,조미품','243033_전갱이, 가미통조림','243034_전복, 가미통조림','243035_정어리 ,가미통조림','243036_쥐포','243037_참치통조림','243038_피조개, 가미통조림','243039_홍합통조림','243040_황다랑어, 조미통조림','243041_황다랑어,조미통조림,고추참치','243042_황다랑어,조미통조림,야채참치','243043_황다랑어,조미통조림,짜장참치','244001_땅콩버터','244002_마가린','244003_면실유','244004_버터','244005_옥수수기름','244006_올리브유','244007_참기름','244008_채종유(유채유)','244009_콩기름','245001_분유,조제분유,1단계(매일)','245002_분유,조제분유,2단계(매일)','245003_분유,조제분유,3단계(매일)','245004_오트밀,사과,바나나,고형분포함(거버)','245005_유아용과자,베이비비스켓(거버)','245006_유아용과자,베이비쿠키(거버)','245007_유아용과자,보리,분말(거버)','245008_유아용과자,애니멀크래커(거버)','245009_유아용과자,애로우루트쿠키(거버)','245010_이유식,계란노른자,으깬형태,2차식(거버)','245011_이유식,계란죽(가정조리)','245012_이유식,고구마,고형분포함,3차식(거버)','245013_이유식,고구마,분만(하인즈)','245014_이유식,고구마,으깬형태,1차식(거버)','245015_이유식,고구마,으깬형태,2차식(거버)','245016_이유식,과일죽(가정조리)','245017_이유식,과일푸딩(가정조리)','245018_이유식,당근,고형분포함,3차식(거버)','245019_이유식,당근,분말(하인즈)','245020_이유식,당근,으깬형태,1차식(거버)','245021_이유식,당근,으깬형태,2차식(거버)','245022_이유식,당근죽(가정조리)','245023_이유식,맑은쥬스,배,2차식(거버)','245024_이유식,맑은쥬스,배,2차식(거버)','245025_이유식,맑은쥬스,사과','245026_이유식,맑은쥬스,사과,복숭아','245027_이유식,맑은쥬스,사과,복숭아,2차식(거버)','245028_이유식,맑은쥬스,사과,살구(하인즈)','245029_이유식,맑은쥬스,사과,살구,2차식(거버)','245030_이유식,맑은쥬스,사과,체리','245031_이유식,맑은쥬스,사과,체리(거버)','245032_이유식,맑은쥬스,사과,파인애플(거버)','245033_이유식,맑은쥬스,사과,파인애플(하인즈)','245034_이유식,맑은쥬스,사과,포도','245035_이유식,맑은쥬스,사과,포도,2차식(거버)','245036_이유식,맑은쥬스,종합과일','245037_이유식,맑은쥬스,종합과일,2차식(거버)','245038_이유식,맘마밀,쇠고기와야채(매일)','245039_이유식,맘마밀,쌀과우유(매일)','245040_이유식,맘마밀,쌀로만든씨리얼(매일)','245041_이유식,맘마밀,요구르트와곡류(매일)','245042_이유식,맘마밀,치즈와쇠고기(매일)','245043_이유식,맘마밀,혼합과일(매일)','245044_이유식,맘마밀,혼합야채(매일)','245045_이유식,바나나,1차식,으깬형태(거버)','245046_이유식,바나나,분말(하인즈)','245047_이유식,바나나,으깬형태(비치넛)','245048_이유식,밤,바나나죽(가정조리)','245049_이유식,배,고형분포함,3차식(거버)','245050_이유식,배,으깬형태,1차식(거버)','245052_이유식,배,으깬형태,2차식(거버)','245053_이유식,배숙(가정조리)','245054_이유식,보리죽,우유첨가','245055_이유식,복숭아,고형분포함,3차식(거버)','245056_이유식,복숭아,분말(하인즈)','245057_이유식,복숭아,으깬형태,1차식(거버)','245058_이유식,복숭아,으깬형태,2차식(거버)','245059_이유식,빵죽(가정조리)','245060_이유식,사과(비치넛)','245061_이유식,사과,배,분말(하인즈)','245062_이유식,사과,배,으깬형태(하인즈)','245063_이유식,사과,복숭아,분말(하인즈)','245064_이유식,사과,분말(하인즈)','245065_이유식,사과,블루베리,고형분포함(거버)','245066_이유식,사과,블루베리,으깬형태(거버)','245067_이유식,사과,살구,고형분포함(하인즈)','245068_이유식,사과,살구,분뻗(하인즈)','245069_이유식,사과소스,고형분포함,3차식(거버)','245070_이유식,사과소스,살구,고형분포함(거버)','245071_이유식,사과소스,살구,으깬형태','245072_이유식,사과소스,으깬형태','245073_이유식,사과소스,으깬형태,1차식(거버)','245074_이유식,사과소스,으깬형태,2차식(거버)','245075_이유식,사과숙(가정조리)','245076_이유식,사과와배,고형분포함(하인즈)','245077_이유식,생선죽(가정조리)','245078_이유식,쇠간죽(가정조리)','245079_이유식,쇠고기,고형분포함,3차식(거버)','245080_이유식,쇠고기,으깬형태,2차식(거버)','245081_이유식,쌀,바나나,분말','245082_이유식,쌀,바나나,분말(거버)','245083_이유식,쌀,바나나,분말(비치넛)','245084_이유식,쌀,바나나,사과즙,인스탄트(하인즈)','245085_이유식,쌀,분말(거버)','245086_이유식,쌀죽,사과,바나나,2차식(거버)','245087_이유식,쌀죽,사과소스,바나나','245088_이유식,쌀죽,사과소스,바나나,으깬형태','245089_이유식,쌀죽,사과즙,배즙분말(하인즈)','245090_이유식,쌀죽,우유,바나나','245091_이유식,쌀죽,우유첨가','245092_이유식,쌀죽,종합과일,고형분포함','245093_이유식,쌀죽,종합과일,고형분포함,(거버)','245094_이유식,씨리얼,노른자,고형분포함','245095_이유식,씨리얼,노른자,베이컨,고형분포함','245096_이유식,씨리얼,노른자,베이컨,으깬형태','245097_이유식,씨리얼,노른자,으깬형태','245098_이유식,씨리얼,바나나,사과,분말(하인즈)','245099_이유식,씨리얼,사과,바나나,으깬형태(거버)','245100_이유식,씨리얼,사과바나나고형분포함(거버)','245101_이유식,씨리얼,사과소스,바나나,고형분포함','245102_이유식,씨리얼,사과소스,바나나,으깬형태','245103_이유식,영양죽1,이유중기(가정조리)','245104_이유식,오트밀,바나나,분말','245105_이유식,오트밀,바나나,분말(거버)','245106_이유식,오트밀,바나나,사과,분말(하인즈)','245107_이유식,오트밀,사과,바나나,고형분포함','245108_이유식,오트밀,사과,바나나,으깬형태','245109_이유식,오트밀,사과,바나나,으깬형태(거버)','245110_이유식,오트밀분말(거버)','245111_이유식,오트밀죽,바나나,우유','245112_이유식,오트밀죽,우유첨가','245113_이유식,유아용 맑은쥬스,사과(거버)','245114_이유식,유아용쥬스,배(거버)','245115_이유식,유아용쥬스,사과,베리(거버)','245116_이유식,유아용쥬스,사과,체리(거버)','245117_이유식,유아용쥬스,사과,포도(거버)','245118_이유식,유아용쥬스,종합과일(거버)','245119_이유식,전통죽(가정조리)','245120_이유식,종합씨리얼 분말(거버)','245121_이유식,종합씨리얼,바나나,분말','245122_이유식,종합씨리얼,바나나,분말(거버)','245123_이유식,종합씨리얼,우유첨가(거버)','245124_이유식,종합씨리얼죽,우유 첨가','245125_이유식,종합야채,고형분포함,3차식(거버)','245126_이유식,종합야채,분말(하인즈)','245127_이유식,종합야채,으깬형태,2차식(거버)','245128_이유식,크림과시금치으깬형태,2차식(거버)','245129_이유식,햄,고형분포함,3차식(거버)','245130_이유식,햄,으깬형태,2차식(거버)','245131_이유식,영양죽2,이유후기(가정조리)','246001_밤통조림','246002_송화가루','246003_인삼,백삼','246004_인삼,수삼',
'11001000_고량미','11002030_귀리,도정곡,겉귀리','11002040_귀리,도정곡,쌀귀리','11002010_귀리,알곡,도정곡','11002020_귀리,오트밀가루','11003010_기장,도정곡,','11003020_기장,알곡','11005000_메밀,도정곡','11005010_메밀,알곡','11005020_메밀,메밀가루','11005030_메밀,메밀가루,도정곡','11005040_메밀,메밀가루,알곡','11006000_메밀,부침가루','11007000_메밀묵','11008000_메조','11009010_밀가공식품,밀가루,도우넛가루','11009020_밀가공식품,밀가루,튀김가루','11009030_밀가공식품,밀가루,치킨가루(닭튀김가루)','11009040_밀가공식품,밀가루,핫케익가루','11009050_밀가공식품,밀가루,부침가루','11010010_밀가공식품,밀가루,빵가루','11011010_밀가공식품,밀가루,강력분','11011020_밀가공식품,밀가루,중력분','11011030_밀가공식품,밀가루,박력분','11011040_밀,밀가공식품,밀가루,국내산,중력밀가루','11011050_밀,밀가공식품,밀가루,국내산,통밀밀가루','11012030_밀,도정곡,흑밀','11012040_밀,도정곡,금강밀','11012050_밀,도정곡,신미찰밀','11012010_밀,밀쌀','11012020_밀,통밀','11013000_밀,밀배아','11014010_보리,겉보리,납작보리(압맥)','11014020_보리,겉보리,보리쌀','11014021_보리,겉보리,서둔찰보리','11014022_보리,겉보리,두산8호','11014030_보리,겉보리,통보리','11014040_보리,겉보리,할맥','11014050_보리,쌀보리','11014060_보리,볶은보리','11014070_보리,찰보리','11014071_보리,찰보리,할맥','11014080_보리,생것,가루','11015000_보리,미숫가루','11016000_엿기름','11017000_보리,보리밥','11018010_수수,도정곡','11018020_수수,알곡','11018030_수수,가루','11019010_옥수수,메옥수수,말린것','11019020_옥수수,메옥수수,볶은것','11019030_옥수수,단옥수수,생것','11019040_옥수수,단옥수수,찐것','11019050_옥수수,찰옥수수,생것','11019060_옥수수,찰옥수수,마른것','11019070_옥수수,찰옥수수,찐것','11019080_옥수수,튀김옥수수,마른것','11019090_옥수수,옥수수가루','11019091_옥수수,옥수수묵','11020000_옥수수,옥수수강냉이팽화','11020010_옥수수,콘칩','11021000_옥수수,콘샐러드','11022000_옥수수,옥수수통조림,가당','11022010_옥수수,옥수수통조림,크림스타일','11022020_옥수수,옥수수통조림,홀커넬스타일','11022030_옥수수,옥수수죽,통조림','11023010_시리얼,코코넛첵스','11023020_시리얼,라이스크리스피','11023030_시리얼,아몬드후레이크','11023040_시리얼,아몬드푸레이크,농심켈로그','11023050_시리얼,포스트아몬드후레이크,동서식품','11023060_시리얼,코코링','11023070_시리얼,코코팝스','11023080_시리얼,코코팝스,농심켈로그','11023090_시리얼,콘첵스','11023100_시리얼,콘푸레이크','11023110_시리얼,콘푸레이크,농심켈로그','11023120_시리얼,포스트콘후레이크,동서식품','11023130_시리얼,콘푸로스트','11023140_시리얼,콘푸로스트,농심켈로그','11023150_시리얼,하니팝스','11023160_시리얼,현미푸레이크','11023170_시리얼,포스트현미후레이크,동서식품','11023180_시리얼,현미푸레이크,농심켈로그','11023190_시리얼,후르트링','11023200_시리얼,쵸코스,농심켈로그','11023210_시리얼,쵸코첵스,농심켈로그','11023220_시리얼,코코넛푸레이크,농심켈로그','11023230_시리얼,포스트스위트후레이크,동서식품','11023240_시리얼,포스트스타베리,동서식품','11023250_시리얼,포스트코코볼,동서식품','11023260_시리얼,포스트하니컴,동서식품','11023270_시리얼,하니오트밀,농심켈로그','11023280_시리얼,하니첵스,농심켈로그','11023290_시리얼,후르트링,농심켈로그','11023300_시리얼,후르츠너트,농심켈로그','11023310_시리얼,오곡으로만든첵스초코,농심켈로그','11023320_시리얼,오곡으로만든첵스초코크런치,농심켈로그','11023330_시리얼,오곡으로만든첵스초코스노우,농심켈로그','11023340_시리얼,콘푸로스트1/3라이트슈거,농심켈로그','11023350_시리얼,올-브랜플러스,농심켈로그','11023360_시리얼,올-브랜푸레이크,농심켈로그','11023370_시리얼,곡물이야기검은참깨무콜레스테롤,농심켈로그','11023380_시리얼,곡물이야기오곡저지방,농심켈로그','11023390_시리얼,곡물이야기현미저지방,농심켈로그','11024000_옥수수,팝콘','11024010_옥수수,팝콘,소금,지방','11025000_율무,율무쌀','11026000_율무,죽','11026010_율무,국수','11027010_조,도정곡','11027020_조,알곡','11028000_차수수','11029000_차조','11030010_피,도정곡','11030020_피,알곡','11031010_호밀,도정곡','11031020_호밀,알곡','11031030_호밀,호밀가루','12001031_쌀,멥쌀,논벼,백미(국내산),일반형','12001032_쌀,멥쌀,논벼,백미(국내산),일반형,수라벼','12001033_쌀,멥쌀,논벼,백미(국내산),일반형,새추청벼','12001034_쌀,멥쌀,논벼,백미(국내산),일반형,일미벼','12001000_쌀,멥쌀,논벼,백미(국내산),일반형,일품','12001010_쌀,멥쌀,논벼,백미(국내산),통일형','12001020_쌀,멥쌀,논벼,백미(국내산),특수미,강화미','12001021_쌀,멥쌀,논벼,현미,특수미,고아미2호','12001022_쌀,멥쌀,논벼,현미,특수미,큰눈벼','12001023_쌀,멥쌀,논벼,백미(국내산),특수미,고아미2호','12001024_쌀,멥쌀,논벼,백미(국내산),특수미,큰눈벼','12001025_쌀,멥쌀,논벼,백미(국내산),특수미,향미','12001030_쌀,멥쌀,논벼,백미(국내산),일반형,추청','12001040_쌀,멥쌀,논벼,칠분도미','12001050_쌀,멥쌀,논벼,쌀가루','12001060_쌀,멥쌀,밭벼,백미','12001070_쌀,멥쌀,밭벼,칠분도미','12001080_쌀,일반미','12001090_쌀,멥쌀,논벼,미국','12001100_쌀,멥쌀,논벼,일본','12001110_쌀,멥쌀,논벼,중국','12001120_쌀,멥쌀,논벼,태국','12001130_쌀,멥쌀,논벼,호주','12002000_쌀,멥쌀,논벼,현미,일반형','12002001_쌀,멥쌀,논벼,현미,일반형,일미벼','12002002_쌀,멥쌀,논벼,현미,일반형,일품벼','12002003_쌀,멥쌀,논벼,현미,일반형,추청벼','12002004_쌀,멥쌀,논벼,현미,통일형','12002010_쌀,멥쌀,밭벼,현미','12002020_쌀,현미,쑥쌀','12002030_쌀,현미,가루','12002040_쌀,현미,발아현미','12003000_쌀,흑미,멥쌀','12003010_쌀,흑미,찹쌀','12003020_쌀,흑미,현미','12004000_쌀,멥쌀,논벼,쌀배아,배아미','12004010_쌀,멥쌀,논벼,쌀배아,인디카형','12004020_쌀,멥쌀,논벼,쌀배아,자포니카형','12005000_쌀,찹쌀,백미','12005001_쌀,찹쌀,백미,화선찰벼','12005010_쌀,찹쌀,현미','12005020_찹쌀가루','12005030_찹쌀미숫가루','12006000_쌀,멥쌀,논벼,쌀밥,백미','12006001_쌀,멥쌀,논벼,쌀밥,백미,추청벼','12006002_쌀,멥쌀,논벼,쌀밥,백미,일품벼','12006003_쌀,멥쌀,논벼,쌀밥,백미,수라벼','12006004_쌀,멥쌀,논벼,쌀밥,백미,새추청벼','12006010_쌀,멥쌀,논벼,쌀밥,칠분도미','12006020_쌀,멥쌀,밭벼,쌀밥,백미','12006030_쌀,멥쌀,밭벼,쌀밥,칠분도미','12006040_쌀,멥쌀,논벼,쌀밥,현미','12007000_즉석밥,오곡밥,제일제당','12007010_즉석밥,햇반,제일제당','12007020_필라프,새우,냉동','12007030_필라프,햄,냉동','12008000_쌀,멥쌀,논벼,죽,백미','12008010_쌀,멥쌀,논벼,죽,칠분도미','12008020_쌀,멥쌀,논벼,죽,현미','12009000_죽,인스턴트','12009010_죽,야채맛죽,인스턴트','12009020_죽,참치죽,레토르트','12009030_죽,참치죽,동원산업','12010000_쌀,멥쌀,논벼,미음,백미','12010010_쌀,멥쌀,논벼,미음,칠분도미','12010020_쌀,멥쌀,논벼,미음,현미','12011000_쌀,멥쌀,논벼,튀긴쌀','12012000_누룽지','13001000_국수,마른것','13001010_국수,삶은것','13001020_소면,마른것','13001030_소면,삶은것','13002000_국수,중면','13003010_국수,생국시,풀무원','13004000_녹두국수','13005000_도토리,도토리국수','13006000_떡복이,인스턴트','13007000_라면,인스턴트','13007001_라면,조리한것,스프포함','13007010_라면,너구리순한맛,농심','13007020_라면,너구리얼큰한맛,농심','13007030_라면,뉴면,빙그레','13007040_라면,맛보면,빙그레','13007050_라면,삼양라면,삼양식품','13007060_라면,신라면,농심','13007070_라면,안성탕면,김치','13007080_라면,진라면(매운맛),오뚜기','13007090_라면,칼슘안성탕면,농심','13007100_컵라면,캡틴매운탕면,빙그레','13007110_컵라면,캡틴프리미엄부대전골,빙그레','13007120_컵라면,캡틴프리미엄육개장,빙그레','13008010_컵라면,새우탕큰사발,농심','13008020_컵라면,육개장사발면,농심','13008030_컵라면,육개장(용기),삼양식품','13008040_컵라면,짜장큰사발,농심','13008050_컵라면,큰냄비육개장(용기),삼양식품','13008060_컵라면,큰사발면(김치),농심','13008070_컵라면,튀김우동큰사발,농심','13009010_마카로니,마른것','13009020_마카로니,삶은것','13010010_막국수,마른것','13010020_막국수,삶은것','13011010_만두,냉동,고기만두','13011020_만두,고기만두,동원산업','13011030_만두,냉동,김치만두','13011040_만두,김치만두,동원산업','13011050_만두,냉동,물만두','13012000_메밀국수,생것,생것','13012010_메밀국수,생것,삶은것','13012020_메밀국수,마른것,마른것','13012030_메밀국수,마른것,삶은것','13013000_메밀냉면','13013010_메밀냉면(인스턴트)','13014000_수제비','13015010_스파게티,마른것','13015020_스파게티,삶은것','13016010_스파게티(패스트푸드)','13016020_스파게티,레토르트식품','13016040_스파게티,미트소스,냉동','13016050_스파게티,병조림','13016030_스파게티,전자렌지용','13017010_스파게티와미트볼(패스트푸드)','13018010_레또그라탕,제일제당','13019010_스프,쇠고기스프,분말','13019020_스프,쇠고기스프,물을가한것','13019030_스프,쇠고기스프,오뚜기','13019040_스프,쇠고기야채스프,분말','13019050_스프,쇠고기야채스프,물을가한것','13019060_스프,야채스프,오뚜기','13019070_스프,양송이스프,분말','13019080_스프,양송이스프,물을가한것','13019090_스프,양파스프,분말','13019100_스프,양파스프,물을가한것','13019110_스프,콩소메,분말,젤라틴','13019120_스프,콩소메,물을가한것','13019130_스프,크림스프,분말','13019140_스프,크림스프,물을가한것','13019150_스프,크림스프,오뚜기','13019160_스프,크림스프,아스파라거스','13019170_스프,크림스프,아스파라거스크림,물을가한것','13019180_스프,인스턴트','13020010_엔칠라다(패스트푸드)','13021000_우동,생것','13021010_우동,삶은것','13021020_냄비우동,냉동','13021030_우동,조리한것,스프포함','13022010_울면,인스턴트','13023000_중국국수,생것','13023010_중국국수,삶은것','13023030_마른중국국수,마른것','13023040_마른중국국수,삶은것','13023050_증숙중국국수','13023060_중면,건면,생것','13024010_짜장면,냉동','13024020_짜장면,인스턴트','13024030_짜장,레토르트','13025010_쫄면,마른것','13026010_칼국수(면)','13026020_칼국수,인스턴트,반건조','13026030_칼국수,인스턴트,생것','13026040_칼국수,생칼국수,풀무원','13026050_칼국수,생면,생것','13027010_하이면,인스턴트','14001000_건빵','14002000_건포도빵','14003000_크로켓','14003010_크로켓,냉동','14003020_크로켓,채소','14003030_크로켓,크림','14004000_곰보빵','14006010_도우넛,링','14006020_도우넛,이스트도우넛','14006030_도우넛,팥','14006040_도우넛,케이크도우넛','14007010_롤빵,소프트롤','14007020_롤빵,하드롤','14008010_머핀,잉글리쉬머핀','14008020_머핀,전유로만든것','14008030_머핀,잉글리쉬머핀,버터첨가(패스트푸드)','14009000_모카빵','14010000_마늘바게트','14011000_버리토(패스트푸드)','14012010_베이걸,건포도계피,토스트','14012020_베이글,계란','14013000_불란서빵','14014000_브레드스틱,도미노피자','14015010_비스켓,분말로만든것','14015020_비스켓(패스트푸드)','14015030_비스켓,KFC','14015040_비스켓,버거킹','14015050_비스켓,버터밀크(웬디스)','14016000_슈크림','14017000_식빵,식빵','14017010_식빵,우유식빵','14017020_식빵,옥수수식빵','14018010_식빵,토스트','14018020_식빵,프렌치버터토스트','14018030_식빵,후렌치토스트,버거킹','14018040_식빵,후렌치토스트(웬디스)','14019000_옥수수빵,분말로만든것','14020000_와플','14020010_와플,분말로만든것','14020020_와플,커스터드크림','14020030_와플,잼','14021000_쨈빵','14022000_크림빵','14023000_팥빵','14024000_팬케이크','14025010_푸딩,바닐라,분말,전유로만든것','14025020_푸딩,커스터드','14026000_호밀,호밀빵','14027010_호빵,고기속','14027020_호빵,팥속','14027030_호빵,채소속','14027040_찐빵,단호박소','14028000_만주,밤','14029000_모닝빵','15001000_페이스트리','15001010_페이스트리,과일','15001020_페이스트리,치즈','15001030_페이스트리,데니쉬페이스트리,과일(패스트푸드)','15001040_페이스트리,데니쉬페이스트리,시나몬(패스트푸드)','15001050_페이스트리,데니쉬페이스트리,치즈(패스트푸드)','15001060_페이스트리,치즈데니쉬,맥도날드','15002000_카스테라,카스테라','15002010_카스테라,감카스테라','15003000_커스터드','15004010_케이크,당근케이크','15004020_케이크,당근케이크,푸딩형,프로스팅없는것','15004030_케이크,당근케이크가루','15004040_케이크,롤케이크','15004050_케이크,바나나케이크','15004060_케이크,생크림,블루베리','15004070_케이크,쇼튼드케이크','15004080_케이크,스폰지케이크','15004090_케이크,엔젤푸드케이크','15004100_케이크,쵸콜렛케이크','15004110_케이크,쵸콜렛케이크,쵸콜렛프로스팅있는것','15004120_케이크,쵸코케이크가루','15004130_케이크,치즈케이크','15004140_케이크,컵케이크','15004150_케이크,파운드케이크','15004160_케이크,핫케이크','15004170_케이크,후르츠케이크','15004180_케이크,배','15005000_크로아쌍,크로아쌍','15005010_크로아쌍,계란과치즈','15005020_크로아쌍,계란과치즈(패스트푸드)','15005030_크로아쌍,버터','15006010_파이,고구마파이','15006020_파이,딸기파이','15006030_파이,블렉베리','15006040_파이,블루베리','15006050_파이,애플파이','15006060_파이,애플파이,롯데리아','15006070_파이,애플파이,맥도날드','15006080_파이,체리파이','15006090_파이,체리파이,맥도날드','15006100_파이,애플파이,버거킹','15006110_파이,체리파이,버거킹','15006120_파이,파인애플파이','15006130_파이,피칸파이','15006140_파이,호박파이','15006150_파이,피칸파이,버거킹','15007000_피자','15007010_피자,냉동','15007020_피자(패스트푸드)','15007030_피자,디럭스(패스트푸드)','15007040_피자,소시지(패스트푸드)','15007050_피자,쇠고기(패스트푸드)','15007060_피자,슈프림(패스트푸드)','15007070_피자,씬크리스피,슈프림,피자헛','15007080_피자,슈프림피자(thin),피자헛','15007090_피자,씬크리스피,슈퍼슈프림,피자헛','15007100_피자,슈퍼슈프림피자(thin),피자헛','15007110_피자,씬크리스피,치즈,피자헛','15007120_피자,야채(패스트푸드)','15007130_피자,치즈(패스트푸드)','15007140_피자,치즈피자','15007141_피자,치즈,냉동','15007150_피자,치즈,쇠고기,야채(패스트푸드)','15007151_피자,고기,채소,냉동','15007160_피자,콤비네이션(패스트푸드)','15007170_피자,크러스트,슈프림,피자헛','15007180_피자,슈프림피자(pan),피자헛','15007190_피자,크러스트,슈퍼슈프림,피자헛','15007200_피자,슈퍼슈프림피자(pan),피자헛','15007210_피자,크러스트,치즈,피자헛','15007220_피자,팬피자,치즈,피자헛','15007230_피자,페퍼로니(패스트푸드)','15007231_피자,페퍼로니,냉동','15007240_피자,치즈크러스트(thin),도미노피자','15007250_피자,치즈피자(pan),라운드테이블피자','15007260_피자,치즈피자(thin),라운드테이블피자','15007061_피자,슈퍼슈프림','15007062_피자,치킨슈프림','15007270_피자,치킨슈프림피자(pan),피자헛','15007280_피자,치킨슈프림피자(thin),피자헛','15007290_피자,씬크리스피,페퍼로니,피자헛','15007300_피자,페퍼로니피자(pan),피자헛','15007310_피자,크러스트,페퍼로니,피자헛','15007320_피자,페퍼로니피자(pan),라운드테이블피자','15007330_피자,페퍼로니피자(thin),라운드테이블피자','15007340_피자,페퍼로니피자','16001010_강정,들깨강정','16001020_강정,땅콩강정','16001030_강정,보리강정','16001040_강정,쌀강정','16001050_강정,엿강정','16001060_강정,콩강정','16001070_강정,참깨강정','16001080_튀밥','16002000_산자','16002010_산자,찹쌀산자','16003000_유과','16003010_유과,찹쌀유과','16003020_유과,콩유과','16004010_다식,검정깨','16004020_다식,송화','16005000_약과','16005010_약과,대추첨가','16006000_모나카','16007010_비스켓','16007020_비스킷,소프트','16007030_비스킷,하드','16007040_비스켓,브라우닝,동양제과','16007050_비스켓,샤브레,해태제과','16007060_비스켓,이츠초코,동양제과','16007070_비스켓,마가렛트,롯데제과','16007080_비스켓,버터쿠키,나비스코','16007090_비스켓,빠다코코낫,롯데제과','16007100_과자,애플쨈,롯데제과','16007110_과자,엄마손파이,롯데제과','16007120_크래커,제크,롯데제과','16007130_비스켓,쵸이스,롯데제과','16007140_쿠키,초코칩쿠키,롯데제과','16007150_과자,프레즐','16007160_비스켓,하비스트,롯데제과','16007170_쿠키','16007180_쿠키,쵸코칩','16007190_쿠키,땅콩버터','16007191_쿠키,버터','16007200_크랙커,크랙커','16007210_크랙커,치즈샌드','16007220_크랙커,땅콩샌드','16007240_쿠키,초코칩쿠키,동양제과','16007250_쿠키,칙촉,롯데제과','16007260_크래커,빼빼로,롯데제과','16007270_크래커,아몬드빼빼로,롯데제과','16007280_크랙커,토픽,롯데제과','16007290_웨하스,감귤','16007300_웨하스,바닐라','16007310_웨하스,크림','16007320_비스켓,웨하스(딸기),동양제과','16007330_비스켓,웨하스(바닐라),동양제과','16008000_센베이,센베이','16008010_센베이,튀긴과자','16008020_센베이,센베이,김','16009010_쌀과자','16009011_쌀과자,튀김쌀과자','16009020_찹쌀과자','16009030_전병,찹쌀','16010000_나초','16010010_나쵸(패스트푸드)','16010020_나쵸,치즈(패스트푸드)','16011010_타코(패스트푸드)','16012000_스낵','16012020_스낵,밀가루','16012030_스낵,새우맛','16012040_스낵,콘칩스','16012050_스낵,고래밥(매콤),동양제과','16012060_스낵,고래밥(볶음양념),동양제과','16012070_스낵,꼬깔콘(고소),롯데제과','16012080_스낵,꽃게랑,빙그레','16012090_스낵,꿀꽈배기,농심','16012100_스낵,마르쏘,빙그레','16012110_스낵,맛동산,해태제과','16012120_스낵,바나나킥,농심','16012130_스낵,스모키베이컨칩,빙그레','16012140_스낵,썬칩(핫윙맛),오리온프리토레이','16012150_스낵,야채타임,빙그레','16012160_스낵,엑서스(고소한맛),오리온프리토레이','16012170_스낵,오징어땅콩,오리온프리토레이','16012180_스낵,자키자키,빙그레','16012190_스낵,치토스(매콤한맛),오리온프리토레이','16012200_스낵,칼슘양파링,농심','16012210_스낵,포카칩(소금맛),오리온프리토레이','16012220_스낵,DHA새우깡,농심','16012240_스낵,감자','16012250_스낵,프링글즈(오리지날)','16012260_스낵,옥수수','16013010_쵸코파이','16013020_파이,초코파이,동양제과','16013030_파이,초코파이,롯데제과','16013040_파이,몽쉘통통,롯데제과','16013050_파이,오예스,해태제과','16013060_파이,초코지오마쉬멜로우,빙그레','16013070_파이,초코지오초코까페,빙그레','16013080_파이,초코지오초코라,빙그레','16013090_카스타드,롯데제과','17001000_수수,수수경단','17002000_쌀,찹쌀,꿀떡','17003000_쌀,멥쌀,논벼,가래떡(흰떡)','17004000_쌀,멥쌀,논벼,개피떡','17004010_쌀,멥쌀,논벼,쑥개피떡','17005000_쌀,멥쌀,논벼,백설기','17006010_쌀,멥쌀,논벼,송편,검정콩속','17006020_쌀,멥쌀,논벼,송편,깨','17006030_쌀,멥쌀,논벼,송편,팥고물속','17007010_쌀,멥쌀,논벼,시루떡','17007020_쌀,찹쌀,찰시루떡','17008000_쌀,멥쌀,논벼,쑥설기','17009000_쌀,찹쌀,약식','17010010_쌀,찹쌀,인절미,콩고물','17010020_쌀,찹쌀,인절미,팥고물','17011000_쌀,멥쌀,논벼,절편','17012000_쌀,멥쌀,논벼,증편','17013000_쌀,찹쌀,찹쌀떡(찹쌀모찌)','17013010_쌀,찹쌀,경단','17014000_쌀,쌀가공식품,멥쌀,논벼,떡바,사과맛','17014010_쌀,쌀가공식품,멥쌀,논벼,떡바,치즈맛','17014020_쌀,쌀가공식품,멥쌀,논벼,떡바,고구마맛','17014030_쌀,쌀가공식품,멥쌀,논벼,떡바,초코맛','17014040_쌀,쌀가공식품,멥쌀,논벼,떡바,팥앙금맛','18001000_유아용과자','18001010_유아용과자,베이비비스켓,거버','18001020_유아용과자,베이비쿠키,거버','18001030_유아용과자,보리,분말,거버','18001040_유아용과자,애니멀크래커,거버','18001050_유아용과자,애로우루트쿠키,거버','18002000_이유식','18003010_이유식,계란죽,가정조리','18003020_이유식,과일죽,가정조리','18003030_이유식,과일푸딩,가정조리','18003040_이유식,당근죽,가정조리','18003060_이유식,전통죽,가정조리','18004010_이유식,맘마밀쇠고기와야채,매일유업','18004020_이유식,맘마밀쌀과우유,매일유업','18004030_이유식,맘마밀쌀로만든씨리얼','18004040_이유식,맘마밀요구르트와곡류,매일유업','18004050_이유식,맘마밀치즈와쇠고기,매일유업','18004060_이유식,맘마밀혼합과일,매일유업','18004070_이유식,맘마밀혼합야채,매일유업','18004080_이유식,유기농맘마밀1,매일유업','18004090_이유식,유기농맘마밀2,매일유업','18004100_이유식,유기농맘마밀3,매일유업','18004110_이유식,유기농맘마밀4,매일유업','18004120_이유식,베이비사이언스맘마밀1,매일유업','18004130_이유식,베이비사이언스맘마밀2,매일유업','18004140_이유식,베이비사이언스맘마밀3,매일유업','18005000_이유식,보리죽,우유첨가','18006010_이유식,쌀,분말','18006020_이유식,쌀,분말,거버','18006030_이유식,쌀,바나나,분말','18006040_이유식,쌀,바나나,분말,거버','18006050_이유식,쌀,바나나,분말,비치넛','18006060_이유식,쌀,바나나,사과즙','18007010_이유식,쌀죽,사과,바나나,2차식,거버','18007020_이유식,쌀죽,사과소스,바나나','18007030_이유식,쌀죽,사과소스,바나나,으깬형','18007040_이유식,쌀죽,사과즙,배즙분말,하인즈','18007050_이유식,쌀죽,우유,바나나','18007060_이유식,쌀죽,우유첨가','18007070_이유식,쌀죽,종합과일,고형분포함','18007080_이유식,쌀죽,종합과일,고형분포함,거버','18008010_이유식,씨리얼,노른자,고형분포함','18008020_이유식,씨리얼,노른자,베이컨,고형분포함','18008030_이유식,씨리얼,노른자,베이컨,으깬형태','18008040_이유식,씨리얼,노른자,으깬형태','18008050_이유식,씨리얼,바나나,사과,분말,하인즈','18008060_이유식,씨리얼,사과,바나나,으깬형태,거버','18008070_이유식,씨리얼,사과,바나나,고형분포함,거버','18008080_이유식,씨리얼,사과소스,바나나,고형분포함','18008090_이유식,씨리얼,사과소스,바나나,으깬형태','18009010_이유식,영양죽1,이유중기,가정조리','18009020_이유식,영양죽2,이유후기,가정조리','18010010_이유식,오트밀,분말,거버','18010020_이유식,오트밀,바나나,분말','18010030_이유식,오트밀,바나나,분말,거버','18010040_이유식,오트밀,사과,바나나,분말,하인즈','18010050_이유식,오트밀,사과,바나나','18010060_이유식,오트밀,사과,바나나,고형분포함','18010070_이유식,오트밀,사과,바나나,으깬형태','18010080_이유식,오트밀,사과,바나나,으깬형태,거버','18010090_이유식,오트밀,사과,바나나,고형분포함,거버','18010100_이유식,오트밀죽,바나나,우유','18010110_이유식,오트밀죽,우유첨가','18011010_이유식,종합씨리얼,분말,거버','18011020_이유식,종합씨리얼,바나나,분말','18011030_이유식,종합씨리얼,바나나,분말,거버','18011040_이유식,종합씨리얼,우유첨가,거버','18011050_이유식,종합씨리얼죽,우유첨가','18012010_이유식,마터락,매일유업','18013010_이유식,스텝리전트1,남양유업','18013020_이유식,스텝리전트2,남양유업','18013030_이유식,스텝리전트3,남양유업','18013040_이유식,스텝엄선1,남양유업','18013050_이유식,스텝엄선2,남양유업','18013060_이유식,스텝엄선3,남양유업','18013070_이유식,남양스텝名品유기농2,남양유업','18013080_이유식,남양스텝名品유기농3,남양유업','18013090_이유식,남양스텝名品유기농4,남양유업','18013100_이유식,스텝그래뉼生2,남양유업','18013110_이유식,스텝그래뉼生3,남양유업','18013120_이유식,스텝그래뉼生4,남양유업','18014010_이유식,쎄레락1,한국네슬레','18014020_이유식,쎄레락2,한국네슬레','18014030_이유식,쎄레락3,한국네슬레','18016010_이유식,오트밀,분말','18018010_이유식,후디스아기밀(떠먹이는것),일동후디스','18018020_이유식,후디스아기밀1,일동후디스','18018030_이유식,후디스아기밀2,일동후디스','18018040_이유식,후디스아기밀3,일동후디스','18018050_이유식,New아기밀순유기농6개월부터,일동후디스','18018060_이유식,New아기밀순유기농9개월부터,일동후디스','18018070_이유식,New아기밀순유기농12개월부터,일동후디스','18018080_이유식,New유기농아기밀6개월부터,일동후디스','18018090_이유식,New유기농아기밀9개월부터,일동후디스','18018100_이유식,New유기농아기밀12개월부터,일동후디스','18019010_이유식,유기농산양이유식,누셍앙쥬맘1단계,파스퇴르','18019020_이유식,유기농산양이유식,누셍앙쥬맘2단계,파스퇴르','18019030_이유식,누셍유기농장1단계,파스퇴르','18019040_이유식,누셍유기농장2단계,파스퇴르','18019050_이유식,누셍유기농장3단계,파스퇴르','18019060_이유식,그린밀그래뉼1단계,파스퇴르','18019070_이유식,그린밀그래뉼2단계,파스퇴르','18019080_이유식,그린밀그래뉼3단계,파스퇴르','18019090_이유식,그린밀그래뉼4단계,파스퇴르','21001000_감자,생것','21001010_감자,찐것','21001020_감자,삶은것','21001030_감자,구운것,껍질벗긴것','21002010_감자,구운감자,웬디스','21002020_감자,베이크드포테이토,치즈소스','21002030_감자,구운것,치즈토핑한것(패스트푸드)','21002040_감자,구운감자,치즈,웬디스','21002050_감자,베이크드포테이토,치즈,베이컨소스','21002060_감자,구운감자,베이컨&치즈,웬디스','21003010_감자,으깬것,우유첨가','21003020_감자,으깬것,전유와버터첨가','21004010_감자,매쉬드포테이토(패스트푸드)','21004020_감자,매쉬드포테이토,KFC','21005010_감자,해쉬브라운(패스트푸드)','21005020_감자,해쉬브라운포테이토,맥도날드','21005030_감자,해쉬브라운','21006000_감자,감자샐러드','21006010_감자,감자샐러드(패스트푸드)','21006020_감자,감자샐러드,KFC','21007000_감자,새알감자','21008010_감자,아침용감자,웬디스','21009000_감자,대지','21009010_감자,수미','21009020_감자,자심','21010000_유색감자,생것','21010010_유색감자,찐것','22001000_감자,포테이토칩,튀긴것','22001010_감자,포테이토칩(패스트푸드)','22001020_감자,포테이토칩,구운것','22002000_감자튀김,후렌치후라이(패스트푸드)','22002010_감자튀김,후렌치후라이,냉동','22002020_감자튀김,후렌치후라이,냉동,오븐에데운것','22002030_감자튀김,후렌치후라이','22002040_감자튀김,후렌치후라이(패스트푸드)','22002050_감자튀김,후렌치후라이,식물성기름에튀긴것(패스트푸드)','22002060_감자튀김,후렌치후라이,롯데리아','22002070_감자,프렌치포테이토,롯데리아','22002080_감자,후렌치후라이,맥도날드','22002090_감자튀김,후렌치후라이,버거킹','22002100_감자,후렌치후라이,소금제외,버거킹','22002110_감자,후렌치후라이,소금첨가,버거킹','22002120_감자,후렌치후라이,웬디스','22002130_감자튀김,후렌치후라이,KFC','22002140_감자크로켓,냉동','23001000_고구마,생것','23001010_고구마,말린것','23001020_고구마,구운것','23001030_고구마,찐것','23002000_고구마,사탕조림','23003000_고구마,신율미','23004000_돼지감자','23006000_마,산마','23006010_마,가루','23006020_마,단마','23006030_마,장마,생것','23006040_마,장마,삶은것','23007000_칡뿌리','23008000_토란,생것','23008010_토란,삶은것','23009000_곤약','23009010_곤약,생것,국수형','23009030_곤약,생것,판형','23009040_곤약,생것,분말','23010000_양장피','24001000_전분,감자녹말','24002000_전분,고구마녹말','24003000_전분,밀녹말','24004000_전분,쌀녹말','24005000_전분,옥수수녹말','24006000_전분,칡뿌리녹말','24007000_전분,당면,마른것','24007010_전분,당면,삶은것','24008000_전분,종가시나무도토리','24008010_전분,졸참나무도토리','24009000_전분,감자부침가루','25001010_이유식,고구마,고형분포함','25001020_이유식,고구마,고형분포함,3차식,거버','25001030_이유식,고구마,분말,하인즈','25001040_이유식,고구마,으깬형태,1차식,거버','25001050_이유식,고구마,으깬형태,2차식,거버','31001000_과당','31002000_꿀,꿀','31002010_꿀,들깨꿀','31002020_꿀,밤꿀','31002030_꿀,싸리꿀','31002040_꿀,아카시아꿀','31002050_꿀,토종꿀','31002060_꿀,잡화꿀','31003000_로얄젤리','31004010_당밀,가공당','31004020_당밀,정제당','31005000_설탕,분말','31005010_설탕,각설탕','31005020_설탕,백설탕','31006000_설탕,빙설탕','31007000_설탕,황설탕','31008000_설탕,흑설탕','31009000_시럽,메이플','31010010_시럽,딸기시럽','31010020_시럽,쵸코시럽','31010030_시럽,쵸콜렛','31011000_이성화액당','31012000_포도당','31013000_조청,배','31013010_조청,산수유','31013020_조청,오가피','31014000_사탕무우,생것','31014010_사탕무우,농축한것','32001010_껌,츄잉껌','32001020_껌,풍선껌','32001030_껌,월드풍선껌,롯데','32001040_껌,무설탕','32001050_껌,슈가리스자일리톨,롯데','32001060_껌,스카시망고스틴,롯데','32001070_껌,쥬시후레시껌,롯데','32001080_껌,후라보노껌,롯데','32002010_마쉬맬로우','32002020_사탕,마쉬멜로우','32003000_사탕,사탕','32003010_사탕,누가','32003020_사탕,누가사탕,땅콩','32003030_사탕,버터스카치','32003040_사탕,알사탕','32003050_사탕,누가사탕,살구','32003060_사탕,드롭스','32003070_사탕,롯데사랑방,롯데','32003080_사탕,목캔디,롯데','32003090_사탕,박하사탕','32003100_사탕,생캔디,롯데','32003110_사탕,스카치세가지맛,롯데','32003120_사탕,요구르트300,롯데','32004000_양갱,팥','32005010_엿,검은엿','32005020_엿,깨엿','32005030_엿,흰엿','32005040_엿,고구마엿','32006010_엿,물엿','32007010_젤라틴,분말','32007020_젤라틴,분말로만든것','32008000_젤리','32008010_젤리,구미','32008020_젤리,참새방앗간(복숭아),롯데제과','32009010_카라멜','32009020_카라멜(밀크),동양제과','32009030_카라멜(땅콩),동양제과','33001010_초코바,블랙바,롯데제과','33001020_초코바,아트라스,롯데제과','33001030_초코바,자유시간,해태제과','33001040_초코바,핫브레이크,동양제과','33002000_초콜렛','33002010_초콜렛,가공쵸콜렛,건포도스프레드','33002020_초콜렛,가나,롯데제과','33002030_쵸콜렛,땅콩쵸코볼','33002040_쵸콜렛,밀크쵸콜렛','33002050_쵸콜렛,라이스시리얼','33002060_쵸콜렛,아몬드','33002070_쵸코렛,빼빼로(롯데)','33002080_쵸콜렛,새알쵸콜렛','33002090_초콜렛,새알,동양제과','33002100_쵸콜렛,스위트쵸콜렛','33002110_쵸코렛,엘리스,롯데','33002120_쵸코렛,제로,롯데','33002130_쵸코렛,쵸코볼','33002140_초콜렛,카카오파워초콜렛,롯데제과','33002150_초콜렛,크런키,롯데제과','33002160_쵸콜렛,화이트쵸콜렛','33002170_쵸콜렛,다크','33002180_쵸콜렛,땅콩','33002190_쵸콜렛,감잎','33002200_쵸콜렛,초코바','41001000_강남콩,생것','41001010_강남콩,말린것','41001020_강남콩,삶은것','41002010_녹두,말린것,국내산','41002020_녹두,말린것,중국산','41002030_녹두,삶은것','41003000_녹두,빈대떡가루','41003010_녹두,빈대떡반죽','41003020_녹두전,빈대떡,냉동','41004000_녹두,녹두묵','41005000_녹두,녹두국수','41006000_동부,생것','41006010_동부,말린것','41006020_동부,삶은것','41006030_동부,탈피','41007000_라이마빈스,생것','41007010_라이마빈스,말린것','41007020_라이마빈스,삶은것','41008000_완두콩,생것','41008010_완두콩,말린것','41008020_완두콩,삶은것','41009000_잠두,생것','41009010_잠두,말린것','41009020_잠두,삶은것','41010000_청대콩','41011000_청콩단','41012000_팥,검정팥,마른것','41012010_팥,검정팥,삶은것','41013000_팥,계피팥(회색팥)','41014000_팥,붉은팥,말린것,국내산','41014010_팥,붉은팥,말린것,중국산','41014020_팥,붉은팥,삶은것','41015010_팥죽,인스턴트','41015020_팥죽,레토르트','41015030_팥,소,페이스트','41016000_작두콩(도두)','41017000_쥐눈이콩(검정소립콩)','42001010_대두,검정콩,흑태','42001020_대두,검정콩,생것,가루','42002000_대두,검정콩,녹색자엽콩(서리태)','42003000_대두,노란콩','42003010_대두,노란콩,말린것,국내산','42003020_대두,노란콩,말린것,미국산','42003030_대두,노란콩,말린것,중국산','42003040_대두,노란콩,삶은것','42004000_대두,노란콩,콩물','42005010_대두,밤콩,말린것','42006010_콩자반','42007010_콩가루,볶은것','42007020_콩가루,탈지콩가루','43001000_두부,두부','43002000_두부,동두부','43002010_두부,동두부,냉동건조','43003000_두부,비지','43004000_두부,순두부','43004010_두부,순두부,풀무원','43005000_두부,연두부','43005010_두부,연두부,풀무원','43006000_두부,튀긴두부(유부)','43007010_마파두부,레토르트','43008000_두유','43009000_두유음료(베지밀)','43009010_두유,애플두유','43009020_두유,베지밀애덜트,정식품','43009030_두유,베지밀인펀트,정식품','43010000_콩,베이크드빈,KFC','43011000_포크앤빈스','51001010_개암,말린것','51001020_개암,볶은것','51002000_도토리,생것','51002010_도토리,가루','51002011_도토리,가루,졸참나무','51002012_도토리,가루,종가시나무','51004000_도토리묵','51005000_땅콩,생것','51005010_땅콩,말린것','51005020_땅콩,말린것,대립종','51005030_땅콩,말린것,중립종','51005040_땅콩,말린것,소립종','51005050_땅콩,볶은것','51005060_땅콩,삶은것','51005070_땅콩,가루','51006010_땅콩,조미땅콩','51006020_땅콩,커피땅콩','51006030_땅콩,커피땅콩,우성식품','51006040_땅콩,꿀땅콩,우성식품','51006050_땅콩,너트프라자,우성식품','51006060_땅콩,맛땅콩,우성식품','51006070_땅콩,믹스너트,우성식품','51006080_땅콩,알땅콩,우성식품','51007000_때죽','51008010_마카디미아,말린것','51008020_마카디미아,조미한것','51009000_마름','52011010_머루씨','51010000_밤,생것','51010001_밤,생것,단택','51010002_밤,생것,덕명','51010003_밤,생것,이평','51010004_밤,생것,옥광','51010010_밤,삶은것','51010011_밤,삶은것,단택','51010012_밤,삶은것,덕명','51010013_밤,삶은것,이평','51010014_밤,삶은것,옥광','51010020_밤,구운것','51010030_밤,가루','51010040_밤,말린것(황율)','51011000_밤,넥타','51012000_밤,통조림','51013000_보리밥,열매','51014010_브라질너트,말린것','51014020_브라질너트,볶은것','51015010_아몬드,말린것','51015020_아몬드,조미한것','51015030_아몬드,칼몬드,우성식품','51015040_아몬드,하니아몬드,우성식품','51015050_아몬드,후렌치후라이드아몬드,우성식품','51016000_은행,생것','51016010_은행,삶은것','51017000_잣,말린것','51017010_잣,볶은것','51018000_잣,미숫가루','51019000_잣죽','51020010_캐슈넛,조미한것','51020020_캐슈넛우성식품','51021010_코코넛,말린것','51021020_코코넛,말린것,구운것','51021030_코코넛,가루','51022000_코코넛밀크','51023000_코코넛수','51024010_피스타치오,말린것','51024020_파스타치오,우성식품','51024030_피스타치오,조미한것','51025010_피칸,말린것','51025020_피칸,조미한것','51026000_호두,말린것','51026010_호두,볶은것','51026020_땅콩,머거본호두,우성식품','52001010_참깨,검정깨,말린것','52001020_참깨,검정깨,볶은것','52002010_참깨죽','52003000_들깨,말린것','52003010_들깨,가루','52004010_참깨,흰깨,말린것','52004020_참깨,흰깨,볶은것','52005000_마가목열매','52006000_삼씨','52007010_수박씨,말린것','52007020_수박씨,조미한것','52008010_연씨,미숙,생것','52008020_연씨,조미한것','52009000_해바라기씨,말린것','52009010_해바라기씨,우성식품','52009020_해바라기씨,볶은것','52009030_해바라기씨,조미한것','52010010_호박씨,말린것','52010020_호박씨,조미한것','61161000_가시오가피순,생것','61161010_가시오가피순,데친것','61001010_가죽나물(산채)','61002000_가지,생것','61002010_가지,말린것','61002020_가지,삶은것','61002030_가지,소금절임','61003000_갓,생것','61004010_강남조나물(산채),말린것','61005010_갯나물','61006010_갬추,말린것','61007010_겨자무','61008010_고구마잎','61008020_고구마줄기,생것','61008030_고구마줄기,말린것','61008040_고구마줄기,삶은것','61009010_고들빼기','61010000_고비,생것(야생)','61010001_고비,생것(재배)','61010010_고비,말린것,삶은것','61010020_고비,말린것,생것','61010030_고비,생것,삶은것','61011000_고사리,생것','61011010_고사리,말린것','61011020_고사리,삶은것','61012000_고수','61013010_고추,풋고추,개량종','61013020_고추,풋고추,꽈리','61013030_고추,풋고추,재래종','61013031_고추,풋고추,녹광,홍색','61013032_고추,풋고추,녹광,녹색','61013033_고추,풋고추,시레나,연두색','61013034_고추,풋고추,시레나,녹색','61013040_고추,고추장아찌','61013050_고추,꽈리고추','61013060_고추,붉은고추,생것','61013061_고추,붉은고추,생것,수비초','61013070_고추,붉은고추,말린것','61014011_고추냉이,뿌리','61014010_고추냉이,잎','61014020_고추냉이,줄기','61015000_고춧잎,생것','61015010_고춧잎,삶은것','61162000_곤달비,생것','61162010_곤달비,삶은것','61016000_곤드레(산채),말린것,재배','61016010_곤드레(산채),말린것,야생','61017030_곰취(산채),삶은것','61017010_곰취(산채),말린것,야생','61017020_곰취(산채),말린것,재배','61018000_공심채,생것','61018010_공심채,삶은것','61163000_구지뽕잎','61019000_국화꽃,생것','61019010_국화꽃,말린것','61019020_국화꽃,삶은것','61020000_그린비타민','61021000_근대,생것','61021010_근대,삶은것','61022010_깨나물,깻잎나물','61023010_고깔나물(산채),말린것','61024000_꽃양배추,생것','61024010_꽃양배추,삶은것','61025000_나라쓰게','61026000_락교','61027000_날개콩','61028000_냉이','61164000_넘취(산채),생것','61164010_넘취(산채),삶은것','61029000_녹색꽃양배추,생것','61029010_녹색꽃양배추,삶은것','61030000_녹색완두콩,생것','61030010_녹색완두콩,삶은것','61030020_녹색완두콩,통조림','61165000_누룩치(산채),잎,생것','61165010_누룩치(산채),잎,삶은것','61165020_누룩치(산채),줄기,생것','61165030_누룩치(산채),줄기,삶은것','61166000_누리장나무잎(산채)','61031000_는쟁이냉이(산채)','61032000_다채','61033000_달래','61034010_당귀,뿌리','61034020_당귀,잎,노지재배','61034030_당귀,잎,양액재배','61035000_당근,생것','61035010_당근,삶은것','61036010_당근쥬스,캔','61037010_더덕,생것','61037020_더덕,분말','61038000_도라지,생것','61038010_도라지,말린것','61038020_도라지,데친것','61038030_도라지,가루','61039000_돌나물,생것','61040000_돌미나리,생것','61040010_돌미나리,데친것','61041010_돌산갓','61042010_동아,삶은것','61042020_동아,생것','61043010_두릅,생것','61043020_두릅,데친것','61044010_두메부추','61045010_둥굴레,말린것','61045020_둥굴레,생것','61046000_들깻잎,생것','61046010_들깻잎,데친것','61046020_들깻잎,통조림','61047000_들미나리,생것','61047010_들미나리,데친것','61048000_땅두릅,생것','61048010_땅두릅,데친것','61048020_땅두릅,잎,생것','61048030_땅두릅,잎,데친것','61048040_땅두릅,줄기,생것','61048050_땅두릅,줄기,데친것','61049000_떡취(산채)','61050000_로카','61051000_리크,생것','61051010_리크,삶은것','61052010_마늘,구근,생것(국내산)','61052011_마늘,구근,생것(중국산)','61052012_마늘,구근,냉동','61052020_마늘,구근,말린것(동결건조)','61052030_마늘,구근,말린것(열풍건조)','61052040_마늘,마늘장아찌','61052050_마늘,마늘쫑','61052060_마늘,풋마늘','61052070_마늘쑥잼','61052080_마늘쑥음료','61052090_마늘쫑장아찌','61052100_마늘호박음료','61052110_마늘호박잼','61052120_꿀절임마늘','61053000_마타리(산채)','61054000_머위,생것','61054010_머위,말린것','61054030_머위,데친것','61054020_머위,삶은것','61055000_메밀순','61056000_신선초','61057000_모시대참물(모시잎)','61058000_모시딱지(울릉도산채)','61059010_무,게걸무,뿌리','61059020_무,게걸무,잎','61059030_무,단무지','61059040_무,알타리','61059050_무,알타리무,뿌리','61059060_무,알타리무,잎','61059070_무,왜무,뿌리','61059080_무,무장아찌','61059090_무,조선무,뿌리','61059100_무,무꼬투리','61059110_무,무말랭이','61059120_무,무순','61059130_무,무짠지','61059140_무,왜무,잎(왜무청)','61059150_무,무우거지','61059160_무,조선무,잎(조선무청)','61059170_무청시래기,삶은것','61060000_물강활(산채),말린것','61167000_물냉이(워터크레스)','61061000_물쑥,생것','61061010_물쑥,뿌리,삶은것','61062000_미나리,생것','61062010_미나리,삶은것','61062020_미나리,데친것','61062030_논미나리,줄기','61062040_논미나리,잎','61062050_논미나리,뿌리','61062060_밭미나리,줄기','61062070_밭미나리,잎','61062080_밭미나리,뿌리','61063000_미역취(산채)','61064000_민들레,생것','61064010_민들레,데친것','61064020_띠뿌리민들레(백모근),전체,생것','61064030_띠뿌리민들레(백모근),잎,말린것','61064040_띠뿌리민들레(백모근),뿌리,말린것','61065000_바셀라,생것','61065010_바셀라,삶은것','61066010_바실,개량종','61066020_바실,재래종','61067030_박,과육','61067040_박,속(씨앗포함)','61067010_박오가리,말린것','61067020_박오가리,삶은것','61168000_박쥐나무잎','61068010_밥취나물(산채),말린것','61069000_방가지똥(산채)','61169000_방울다다기양배추,생것','61169010_방울다다기양배추,삶은것','61070000_배추,생것','61070010_배추,봄동','61070020_배추,얼갈이','61070060_배추,삶은것','61070030_배추,호배추,생것','61070040_배추,소금절임','61070050_배추,호배추,소금절임','61071000_버드장이(산채)','61072010_보리순,쌀보리순','61072020_보리순,올보리순','61072030_보리순,가루','61073000_부지갱이(울릉도산채),말린것','61074000_부추,생것','61074010_부추,리크','61074020_부추,재래종,생것','61074021_부추,재래종,삶은것','61074030_부추,호부추,생것','61074040_부추,호부추,삶은것','61076000_브로콜리,생것','61076020_브로콜리,데친것','61076010_브로콜리,삶은것','61077000_비름,생것','61077010_비름,데친것','61078030_비트,잎,생것','61078040_비트,잎,삶은것','61078000_비트,뿌리,생것','61078010_비트,뿌리,삶은것','61078020_비트,피클,통조림','61170000_사탕수수','61080000_산마늘(산채)','61081000_산부추(산채)','61082000_삼나물(울릉도산채),말린것','61083010_상추,개량종','61083020_상추,양상추','61083040_상추,적양상추','61083030_상추,재래종','61083050_상추,아담','61083060_상추,유레이크','61083070_상추,천상','61083080_상추,적하계','61083090_상추,뚝섬적출면','61083100_상추,풍성','61083110_상추,로메인','61083120_상추,로얄채','61083130_상추,롤로로사','61084000_생강,구근,국내산','61084010_생강,구근,중국산','61084020_생강,편강','61084030_생강넥타','61084040_생강초절임','61085000_섬초롱,생것','61085010_섬초롱,삶은것','61171000_솔장다리','61172000_세발나물','61086000_셀러리','61173000_소리장이,뿌리','61173010_소리장이,잎','61087000_쇠귀나물,뿌리,생것','61087010_쇠귀나물,뿌리,삶은것','61088000_수리취(산채)','61089000_숙주나물,생것','61089010_숙주나물,삶은것','61090010_순무,뿌리,생것','61090020_순무,뿌리,삶은것','61090030_순무,뿌리,소금절임','61090040_순무,잎,생것','61090050_순무,잎,삶은것','61090060_순무,잎,소금절임','61091000_시금치,생것,노지','61091010_시금치,생것,하우스','61091020_시금치,삶은것','61091030_시금치,포항초','61092000_싹채소,고추순','61093000_싹채소,들깨순','61094000_싹채소,무순','61174000_싹채소,메밀순','61095000_싹채소,알파파순','61175000_싹채소,해바라기순','61176000_싹채소,호박순','61177000_쌈추','61096000_쑥,생것','61096010_쑥,삶은것','61097000_쑥갓,생것','61097010_쑥갓,삶은것','61098000_쑥부쟁이','61099000_씀바귀,생것','61099010_씀바귀,데친것','61099020_씀바귀,뿌리','61100010_산채발효음료','61101000_아기양배추,생것','61101010_아기양배추,삶은것','61102000_아스파라거스,생것','61102010_아스파라거스,통조림','61102020_아스파라거스,삶은것','61103000_아욱,생것','61103010_아욱,데친것','61104000_아이비카','61105000_피마자잎(아주까리잎)','61106000_야콘,잎','61106010_야콘,뿌리','61107000_양배추,생것','61107010_양배추,삶은것','61107020_양배추,붉은양배추','61108000_양파,생것,국내산','61108010_양파,동결건조한것','61108020_양파,생것,중국산','61108030_양파,삶은것','61108040_양파링,냉동','61108050_양파링,냉동,오븐에데운것','61108060_양파,어니언링,버거킹','61108070_양파,어니언링(패스트푸드)','61109000_양하','61110000_어수리','61111010_얼레지,뿌리,말린것','61178000_엄나무잎(개두룹),생것','61178010_엄나무잎(개두룹),데친것','61112010_엉겅퀴,말린것,생건','61112020_엉겅퀴,말린것,숙건','61179000_여주(고야)','61113000_연근,생것','61113010_연근,삶은것','61114000_열대비름','61115000_열무','61116000_염교(락교),생것','61116010_염교(락교),장아찌','61117000_영아자(산채),생것','61117010_영아자(산채),데친것','61117020_영아자(산채),말린것','61118010_오이,생것,개량종','61118011_오이,생것,개량종,겨울살이청장','61118020_오이,늙은오이','61118030_오이,생것,재래종','61118040_오이,오이지','61118050_오이,오이피클','61119000_오크라,생것','61119010_오크라,삶은것','61120000_옥수수순,생것','61180000_왕호장잎','61121010_올리브피클','61122010_왜우산풀,말린것,생건','61122020_왜우산풀,말린것,숙건','61123000_우엉,생것','61123010_우엉,삶은것','61124010_울외장아찌(나라쓰게)','61125000_원추리','61126010_유채,꽃대,생것','61126020_유채,꽃대,삶은것','61126030_유채,잎','61126040_유채,어린것(동채)','61126050_유채,서양종,줄기와잎,생것','61126060_유채,서양종,줄기와잎,삶은것','61127000_자운영','61128000_잔대,생것','61128001_잔대,뿌리','61128010_잔대,싹','61181000_적겨자','61182000_전호','61129000_제비쑥(산채)','61130000_조뱅이(산채)','61183000_좀홍당무,뿌리','61131000_죽순,생것','61131010_죽순,말린것','61131020_죽순,삶은것','61131030_죽순,통조림','61132010_줄나물(울릉도산채),말린것','61133000_진달래','61134000_질경이,생것','61134010_질경이,데친것','61135000_참나물(산채),생것,야생','61135030_참나물(산채),생것,재배','61135010_참나물(산채),말린것,야생','61135020_참나물(산채),말린것,재배','61136010_참반디,말린것','61137010_참죽,말린것','61138010_창출나물(산채)','61139010_청경채(중국채소)','61140000_곰취(산채),생것','61141000_참취,생것','61141010_참취,삶은것','61142000_취나물(산채),생것','61142010_취나물(산채),말린것','61142020_취나물(산채),삶은것','61143000_치커리,잎,푸른색,생것','61143020_치커리,잎,적색,생것','61143010_치커리,뿌리','61184000_칠면초','61144000_케일','61144010_케일,꽃케일','61144020_케일,적꽃케일','61145000_콜라비,생것','61145010_콜라비,삶은것','61146000_콩나물,생것','61146010_콩나물,삶은것','61146020_콩나물,말린것','61046030_콩나물,가루','61046040_녹색콩나물','61147000_콩잎','61185000_털머위,잎','61185010_털머위,줄기','61148000_토란대,생것,생것','61148010_토란대,말린것,생것','61148020_토란대,말린것,삶은것','61148030_토란대,생것,삶은것','61149000_토마토,생것','61149010_토마토,삶은것','61149020_토마토,통조림','61149030_토마토,페이스트,통조림','61149040_토마토,퓨레,통조림','61149050_토마토쥬스(생)','61149060_토마토,토마토쥬스','61150000_토마토,체리토마토','61150010_토마토,흑토마토','61186000_토스카노(잎브로콜리)','61151010_파,대파','61151020_파,중파(쪽파)','61151030_파,소파(실파)','61187000_파드득나물(삼엽채)','61152000_파슬리','61188000_파프리카,국산,녹색과','61188010_파프리카,국산,적색과','61188020_파프리카,국산,주황색과','61188030_파프리카,국산,황색과','61188040_파프리카,외산,적색과','61188050_파프리카,외산,주황색과','61188060_파프리카,외산,황색과','61153010_피망,붉은것','61153020_피망,푸른것','61154000_향채','61155010_호박,개량종,생것','61155140_호박,국수호박,생것','61155150_호박,국수호박,삶은것','61155020_호박,단호박,생것','61155160_호박,단호박,삶은것','61155030_호박,애호박,생것','61155170_호박,애호박,삶은것','61155040_호박,서양호박,생것','61155050_호박,서양호박,삶은것','61155060_호박,늙은호박,생것','61155070_호박,늙은호박,말린것','61155080_호박,늙은호박,삶은것','61155090_호박,애호박,호박고지','61155100_호박,호박나물(산채)','61155110_호박,늙은호박,호박고지','61155120_호박죽,레토르트','61155130_호박죽,인스턴트','61156000_호박,호박잎,생것','61156010_호박,호박잎,삶은것','61156020_호박,호박잎,찐것','61157000_홍무','61158010_홍치나물(산채),말린것','61189000_홍화잎','61159000_홑잎나물,생것','61159010_홑잎나물,삶은것','61160000_휴잎','62001000_김치,갓김치','62002000_김치,고들빼기김치','62003000_김치,깍두기','62004000_김치,나박김치','62005000_김치,동치미','62006000_김치,무청김치','62007000_김치,배추김치','62008000_김치,백김치','62009000_김치,열무김치','62009010_김치,열무물김치','62010000_김치,오이소박이','62011000_김치,유채김치','62011010_김치,유채물김치','62012000_김치,총각김치','62013000_김치,파김치','63001010_샐러드,그릴드치킨샐러드디럭스,맥도날드','63002000_양배추샐러드(코올슬로우)','63002010_양배추,코올슬로우(패스트푸드)','63002020_양배추,코올슬로우(웬디스)','63002030_샐러드,코올슬로우,KFC','63003010_야채샐러드,드레싱없는것(패스트푸드)','64001000_이유식,당근','64001020_이유식,당근,고형분포함','64001030_이유식,당근,고형분포함,3차식,거버','64001040_이유식,당근,분말,하인즈','64001050_이유식,당근,으깬형태,1차식,거버','64001060_이유식,당근,으깬형태,2차식,거버','64002010_이유식,시금치,크림,으깬형태','64002020_이유식,시금치,크림,으깬형태,2차식,거버','64003010_이유식,종합야채,고형분포함,3차식,거버','64003020_이유식,종합야채,분말,하인즈','64003030_이유식,종합야채,으깬형태','64003040_이유식,종합야채,으깬형태,2차식,거버','71017000_검은비늘버섯,생것','71001010_검은비늘버섯,말린것','71002000_느타리버섯,생것','71002010_느타리버섯,말린것','71002020_느타리버섯,삶은것','71003000_만가닥버섯,생것','71004010_목이버섯,말린것','71004020_목이버섯,삶은것','71005000_밤버섯,생것','71006000_버들송이버섯,생것','71006010_버들송이버섯,말린것,갓','71006020_버들송이버섯,말린것,줄기','71007010_뽕나무버섯,인공재배,말린것,갓','71007020_뽕나무버섯,인공재배,말린것,줄기','71007030_뽕나무버섯,자연산,말린것,갓','71007040_뽕나무버섯,자연산,말린것,줄기','71008010_석이버섯,말린것','71018000_상황버섯,말린것','71009000_송이버섯,생것','71009010_송이버섯,통조림','71010000_싸리버섯,생것','71010010_싸리버섯,말린것','71011000_애느타리버섯,생것','71019000_아위버섯,생것','71012000_양송이버섯,생것','71012010_양송이버섯,통조림','71012020_양송이버섯,가루','71020000_영지버섯,말린것','71021000_율무느타리버섯,생것','71013000_잎새버섯,생것','71014010_잣버섯,말린것','71022000_참타리버섯,생것','71022010_참타리버섯,삶은것','71023000_새송이버섯(큰느타리버섯),생것','71023010_큰느타리버섯,데친것','71023020_큰느타리버섯,가루','71012030_큰양송이버섯,생것','71015000_팽이버섯,생것','71015010_팽이버섯,데친것','71015020_팽이버섯,야생','71016000_표고버섯,생것','71016010_표고버섯,말린것','71016020_표고버섯,리기다소나무,말린것','71016030_표고버섯,물갬나무,말린것','71016040_표고버섯,신갈나무,말린것','71016050_표고버섯,참나무,생것,생것','71016060_표고버섯,참나무,생것,삶은것','71016070_표고버섯,참나무,말린것,생건','71016080_표고버섯,참나무,말린것,삶은것','71016090_표고버섯,참나무,가루','71016100_표고버섯,참나무,가루,동고,갓','71016110_표고버섯,참나무,가루,동고,대','71016120_표고버섯,참나무,향신,동고,갓','71016130_표고버섯,참나무,향신,동고,대','81001010_감,감조청','81001020_감,단감','81001021_감,단감잼','81001030_감,연시,생것','81001031_감,연시,얼린것(아이스감)','81001050_감,감말랭이','81001040_감,곶감','81001060_감,침지','81001070_감,감주스','81002000_구아바,생과','81002010_구아바,과일쥬스,과즙음료(과즙10%)','81002020_구아바,과일쥬스,넥타(과육20%)','81002030_구아바,쥬스','81003010_귤,생과,조생','81003020_금귤,생과','81003030_금귤,과육','81003040_금귤,과피','81003050_귤,생과,보통(임온주)','81003060_귤,과일쥬스,농축과즙','81003070_귤,과일쥬스,무가당쥬스','81003080_귤,과일쥬스,천연과즙','81003090_귤,통조림,무가당','81003100_귤,잼','81057000_한라봉','81004000_다래','81005000_대추,생과','81005010_대추,풋대추,생것','81005020_대추,말린것','81006010_대추야자,말린것','81052000_두리안','81007010_딸기,생과,재래종','81007020_딸기,생과,개량종','81007030_딸기,넥타','81007040_딸기,잼','81008000_라임,생과','81008010_라임,천연과즙','81008020_라임,캔쥬스','81009000_레몬,생과','81009010_레몬,과즙','81010000_롱간스,생과','81010010_롱간스,냉동품','81010020_롱간스,말린것','81053000_리치','81011000_망고','81012000_매실,생과','81012020_매실,농축액','81012010_매실,우메보시(염건)','81012030_매실음료','81013010_머루,생과,개량종','81013020_머루,생과,과육','81013030_머루,생과,과피','81013040_머루,생과,재래종','81013050_머루,천연과즙','81014000_멜론,머스크','81014010_멜론,화이트','81014020_멜론,양구','81015000_모과','81016000_무화과,생과','81016010_무화과,말린것','81016020_무화과,통조림','81017000_바나나,생과','81017010_바나나,말린것','81018000_배,생과,국내산','81018010_배,생과,국내산,신고','81018020_배,생과,국내산,장심랑','81018030_돌배','81018040_배,생과,유럽산','81018050_배,생과,일본산','81018060_배,생과,중국산','81018070_배,과즙','81018080_배,넥타','81018090_배,통조림,서양배','81018100_배,통조림,일본배','81019000_버찌,생과,국내산','81019010_버찌,생과,미국산','81019020_버찌,생과,일본산','81019030_버찌,통조림','81020090_복숭아,생과,미숙과','81020010_복숭아,생과,황도','81020020_복숭아,생과,백도','81020030_복숭아,생과,천도','81020040_복숭아,넥타','81020050_복숭아,잼','81020060_복숭아,당조림','81020070_복숭아,통조림,백도','81020080_복숭아,통조림,황도','81021000_블루베리,생것','81021020_블루베리,잼','81021010_블루베리,통조림','81022000_비파,생과','81022010_비파,통조림','81023010_사과,생과,국광','81023020_사과,생과,부사','81023030_사과,생과,아오리','81023040_사과,생과,조나골드','81023050_사과,생과,홍옥','81023060_사과,생과,후지','81023070_사과,말린것','81023080_사과,넥타','81023090_사과,과일쥬스,천연과즙(무가당)','81023100_사과,천연과즙','81023110_사과,과일쥬스,천연과즙(가당)','81023120_사과,과일쥬스,농축과즙','81023130_사과,과일쥬스,캔쥬스','81023140_사과,통조림','81023150_사과,잼','81024000_산딸기','81054000_산수유','81025000_살구,생과','81025040_살구,말린것','81025010_살구,넥타','81025020_살구,통조림','81025030_살구,잼','81026000_석류','81027000_소귀나무열매','81028000_수박,생과,적육질','81028010_수박,생과,황육질','81028020_수박,씨없는수박,적육질','81029000_시벅혼','81030000_아보카도','81055000_아세로라,감미종','81031000_앵두','81032000_서양수박','81033000_엘더베리','81034000_오디,생과,흑과(개량종)','81034010_오디,생과,백과','81034020_오디,생과,흑과(재래종)','81035000_오렌지,생과','81035020_오렌지,캔쥬스','81035030_오렌지,천연과즙','81035040_오렌지,마말레이드','81035050_오렌지,생과일쥬스','81035060_오렌지,과즙음료(가당,Ca첨가)','81035070_오렌지,과즙음료(무가당)','81036000_올리브,생과','81036010_올리브,말린것','81036020_올리브,피클,청과','81036030_올리브,피클,숙과','81037000_유자,생과','81037010_유자,생과,과육','81037020_유자,생과,과피','81037030_유자,과피가루','81038000_으름','81039000_자두,생과','81039010_자두,생과,후무사','81039020_자두,일본자두,생과','81039030_자두,일본자두,말린것','81039040_자두,넥타','81040000_그레이프후르츠(자몽),생과','81040010_그레이프후르츠(자몽),과일쥬스,과즙음료(과즙20%)','81040011_그레이프후르츠(자몽),과일쥬스,과즙음료(과즙50%)','81040020_그레이프후르츠(자몽),과일쥬스,농축과즙','81040030_그레이프후르츠(자몽),천연과즙','81040040_그레이프후르츠(자몽),캔쥬스,가당','81040050_그레이프후르츠(자몽),캔쥬스,무가당','81041000_참외,생과','81041010_참외,황색과육','81041020_참외,흰색과육(금싸라기)','81041030_참외,은천','81056000_코코넛','81042000_크린베리,생과','81042010_크린베리,쥬스칵테일','81043000_키위','81044000_탱자','81045000_파인애플,생과','81045010_파인애플,과일쥬스,농축과즙','81045020_파인애플,과일쥬스,과즙음료(과즙50%)','81045030_파인애플,과일쥬스,천연과즙','81045040_파인애플,과일쥬스,캔쥬스','81045050_파인애플,넥타','81045060_파인애플,통조림','81046000_파파야','81047000_패션후르츠,생과','81047020_패션후르츠,생과,자색과육','81047030_패션후르츠,생과,황색과육','81047010_패션후르츠천연과즙','81048000_포도,생것','81048010_포도,골덴마스컷,작은것','81048020_포도,골덴마스컷,큰것','81048030_포도,생과,델라웨어','81048040_포도,생과,세레단','81048050_포도,생과,캠벌얼리','81048060_포도,생과,거봉','81048070_포도,청포도','81048080_포도,건포도','81048090_포도,과일쥬스,과즙음료','81048100_포도,넥타','81048110_포도,과일쥬스,농축과즙','81048120_포도,과일쥬스,천연과즙','81048130_포도,과일쥬스,캔쥬스','81048140_포도,깐포도통조림','81048150_포도,잼','81049010_후르츠펀치,통조림','81050010_후르츠샐러드,통조림','81051010_후르츠칵테일,통조림','82001010_이유식,배,고형분포함','82001020_이유식,배,고형분포함,3차식,거버','82001030_이유식,배,으깬형태','82001040_이유식,배,으깬형태,1차식,거버','82001050_이유식,배,으깬형태,2차식,거버','82001060_이유식,배숙','82001070_이유식,유아용쥬스,배,거버','82001080_이유식,맑은쥬스,배,2차식,거버','82002010_이유식,복숭아,고형분포함','82002020_이유식,복숭아,고형분포함,3차식,거버','82002030_이유식,복숭아,분말,하인즈','82002040_이유식,복숭아,으깬형태','82002050_이유식,복숭아,으깬형태,1차식,거버','82002060_이유식,복숭아,으깬형태,2차식,거버','82003010_이유식,사과,비치넛','82003020_이유식,사과,분말,하인즈','82003030_이유식,사과소스,고형분포함','82003050_이유식,사과소스,으깬형태','82003060_이유식,사과소스,으깬형태,1차식,거버','82003070_이유식,사과소스,으깬형태,2차식,거버','82003080_이유식,사과숙','82003090_이유식,맑은쥬스,사과','82003100_이유식,유아용맑은쥬스,사과,거버','82003110_이유식,맑은쥬스,사과,2차식,거버','82003120_이유식,사과소스,고형분포함,3차식,거버','82004010_이유식,유아용쥬스,사과,베리,거버','82005010_이유식,사과,배,분말,하인즈','82005020_이유식,사과,배,고형분포함,하인즈','82005030_이유식,사과,배,으깬형태,하인즈','82006010_이유식,사과,복숭아,분말,하인즈','82006020_이유식,맑은쥬스,사과,복숭아','82006030_이유식,맑은쥬스,사과,복숭아,2차식,거버','82007010_이유식,사과,블루베리,고형분포함','82007020_이유식,사과,블루베리,고형분포함,거버','82007030_이유식,사과,블루베리,으깬형태','82007040_이유식,사과,블루베리,으깬형태,거버','82008010_이유식,사과소스,살구,고형분포함,거버','82008030_이유식,사과,살구,고형분포함,하인즈','82008040_이유식,사과,살구,분말,하인즈','82008050_이유식,사과,살구,으깬형태','82008060_이유식,사과,살구,으깬형태,거버','82008070_이유식,사과소스,살구,으깬형태','82008080_이유식,맑은쥬스,사과,살구,하인즈','82008090_이유식,맑은쥬스,사과,살구,2차식,거버','82009010_이유식,유아용쥬스,사과,체리,거버','82009020_이유식,맑은쥬스,사과,체리','82009030_이유식,맑은쥬스,사과,체리,거버','82010010_이유식,맑은쥬스,사과,파인애플,거버','82010020_이유식,맑은쥬스,사과,파인애플,하인즈','82011010_이유식,맑은쥬스,사과,포도','82011020_이유식,맑은쥬스,사과,포도,2차식,거버','82011030_이유식,유아용쥬스,사과,포도,거버','82012010_이유식,바나나,분말,하인즈','82012020_이유식,바나나,으깬형,1차식,거버','82012030_이유식,바나나,으깬형태,비치넛','82013010_이유식,밤,바나나죽(가정조리)','82014010_이유식,맑은쥬스,종합과일','82014020_이유식,맑은쥬스,종합과일,2차식,거버','82014030_이유식,유아용쥬스,종합과일,거버','91001000_송아지고기,살코기,날것','91001010_송아지고기,살코기,삶은것','91002000_송아지고기,갈비,날것','91002010_송아지고기,갈비,구운것','91002020_송아지고기,갈비,삶은것','91003000_송아지고기,등심,날것','91003010_송아지고기,등심,구운것','91003020_송아지고기,등심,삶은것','91004000_송아지고기,설도,날것','91004010_송아지고기,설도,삶은것','91004020_송아지고기,설도,볶은것','91005000_송아지고기,쇠악지,날것','91005010_송아지고기,쇠악지,구운것','91005020_송아지고기,쇠악지,삶은것','91006000_송아지고기,어깨,날것','91006010_송아지고기,어깨,구운것','91006020_송아지고기,어깨,삶은것','91007000_송아지고기,채끝,날것','91007010_송아지고기,채끝,구운것','91007020_송아지고기,채끝,삶은것','91008000_송아지고기,부산물,간,날것','91008010_송아지고기,부산물,간,삶은것','91009000_송아지고기,부산물,골,날것','91009010_송아지고기,부산물,골,삶은것','91010000_송아지고기,부산물,신장,날것','91010010_송아지고기,부산물,신장,삶은것','91011000_송아지고기,부산물,심장,날것','91011010_송아지고기,부산물,심장,삶은것','91012000_송아지고기,부산물,허파,날것','91012010_송아지고기,부산물,허파,삶은것','91013000_송아지고기,부산물,혀,날것','91013010_송아지고기,부산물,혀,삶은것','91014000_쇠고기,수입우,갈비,날것','91014010_쇠고기,수입우,갈비,구운것','91014020_쇠고기,수입우,갈비,브로일한것','91015000_쇠고기,수입우,대접살,날것','91015010_쇠고기,수입우,대접살,브로일한것','91015020_쇠고기,수입우,대접살,삶은것','91016000_쇠고기,수입우,등심','91017000_쇠고기,수입우,사태,날것','91017010_쇠고기,수입우,사태,삶은것','91018000_쇠고기,수입우,설도,날것','91018010_쇠고기,수입우,설도,브로일한것','91019000_쇠고기,수입우,쇠악지,날것','91020000_쇠고기,수입우,안심,날것','91020010_쇠고기,수입우,안심,브로일한것','91021000_쇠고기,수입우,양지,날것','91021010_쇠고기,수입우,양지,삶은것','91022000_쇠고기,수입우,우둔','91023000_쇠고기,수입우,장정(목심),날것','91023010_쇠고기,수입우,장정(목심),삶은것','91024000_쇠고기,수입우,채끝,날것','91024010_쇠고기,수입우,채끝,브로일한것','91051000_쇠고기,한우','91052000_쇠고기,한우,갈비','91025000_쇠고기,한우,등심','91026000_쇠고기,한우,사태','91027000_쇠고기,한우,설도','91028000_쇠고기,한우,안심','91029000_쇠고기,한우,양지','91030000_쇠고기,한우,우둔','91031000_쇠고기,한우,육포','91032000_쇠고기,한우,장정(목심)','91033000_쇠고기,한우,채끝','91034000_쇠고기,부산물,간,날것','91034010_쇠고기,부산물,간,삶은것','91035000_쇠고기,부산물,골(뇌),날것','91035010_쇠고기,부산물,골(뇌),약불익힘','91036000_쇠고기,부산물,곱창','91037000_쇠고기,부산물,꼬리','91048020_쇠고기,부산물,양지국물','91048030_쇠고기,부산물,우족국물','91048040_쇠고기,부산물,잡뼈국물','91038000_쇠고기,부산물,대장','91039000_쇠고기,부산물,신장(콩팥),날것','91039010_쇠고기,부산물,신장(콩팥),약불익힘','91040000_쇠고기,부산물,심장(염통),날것','91040010_쇠고기,부산물,심장(염통),약불익힘','91041000_쇠고기,부산물,양(위)','91042000_쇠고기,부산물,천엽','91043000_쇠고기,부산물,피(선지)','91044000_쇠고기,부산물,허파,날것','91044010_쇠고기,부산물,허파,삶은것','91045000_쇠고기,부산물,우족','91046000_쇠고기,부산물,혀,날것','91046010_쇠고기,부산물,혀,약불익힘','91047010_쇠고기,한우,불고기,양념','91048000_쇠고기,육수','91050000_쇠고기,쇠고기가공품,허니롤소시지','91048010_사골국물,인스턴트','91049010_이유식,쇠고기,고형분포함','91049020_이유식,쇠고기,으깬형태','91049030_이유식,쇠간죽','91049040_이유식,쇠고기,고형분포함,3차식,거버','91049050_이유식,쇠고기,으깬형태,2차식,거버','92001000_돼지고기,갈비,날것','92001010_돼지고기,갈비,구운것','92001020_돼지고기,갈비,삶은것','92022000_돼지고기,넓적다리','92002000_돼지고기,뒷다리,날것','92002010_돼지고기,뒷다리,구운것','92003000_돼지고기,등심,날것','92003010_돼지고기,등심,구운것','92003020_돼지고기,등심,브로일한것','92003030_돼지고기,등심,삶은것','92021000_돼지고기,목살','92004000_돼지고기,사태,날것','92004010_돼지고기,사태,구운것','92005000_돼지고기,삼겹살','92006000_돼지고기,안심,날것','92006010_돼지고기,안심,구운것','92006020_돼지고기,안심,브로일한것','92007000_돼지고기,앞다리,날것','92008000_돼지고기,어깨등심,날것','92008010_돼지고기,어깨등심,구운것','92009000_돼지고기,지방육','92010000_돼지고기,부산물,간,날것','92010010_돼지고기,부산물,간,삶은것','92011000_돼지고기,부산물,대장,날것','92011010_돼지고기,부산물,대장,삶은것','92012010_돼지고기,부산물,머리고기,삶은것','92013000_돼지고기,부산물,소장(곱창),날것','92013010_돼지고기,부산물,소장(곱창),삶은것','92014000_돼지고기,부산물,신장(콩팥),날것','92014010_돼지고기,부산물,신장(콩팥),삶은것','92015000_돼지고기,부산물,심장,날것','92015010_돼지고기,부산물,심장,삶은것','92016000_돼지고기,부산물,족발,날것','92016010_돼지고기,부산물,족발,삶은것','92016020_돼지고기,부산물,족발,조미한것','92017000_돼지고기,부산물,허파,날것','92017010_돼지고기,부산물,허파,삶은것','92018010_돼지고기,불고기,양념','92019020_탕수육,냉동,소스포함','92020010_이유식,햄,으깬형태,2차식,거버','92020020_이유식,햄,고형분포함,3차식,거버','93001000_닭고기(성계)','93001011_닭고기,살코기,날것','93001010_닭고기,살코기,삶은것','93001020_닭고기,구이통닭','93001030_닭고기,살코기,구운것','93001040_닭고기,밀가루입혀튀긴것','93001050_닭고기,튀긴옷입혀튀긴것,뼈제외(패스프투드)','93001060_닭고기,튀김옷입혀튀긴것','93001070_닭고기,후라이드치킨','93001080_닭고기,크리스피치킨디럭스,맥도날드','93001090_닭고기,맥치킨,맥도날드','93001100_닭고기,치킨,롯데리아','93001110_닭고기,그릴드치킨디럭스,맥도날드','93001120_닭고기,치킨텐더즈,버거킹','93001130_닭고기,텐터로스트치킨,껍질포함,KFC','93002000_닭고기,가슴,날것','93002010_닭고기,가슴,구운것','93002011_닭고기,가슴,삶은것','93002020_닭고기,가슴,밀가루입혀튀긴것','93002030_닭고기,가슴,튀김옷입혀튀긴것','93002040_닭고기,가슴살,날것','93002050_닭고기,가슴살,튀긴것','93002060_닭고기,가슴살,구운것','93002051_닭고기,가슴살,튀김옷입혀튀긴것','93002070_닭고기,가슴살,볶은것','93002080_닭고기,가슴살,튀김옷입힌것(패스트푸드)','93002090_닭고기,가슴,KFC','93002100_닭고기,치킨오리지날,가슴중심','93002110_닭고기,치킨오리지날,가슴옆,KFC','93002120_닭튀김,크리스피치킨,가슴옆부위,KFC','93002130_닭튀김,크리스피치킨,가슴중심부위,KFC','93002140_닭고기,Hot&Spicy치킨,가슴,KFC','93002150_치킨,텐터로스트치킨,가슴,껍질포함,KFC','93002160_치킨,텐터로스트치킨,가슴,KFC','93003000_닭고기,날개,날것','93003010_닭고기,날개,구운것','93003011_닭고기,날개,삶은것','93003020_닭고기,날개,밀가루입혀튀긴것','93003030_닭고기,날개,튀김옷입혀튀긴것','93003040_닭고기,버팔로윙,도미노피자','93003050_닭고기,치킨오리지날,날개,KFC','93003060_닭고기,크리스피치킨,날개,KFC','93003070_닭고기,Hot&Spicy치킨,날개,KFC','93003080_닭고기,핫윙,KFC','93004000_닭고기,너겟','93004010_닭고기.치킨너겟,맥도날드','93004020_닭고기,치킨맥너겟,맥도날드','93004030_닭고기,치킨너겟,웬디스','93004040_닭고기,치킨너겟,바베큐소스,웬디스','93004050_닭고기,치킨너겟,KFC','93004060_닭고기,치킨너겟,머스타드소스,KFC','93005000_닭고기,다리,날것','93005010_닭고기,다리,구운것','93005011_닭고기,다리,삶은것','93005020_닭고기,다리,밀가루입혀튀긴것','93005030_닭고기,다리,튀김옷입혀튀긴것','93005040_닭고기,다리살,날것','93005050_닭고기,다리살,구운것','93005060_닭고기,다리살,튀긴것','93005070_닭고기,다리살,볶은것','93005080_닭고기,다리살,튀김옷입혀튀긴것(패스트푸드)','93005090_닭고기,치킨오리지날,다리,KFC','93005100_닭고기,크리스피치킨,닭다리,KFC','93005110_닭고기,Hot&Spicy치킨,다리,KFC','93005120_닭고기,넓적다리,날것','93005130_닭고기,넓적다리,구운것','93005140_닭고기,넓적다리,밀가루입혀튀긴것','93005150_닭고기,넓적다리,튀김옷입혀튀긴것','93005160_치킨,넓적다리,KFC','93005170_닭고기,치킨오리지날,넓적다리,KFC','93005180_닭고기,크리스피치킨,넓적다리,KFC','93005190_닭고기,Hot&Spicy치킨,넙적다리,KFC','93005200_닭고기,넓적다리살,날것','93005210_닭고기,넓적다리살,구운것','93005220_닭고기,넓적다리살,볶은것','93005230_닭고기,넓적다리살,튀긴것','93005240_치킨,텐터로스트치킨,넓적다리,껍질포함,KFC','93005250_치킨,텐터로스트치킨,넓적다리,KFC','93005260_치킨,텐터로스트치킨,다리,껍질포함,KFC','93005270_치킨,텐터로스트치킨,다리,KFC','93006000_닭고기,목,날것','93006010_닭고기,목,밀가루입혀튀긴것','93006020_닭고기,목,튀김옷입혀튀긴것','93007000_닭고기,닭뼈국물','93007010_닭고기,닭육수','93001140_닭고기,튀긴통닭','93013000_영계,삶은것','93008000_오골계','93014000_토종닭','93014010_토종닭,가슴','93014020_토종닭,다리','93014030_토종닭,날개','93014040_토종닭,껍질','93009000_닭고기,부산물,간,날것','93009010_닭고기,부산물,간,약불익힘','93010000_닭고기,부산물,모래주머니,날것','93010010_닭고기,부산물,모래주머니,약불익힘','93011000_닭고기,부산물,내장','93012000_닭고기,부산물,심장,날것','93012010_닭고기,부산물,심장,약불익힘','94001010_개고기','94002010_개구리,다리','94003010_거위,살코기,날것','94003020_거위,살코기,구운것','94003030_거위,간,날것','94003040_거위,간,튀긴것','94004000_고래고기,날것','94004010_고래고기,꼬리','94004020_고래고기,냉동품,꼬리살','94004030_고래고기,복부정육','94004040_고래고기,복부지육','94004050_고래고기,비계','94004060_고래고기,염장품,붉은살','94004070_고래고기,염장품,지육','94004080_고래고기,냉동품,붉은살','94005000_꿩고기','94005010_꿩고기,날것,숫꿩','94005020_꿩고기,날것,암꿩','94006000_메추라기고기','94007000_멧돼지고기,날것','94007020_멧돼지고기,앞다리','94008000_비둘기고기','94009000_사슴고기,날것','94009010_사슴고기,구운것','94010010_양고기,갈비','94010020_양고기,다리살','94010030_양고기,살코기,날것','94010040_양고기,어깨살','94010050_어린양고기,날것','94010060_어린양고기,갈비,날것','94010070_어린양고기,갈비,구운것','94010080_어린양고기,갈비,브로일한것','94010090_어린양고기,다리,날것','94010100_어린양고기,다리,구운것','94010110_어린양고기,어깨,날것','94010120_어린양고기,어깨,구운것','94010130_어린양고기,어깨,브로일한것','94010140_어린양고기,어깨,삶은것','94010150_어린양고기,부산물,간,날것','94010160_어린양고기,부산물,간,삶은것','94011000_염소고기(산양고기)','94012000_오리고기,집오리,고기(날것)','94012010_오리고기,산오리','94012020_오리고기,집오리,고기(구운것)','94012030_오리고기,집오리,살코기(구운것)','94012040_오리고기,집오리,살코기(날것)','94013000_자라','94014000_참새고기','94015000_칠면조고기,살코기,날것','94015010_칠면조고기,살코기,구운것','94015020_칠면조고기,살코기,약불익힘','94016010_토끼고기,산토끼','94016020_토끼고기,집토끼,날것','94016030_토끼고기,집토끼,조리한것','94017000_하이스','95001010_돈까스,냉동','95001020_돈까스,돈까스,대림수산','95001030_돈까스,미니돈까스,대림수산','95001040_돈까스,순살돈까스,동원산업','95001050_돈까스,알뜰돈까스,롯데햄.우유','95002010_동그랑땡,동그랑땡,대림수산','95002020_동그랑땡,새우,냉동','95002030_동그랑땡,야채,냉동','95003010_돼지고기,돼지고기가공품,통조림,런천미트','95003020_햄,런천미트,진주햄','95003030_햄,로스팜,롯데햄우유','95001060_돼지고기,돼지고기가공품,돈가스,냉동품','95004000_돼지고기,돼지고기가공품,바베큐','95005000_돼지고기,돼지고기가공품,베이컨,날것','95005010_돼지고기,돼지고기가공품,베이컨,구운것','95005020_돼지고기,돼지고기가공품,베이컨,날것,등심','95005030_돼지고기,돼지고기가공품,베이컨,날것,어깨살','95005040_베이컨,베이컨,진주햄','95006010_돼지고기,돼지고기가공품,소시지,건조','95006020_돼지고기,돼지고기가공품,소시지,리용','95006030_돼지고기,돼지고기가공품,소시지,볼로냐','95006040_돼지고기,돼지고기가공품,소시지,비엔나,위너','95006050_돼지고기,돼지고기가공품,소시지,프랑크프르트','95006060_돼지고기,돼지고기가공품,소시지,핫도그','95006070_돼지고기,돼지고기가공품,소시지,이태리소시지','95006080_돼지고기,돼지고기가공품,순대','95007010_돼지고기,돼지고기가공품,햄,등심','95007020_돼지고기,돼지고기가공품,햄,로스','95007030_돼지고기,돼지고기가공품,햄,본레스,구운것','95007040_돼지고기,돼지고기가공품,햄,본레스,날것','95007050_돼지고기,돼지고기가공품,햄,본인','95007060_돼지고기,돼지고기가공품,햄,슬라이스','95007070_돼지고기,돼지고기가공품,햄,어깨살','95007080_돼지고기,돼지고기가공품,통조림,날것','95007090_돼지고기,돼지고기가공품,통조림,구운것','95007100_돼지고기,돼지고기가공품,통조림','95007110_햄,갈비맛골드,진주햄','95007120_햄,구운소금구이맛,진주햄','95007130_햄,더블스포크햄,진주햄','95007140_햄,덩크후랑크,진주햄','95007150_햄,동그랑땡구이맛,진주햄','95007160_햄,불고기스모크햄,한성기업','95007170_햄,순돈육햄91,진주햄','95007180_햄,숯불구이햄,동원산업','95007190_햄,스모크햄,동원산업','95007200_햄,즉석구이햄,진주햄','95008010_미트볼,레또미트볼,제일제당','95008020_미트볼,냉동','95008030_고기소스,통조림','95008040_고기소스,레토르트','95009010_소시지,둘리,롯데햄우유','95009020_소시지,새몽땅야채맛소시지,진주햄','95009030_소시지,새참맛소시지맛,진주햄','95009040_소시지,점프후랑크,진주햄','95009050_소시지,천하장사,진주햄','95009060_소시지,홉소세지,진주햄','95010010_돼지고기완자,냉동','95010020_쇠고기완자,냉동','95011010_스튜,레토르트','95011020_스튜,레또크림스튜,제일제당','95011030_스튜,통조림','95012010_장조림,진주햄','95013010_전통떡갈비,한성기업','95014010_핫도그','95014020_핫도그,칠리(패스트푸드)','95014030_핫도그,냉동','95015010_고기산적,냉동','95015020_주물럭,냉동','95016010_치킨까스,냉동','96001010_샌드위치,닭고기','96001020_샌드위치,닭고기(패스트푸드)','96001030_샌드위치,치킨샌드위치,버거킹','96001040_샌드위치,치킨샌드위치,KFC','96001050_샌드위치,BK브로일러치킨샌드위치,버거킹','96001060_샌드위치,아침용(웬디스)','96001150_샌드위치,달걀,치즈','96001160_샌드위치,생선','96001070_샌드위치,쇠고기','96001080_샌드위치,쇠고기(패스트푸드)','96001090_샌드위치,로우스트비프,서브웨이','96001100_샌드위치,햄과치즈','96001110_샌드위치,햄과치즈(패스트푸드)','96001120_샌드위치,햄,서브웨이','96001130_샌드위치,볼로냐,서브웨이','96001140_샌드위치,빅킹샌드위치,버거킹','96002010_햄버거,보통햄버거','96002020_햄버거,냉동','96002030_햄버거(패스트푸드)','96002040_햄버거,로이로저스','96002050_햄버거,맥도날드','96002060_햄버거,버거킹','96002070_햄버거,싱글버거(패스트푸드)','96002080_햄버거,싱글버거,웬디스','96002090_햄버거,더블버거(패스트푸드)','96002100_햄버거,더블버거,웬디스','96002110_햄버거,빅맥,맥도날드','96002120_햄버거,빅클래식더블햄버거,웬디스','96002130_햄버거,주니어햄버거,웬디스','96002140_햄버거,데리버거,롯데리아','96002150_햄버거,로스트비프샌드위치,롯데리아','96002160_햄버거,리브샌드,롯데리아','96002170_햄버거,맥디엘티,맥도날드','96002180_햄버거,바버거,로이로저스','96002190_햄버거,불고기버거,롯데리아','96002200_햄버거,BB버거,롯데리아','96002210_햄버거,빅클래식버거,웬디스','96002220_햄버거,치즈버거,베이컨','96002230_햄버거,베이컨치즈버거(패스트푸드)','96002240_햄버거,베이컨치즈버거,로이로저스','96002250_햄버거,베이컨치즈버거,웬디스','96002260_햄버거,베이컨치즈버거,버거킹','96002270_햄버거,주니어베이컨치즈버거,웬디스','96002280_햄버거,더블치즈버거,베이컨,버거킹','96002290_햄버거,치즈버거','96002300_햄버거,싱글치즈버거,웬디스','96002310_햄버거,빅클래식치즈버거,웬디스','96002320_햄버거,치즈버거,로이로저스','96002330_햄버거,치즈버거,롯데리아','96002340_햄버거,치즈버거,맥도날드','96002350_햄버거,쿼터파운더,치즈,맥도날드','96002360_햄버거,치즈버거,버거킹','96002370_햄버거,더블치즈버거(패스트푸드)','96002380_햄버거,더블치즈버거,버거킹','96002390_햄버거,더블치즈버거,웬디스','96002400_햄버거,주니어치즈버거,웬디스','96002410_햄버거,주니어치즈버거디럭스,웬디스','96002420_샌드위치,와퍼샌드위치,버거킹','96002430_샌드위치,와퍼치즈샌드위치,버거킹','96002440_샌드위치,더블와퍼샌드위치,버거킹','96002450_샌드위치,더블와퍼치즈샌드위치,버거킹','96002460_샌드위치,와퍼주니어샌드위치,버거킹','96002470_샌드위치,와퍼주니어치즈샌드위치,버거킹','96002480_햄버거,치킨샌드위치(패스트푸드)','96002490_햄버거,치킨버거,롯데리아','96002500_햄버거,치킨샌드위치,버거킹','96002510_햄버거,치킨샌드위치,KFC','96002520_햄버거,치킨클럽샌드위치,웬디스','96002530_햄버거,치킨치즈샌드위치(패스트푸드)','96002540_햄버거,쿼터파운더,맥도날드','96002550_햄버거,크로상샌드위치,버거킹','96002560_햄버거,햄치즈샌드위치,버거킹','101001000_계란,전란,생것','101001010_계란,전란,삶은것','101002000_계란,난백,생것','101002010_계란,난백,삶은것','101003000_계란,난황,생것','101003010_계란,난황,삶은것','101004000_계란,DHA란','101005000_계란,계란가루','101006000_계란,수란','101007000_계란,스크램블','101007010_계란,스크렘블(패스트푸드)','101007020_계란,스크램블드에그,아침식사(패스트푸드)','101007030_계란,스크램블드에그,맥도날드','101007040_계란,스크램블드에그,아침식사용,버거킹','101008000_계란,오믈렛','101009000_계란,후라이','102001000_메추리알,생것','102001010_메추라기알,삶은것','103001000_오리알,생것','103001010_오리알,피단','104001000_청둥오리알','105001000_거위알,전란,생것','105001010_거위알,전란,삶은것','105002000_기러기알,생것','105002010_기러기알,삶은것','106001010_샌드위치,계란과치즈','106001020_샌드위치,계란과치즈(패스트푸드)','107001010_이유식,계란노른자,고형분포함','107001020_이유식,계란노른자,으깬형태','107001030_이유식,계란노른자,으깬형태,2차식,거버','111001000_가다랭이,생것','111001010_가다랭이,생것,붉은살','111001020_가다랭이,생것,흰살','111001030_가다랭이,반건품','111001040_가다랭이,삶은국물','111001050_가다랭이,통조림','111001060_가다랭이,가미통조림','111001070_가다랭이,유지통조림','111001080_가다랭이,튀김','111001090_가다랭이,내장젓','111002000_가물치','111003000_가시망둑','111004000_가오리','111004010_가오리,생것,나비가오리','111004020_가오리,생것,노랑가오리','111004030_가오리,생것,목탁가오리','111004040_가오리,생것,전기가오리','111004050_가오리,조미품','111005000_가자미,생것,가자미','111005010_가자미,생것,각시가자미','111005020_가자미,생것,돌가자미','111005030_가자미,생것,문치가자미','111005040_가자미,생것,범가자미','111005050_가자미,생것,술봉가자미','111005060_가자미,생것,용가자미','111005070_가자미,생것,줄가자미','111005080_가자미,생것,참가자미','111005090_가자미,생것,혀가자미','111005110_가자미,구운것','111005120_가자미,삶은것','111005100_가자미,튀김냉동품','111006000_갈전갱이','111007000_갈치,생것','111007010_갈치,얼간품','111007020_갈치,젓','111008000_강달이','111009000_강준치','111010000_게르치,생것','111010010_게르치,삶은것','111011000_고등어,생것','111011010_고등어,말린것','111011060_고등어,반건품','111011020_고등어,구운것','111011030_고등어,삶은것','111011040_고등어,염장품(자반)','111011050_고등어,통조림','111012000_괴도라치','111013000_군평선어','111014000_그물베도라치','111015000_기름종개','111016000_긴따루','111017000_까나리,생것','111017010_까나리,자건품','111018000_꺽저기','111019000_꼬치고기,생것','111019010_꼬치고기,구운것','111020000_꽁지양태','111021000_꽁치,생것','111021010_꽁치,말린것','111021020_꽁치,구운것','111021030_꽁치,염장품','111021040_꽁치,통조림','111021050_꽁치통조림,동원산업','111021060_꽁치,토마토가미통조림','111022000_날치,생것','111022010_날치,염장품','111022020_날치,알','111023000_납지리','111024000_넙치(광어),생것','111024010_넙치(광어),껍질','111025000_네동가리','111026000_노랑벤자리','111027000_노랑촉수','111028000_노래미','111029000_놀래기','111030000_농어,생것','111030010_농어,구운것','111031000_누치','111032000_눈강달이,생것','111032010_눈강달이,젓','111033000_눈볼대','111034000_눈양태','111035000_눈퉁멸,생것','111035010_눈퉁멸,말린것,부채꼴','111036000_능성어','111037000_다금바리','111038000_달강어','111039000_달고기','111040000_대구,생것','111040010_대구,냉동품','111040120_대구,구운것','111040020_대구,내장','111040030_대구,말린것','111040040_대구,대구포','111040050_대구,염장품','111040060_대구,반건염장품','111040070_대구,튀김냉동품','111040080_대구,젓','111040090_대구,아가미젓','111040100_대구,알','111040110_붉은대구','111041000_대두어(흑연)','111042000_도다리','111043000_도루묵,생것','111043010_도루묵,염건품','111044010_돔,각시돔','111044020_돔,감성돔','111044030_돔,강담돔','111044040_돔,구갈돔','111044050_돔,금눈돔','111044060_돔,꼽새돔','111044070_돔,도화돔','111044080_돔,독돔','111044090_돔,돌돔','111044100_돔,백미돔','111044110_돔,범돔','111044120_돔,뱅애돔','111044130_돔,뿔돔','111044140_돔,샛돔','111044150_돔,실꼬리돔','111044160_돔,실붉돔','111044170_돔,어름돔','111044180_돔,옥돔,생것','111044190_돔,옥돔,구운것','111044200_돔,옥돔,삶은것','111044210_돔,옥돔,반건품','111044220_돔,옥돔,육동가리돔','111044230_돔,자리돔','111044240_돔,참돔,생것','111044250_돔,참돔,구운것','111044260_돔,참돔,삶은것','111044270_돔,참돔,껍질','111044280_돔,호박돔','111044290_돔,흑돔','111044300_돔,황돔','111044310_돔,황줄돔','111045000_도치','111046000_도화양태','111047000_독가시치','111048000_동동갈치','111049000_동사리','111050000_동자개','111051000_둑중개,생것','111051010_둑중개,삶은것','111051020_둑중개,조림','111052000_드렁허리','111053000_등가시치','111054000_만새기','111055000_말쥐치,생것','111055010_말쥐치,조미건품','111056000_망둥어,생것','111056010_망둥어,설탕조림','111056020_망둥어,장조림','111057000_망상어','111058000_매퉁이','111059000_메기','111060000_멸치,생것','111061010_멸치,자건품대','111061020_멸치,자건품중','111061030_멸치,자건품소','111061040_멸치,젓','111061050_멸치,액젓','111061060_멸치,유지통조림','111062000_명태,생것','111062010_명태,냉동품(동태)','111062020_명태,건(북어)','111062030_명태,황태','111062040_명태,포','111062050_명태,조미포','111062060_명태,구운것','111062070_명태,알(명란),생것','111062080_명태,알(명란),명란젓','111062090_명태,알(명란),명란젓,양념','111062100_명태,이리','111062110_명태,창란젓','111062120_명태,알(창란),창란젓,양념','111062130_명태,말린것,어린것(노가리)','111062140_명태,코다리','111062150_명태,코다리,구운것','111063000_모래무지','111064000_몽치다래','111065000_물메기','111066000_물치다래','111067000_미꾸라지,생것','111067010_미꾸라지,삶은것','111068000_민달고기','111069000_민어,생것','111069010_민어,건(암치)','111069020_민어,구운것','111069030_민어,말린것','111069040_민어,튀김옷입혀튀긴것','111069050_민어,조미건품(암치)','111069060_민어,알,염장','111070000_민태','111071000_박대,생것','111071010_박대,말린것','111071020_박대,반건조','111071030_박대,반건품','111072000_방어,생것,자연산,(성어)','111072010_방어,생것,자연산,(어린것)','111072020_방어,생것,양식,어린것','111072040_방어,구운것','111072030_방어,훈제유지통조림','111073000_백련어','111074000_밴댕이,생것','111074010_밴댕이,자건품','111074020_밴댕이,젓','111076000_뱅어,생것','111076010_뱅어,말린것','111076020_뱅어,포','111077000_베도라치','111078000_베로치','111079000_베스','111080000_벤자리','111081000_별성대','111082000_별쭉지성대','111083000_병어','111084000_보구치','111085000_보리멸,생것','111085010_보리멸,냉동품','111086000_복어,검복,생것','111086010_복어,검복,조미품','111086020_복어,까치복,생것','111086030_복어,까칠복,생것','111086040_복어,매리복,생것','111086050_복어,밀복,생것','111086060_복어,자주복,생것','111086070_복어,흰점복,생것','111087000_볼기우럭','111088010_볼락,생것(아래중복삭제?)','111088020_볼락,누루시볼락,생것','111088080_볼락,볼락,생것','111088030_볼락,불볼락,생것','111088040_볼락,우럭볼락,생것','111088050_볼락,조피볼락(우럭),생것','111088060_볼락,황점볼락,생것','111088070_볼락,구운것','111089000_부르길','111090000_부세','111091000_부시리','111092000_붉바리','111093000_붉은메기','111094000_붕어,생것','111094010_붕어,구운것','111094020_붕어,삶은것','111095000_빙어,민물빙어,생것','111095010_빙어,민물빙어,자건품','111095020_빙어,민물빙어,설탕조림','111095030_빙어,민물빙어,장조림','111095040_빙어,바다빙어,생것','111095050_빙어,바다빙어,말린것','111095060_빙어,바다빙어,구운것','111096000_바가사리','111097000_빨간횟대','111098000_빨강부치','111099000_사당놀래기','111100000_산천어','111101000_삼세기(삼수기)','111102000_삼치,생것','111102010_삼치,구운것','111102020_삼치,젓','111103010_상어,가래상어','111103020_상어,곱상어','111103030_상어,까치상어','111103040_상어,돔발상어','111103050_상어,돔발상어,알','111103060_상어,두툽상어','111103070_상어,모조리상어','111103080_상어,별상어','111103090_상어,악상어','111103100_상어,은상어','111103110_상어,청새리상어','111103120_상어,청새리상어,지느러미','111103130_상어,흉상어','111103140_상어,알','111103150_상어,지느러미','111104000_새다래','111105000_새치다래류','111106000_샛멸','111107010_서대,각시서대','111107020_서대,궁제기서대','111107030_서대,참서대','111108000_성대','111109000_송어,생것','111109010_송어,염장품','111109020_송어,젓','111109030_송어,통조림','111109040_송어,알','111109050_무지개송어,생것','111109060_무지개송어,냉동품','111109070_무지개송어,구운것','111110000_숭어,생것','111110010_숭어,구운것','111110020_숭어,알,염건품','111111000_쌍동가리','111112000_쌍뿔달재','111113000_쏘가리,생것','111113010_쏘가리,냉동품','111114000_쏨뱅이','111115000_쑤기미','111116000_쑥감펭','111117000_아귀,생것','111117020_아귀,아귀찜','111117010_아귀,간','111118000_아미,생것','111118010_아미,말린것','111118020_아미,장조림','111118030_아미,젓','111119000_아홉동가리','111177000_애꼬치,생것','111178000_애꼬치,구운것','111120000_암치,생것','111120010_암치,말린것','111121000_애꼬치','111122000_양미리,생것','111122010_양미리,말린것','111123000_양태','111124000_얼룩통구멍','111125000_여덟동가리','111126000_연어,생것','111126090_연어,소금가미,생것','111126100_연어,소금가미,구운것','111126010_연어,다시마조림','111126020_연어,염장품','111126030_연어,젓','111126040_연어,찌기절임','111126050_연어,통조림','111126060_연어,훈제품','111126070_연어,알,생것','111126080_연어,알,염장','111127000_열기','111128000_열쌍동가리','111129000_용치놀래기','111130000_우각바리','111131000_우럭','111132000_웅어','111133000_은대구','111134000_은삼치','111135000_은어,생것,자연산','111135010_은어,구운것,자연산','111135020_은어,엿절임','111135030_은어,내장젓','111135040_은어,이리','111135050_은어,생것,양식산','111135060_은어,구운것,양식산','111135070_은어,내장,생것,(자연산)','111135080_은어,내장,생것,(양식산)','111135090_은어,내장,구운것,(자연산)','111135100_은어,내장,구운것,(양식산)','111136000_인상어','111137000_임연수어,생것','111137020_임연수어,반건품','111137010_임연수어,소금절임','111138000_잉어,생것','111138010_잉어,삶은것','111138020_이스라엘잉어','111138030_잉어,내장','111139000_장갱이','111140010_장어,갯장어','111140020_장어,먹장어(꼼장어)','111140030_장어,뱀장어(장치),생것','111140040_장어,뱀장어(장치),구운것','111140050_장어,뱀장어(장치),조미구이','111140060_장어,뱀장어(장치),간','111140070_장어,붕장어,생것','111140080_장어,붕장어,냉동품','111140090_장어,붕장어,뼈튀김','111140100_장어,칠성장어,생것','111140110_장어,칠성장어,말린것','111140120_장어,뱀장어,꼼장어','111140130_장어,뱀장어,민물','111140140_장어,뱀장어,바다붕장어','111141000_장대','111142000_장치','111143000_적어,생것','111143010_적어,구운것','111144000_전갱이,생것,성어','111144010_전갱이,냉동품','111144020_전갱이,구운것','111144030_전갱이,삶은것','111144040_전갱이,염건품,생것','111144050_전갱이,염건품,구운것','111144090_전갱이,조미반건품,생것','111144100_전갱이,조미반건품,구운것','111144060_전갱이,가미통조림','111144070_전갱이,생것,어린것(매가리)','111144080_전갱이,튀김냉동품','111145000_전어,생것','111145010_전어,피클','111145020_전어,젓','111146000_점강펭','111147000_점줄우럭,생것','111147010_점줄우럭,구운것','111148000_정어리,생것','111148010_정어리,말린것','111148020_정어리,통째말린것','111148030_정어리,구운것','111148100_정어리,삶은것','111148040_정어리,염장품','111148050_정어리,염건품','111148110_정어리,자건품','111148060_정어리,통조림','111148070_정어리,가미통조림','111148080_정어리,유지통조림','111148090_정어리,토마토통조림','111149000_조기,생것','111149010_조기,염건품(굴비)','111149020_조기,젓','111150000_준치','111151000_줄노래미','111152000_줄삼치','111153000_줄전갱이','111154000_쥐노래미','111155000_쥐치,생것','111155010_쥐치,포,말린것','111155020_쥐치,포,냉동품','111156000_다랑어,참다랑어,생것,성어','111156010_다랑어,참다랑어,생것,붉은살','111156020_다랑어,참다랑어,생것,기름육','111156030_다랑어,참다랑어,냉동품','111156040_다랑어,참다랑어,튀김냉동육','111156050_다랑어,참다랑어,말린것','111156060_다랑어,참다랑어,구운것','111156070_다랑어,참다랑어,생것,어린것','111156080_다랑어,참다랑어,유지통조림','111156090_다랑어,고추참치,동원산업','111156100_다랑어,라이트스탠다드참치,동원산업','111156110_다랑어,야채참치,동원산업','111156120_다랑어,짜장참치,동원산업','111156130_다랑어,후레쉬참치,동원산업','111156140_다랑어,참다랑어,샐러드','111156150_다랑어,황다랑어,생것','111156160_다랑어,황다랑어,통조림','111156170_다랑어,황다랑어,유지통조림','111156180_다랑어,황다랑어,가미통조림','111156190_다랑어,황다랑어,조미통조림,고추','111156200_다랑어,황다랑어,조미통조림,야채','111156210_다랑어,황다랑어,조미통조림,짜장','111157000_참마자','111158000_참붕어','111159000_청새치','111160000_청어,생것','111160010_청어,말린것','111160020_청어,염장품','111160030_청어,찌기절임','111160040_청어,자건품','111160050_청어,훈제품','111160060_청어,알,생것','111160070_청어,알,말린것','111160080_청어,알,염장','111161000_초어','111162000_통치','111163000_틸라피아','111164000_평삼치','111165000_푸렁통구멍','111166000_풀망둑','111167000_피라미','111168000_학꽁치,생것','111168010_학공치,조미한것','111169000_홍어','111126110_홍연어,생것','111126120_홍연어,구운것','111126130_홍연어,훈제품','111170000_홍치','111171000_황놀래기','111173000_황매퉁이','111174000_황새치,생것','111174010_황새치,구운것','111174020_황새치,젓','111175000_황어','111176000_히메치','112001000_가리비,생것','112001010_가리비,냉동품','112001020_가리비,말린것','112001030_가리비,삶은것','112001040_가리비,튀김옷입혀튀긴것','112001050_가리비,튀김냉동품','112001060_가리비,통조림','112001070_비단가리비','112002000_가리비,조개관자,생것','112002040_가리비,조개관자,자건품','112002010_가리비,조개관자,냉동품','112002020_가리비,조개관자,말린것','112002030_가리비,조개관자,튀김냉동품','112003000_가무락조개','112004000_갈색띠매물고둥','112005000_개량조개,생것','112005010_개량조개,말린것','112006010_개조개','112007010_갱조개','112008000_매끈이고둥,통조림(골뱅이통조림)','112009000_관절매물고둥(보라골뱅이)','112002050_국자가리비','112010010_굴,석굴,생것','112010020_굴,참굴,자연산','112010030_굴,참굴,양식산','112010040_굴,냉동품','112010050_굴,삶은것','112010060_굴,튀김옷입혀튀긴것','112010070_굴,통조림','112010080_굴,훈제통조림','112010090_굴,어리굴젓','112010100_굴,토굴,생것','112011010_긴고둥(긴뿔고둥)','112012010_꼬막','112013010_나팔고둥','112014010_대수리','112015010_백합(대합),생것','112015020_백합(대합),삶은것','112015030_백합(대합),튀김옷입혀튀긴것','112015040_백합(대합),통조림,고형분','112015050_백합(대합),생것','112015060_백합(대합),구운것','112015070_백합(대합),말린것','112015080_백합(대합),조미통조림','112016000_동죽','112017000_떡조개','112018000_맛살,생것','112018010_맛살,말린것','112019000_맛조개','112020010_매끈이고둥,생것','112020020_매끈이고둥,삶은것','112021000_모시조개','112022000_물레고둥','112023000_민허리돼지고둥','112024000_바다우렁','112025000_바지락,생것,자연산','112025010_바지락,생것,양식산','112025020_바지락,말린것','112025030_바지락,장조림','112025040_바지락,젓갈','112025050_바지락,조미통조림','112025060_바지락,통조림','112026000_보말고둥,생것','112026010_보말고둥,구운것','112026030_보말고둥,삶은것','112026020_보말고둥,가미통조림','112027000_북방대합','112028000_붉은맛(큰죽합)','112029000_비단고둥','112030000_살조개','112031000_새꼬막','112032000_새조개,생것','112032010_새조개,조미건품','112032020_새조개,조개살,말린것','112033000_소라,생것','112033010_소라,통조림','112034000_수랑','112035000_오분자기','112036010_왕우럭조개','112036020_왕우럭(왕우렁??)','112038000_우렁','112039000_위고둥','112040010_조개,재치조개(재첩)','112041010_전복,생것','112041020_전복,까막전복,생것','112041030_전복,말전복,생것','112041040_전복,참전복,생것','112041050_전복,말린것','112041060_전복,튀긴것','112041070_전복,통조림,가미통조림','112041080_전복,내장','112041090_전복,젓갈','112041100_전복,통조림,삶은것','112042000_접시조개(비단조개)','112043000_조각매물고둥','112044000_조개살,조개관자,생것','112045000_조개살,생것','112045010_조개살,말린것','112045020_조개살,조개관자,튀긴것','112045030_조개살,조개젓','112045040_조개젓,비양념','112046010_진주담치,생것,자연산','112046020_진주담치,생것,양식산','112046030_진주담치,삶은것','112047000_진주조개','112048000_참소라,삶은것','112049000_콩깍지고둥(털골뱅이)','112050000_큰구슬우렁','112051000_큰논우렁','112052000_키조개','112053000_털탑고둥','112054000_펄조개(뻘조개)','112055000_피뿔고둥','112056010_피조개,생것,자연산','112056020_피조개,생것,양식산','112056030_피조개,가미통조림','112057010_홍합,생것','112057020_홍합,자건품','112057030_홍합,통조림','113001000_가재,갯가재,생것','113001010_가재,갯가재,삶은것','113002000_가재,바다가재,생것','113002010_가재,바다가재,삶은것','113003000_게,꽃게,생것','113003010_게,꽃게,삶은것','113004000_게,닭게,생것','113004010_게,닭게,삶은것','113004020_게,닭게,젓','113005000_게,대게(영덕게),생것','113005010_게,대게(영덕게),삶은것','113005020_게,대게(영덕게),게살자건품','113005030_게,대게(영덕게)','113005040_게,대게(영덕게),통조림','113006000_게,붉은대게','113007000_게,반게','113008000_게,왕게,생것','113008020_게,왕게,삶은것','113008010_게,왕게,통조림','113009000_게,참게','113010000_게,게살,자건품','113011000_게,게알,젓','113012000_방게','113013000_성게,생것','113013010_성게,젓','113013020_성게,통조림','113013030_성게,알,젓','113014000_보라성게알,생것','113014010_보라성게알,젓','113015000_새우,가시발새우(네점빨강새우)','113016000_새우,가시배새우','113017000_새우,각시흰새우','113018000_새우,긴뿔천길새우','113019000_새우,꽃새우(독새우),생것','113019010_새우,꽃새우(독새우),냉동품','113019020_새우,꽃새우(독새우),자건품','113019030_새우,꽃새우(독새우),삶은것','113019040_새우,꽃새우(독새우),튀김옷입혀튀긴것','113019050_새우,꽃새우(독새우),장조림','113019060_새우,꽃새우(독새우),젓','113020000_새우,닭새우','113021000_새우,대하,생것','113021010_새우,대하,말린것','113022000_새우,물렁가시붉은새우','113023000_새우,물새우','113024000_새우,보리새우,생것','113024010_새우,보리새우,삶은것','113025000_새우,부채새우','113026000_새우,잔새우,생것','113026010_새우,잔새우,말린것','113027000_새우,젓새우,생것','113027010_새우,젓새우,말린것','113027020_새우,젓새우,조림','113027030_새우,젓새우,젓(백하젓)','113028000_새우,중하(시바새우),생것','113028010_새우,중하(시바새우),자건품','113028020_새우,중하(시바새우),조미건품','113028030_새우,중하(시바새우),젓','113028040_새우,중하(시바새우),통조림','113029000_새우,징거미새우','113030000_새우,철모새우','113031000_새우,펄닭새우','113032000_새우,껍질','113033000_새우,젓','113033010_새우,젓(육젓)','113033030_새우,젓(토굴육젓)','113033020_새우,젓(추젓)','113033040_새우,젓(토굴추젓)','113033050_새우,젓(토굴동백하)','113033060_새우,젓(토굴대때기)','113033070_새우,젓(토굴오젓)','113034000_새우,민물새우,토하젓','113035010_새우튀김,냉동','114001000_갑오징어,생것','114001010_갑오징어,말린것','114002000_꼴뚜기,생것','114002010_꼴뚜기,자건품','114002020_꼴뚜기,젓','114002030_꼴뚜기,젓,양념','114003000_불동꼴뚜기,생것','114003010_불동꼴뚜기,삶은것','114003020_불동꼴뚜기,조림','114003030_불동꼴뚜기,훈제품','114004010_낙지','114004020_세발낙지','114005000_문어,생것','114005010_문어,말린것','114005020_문어,삶은것','114006000_문어,백문어,생것','114006010_문어,백문어,말린것','114007000_문어,피문어,생것','114007010_문어,피문어,말린것','114008000_오징어,생것','114008010_오징어,냉동품','114008020_오징어,말린것','114008030_오징어,구운것','114008040_오징어,삶은것','114008050_오징어,튀긴것','114008060_오징어,엿조림','114008070_오징어,젓,오징어젓','114008080_오징어,젓,오징어젓,양념','114008090_오징어,젓,내장젓','114008100_오징어,조미구이','114008110_오징어,통조림','114008120_오징어,포,조미한것','114008130_오징어채,조미','114008140_오징어,훈제품','114008150_오징어,훈제조미품','114008160_오징어숯불구이(포),한성기업','114008170_오징어튀김,냉동','114008180_오징어링튀김,한성기업','114008190_오징어볼튀김,냉동','114009000_우렁쉥이(멍게),생것,자연산','114009010_우렁쉥이(멍게),생것,양식산','114010000_끈멍게(돌멍게)','114011000_붉은멍게','114012000_주꾸미','114013000_한치','115001000_개불','115002000_군소','115003000_미더덕','115004000_크릴,생것','115004010_크릴,삶은것','115004020_크릴,즙','115004030_크릴,패이스트','115005000_풍선군소','115006000_해삼,생것','115006010_해삼,말린것','115006020_해삼,내장젓','115007000_해파리,생것','115007010_죽','115007020_해파리,젓','116001000_어묵,게맛살','116001010_게맛살,생생게맛살,진주햄','116001020_게맛살,싱싱맛살,동원산업','116001030_집게맛살,냉동','116002010_국,북어국,인스턴트,건조','116002020_국,북어국,오뚜기','116003010_이유식,생선죽','116004000_생선튀김','116005000_아가미젓','116006000_어단','116007000_어란젓','116008010_어묵,찜','116008020_어묵,배소','116008030_어묵,튀김','116009000_어묵,어육소시지','116010000_어육햄,생것','116010010_어육햄,구운것','116010020_어육햄,찐것','116010030_어육햄,튀긴것','116011000_어육햄,어육혼합핫도그소시지','116012010_해물찌개재료,냉동','117001000_샌드위치,생선','117001010_샌드위치,생선(패스트푸드)','117001020_샌드위치,참치,서브웨이','117001030_샌드위치,BK빅피쉬샌드위치,버거킹','117002000_버거,휘쉬버거(패스트푸드)','117002010_버거,새우버거,롯데리아','117002020_버거,휘쉬필레버거(웬디스)','117002030_버거,휘시필레버거(맥도날드)','117003010_오징어버거,냉동','121001000_갈래곰보','121002010_곰피,말린것','121002020_곰피,분말','121003000_김(참김),생것','121003010_김(참김),마른김','121003020_김(참김),마른김,상급품','121003030_김(참김),마른김,중급품','121003040_김(참김),마른김,하급품','121003050_김(참김),구운것','121003060_김(참김),맛김','121003070_김(참김),간장조림','121003080_김(참김),조선김','121003090_김(참김),초밥김','121003100_김(참김),김밥용김','121003130_김(참김),돌김','121003110_김,둥근돌김','121003120_김,양반김,동원산업','121004000_꼬시래기','121005000_다시마,생것','121005010_다시마,말린것','121005020_다시마,말린것,긴다시마','121005030_다시마,말린것,삼석다시마','121005040_다시마,말린것,이구다시마','121005050_다시마,다시마말이','121005060_다시마,조림','121005070_다시마,염장품','121005080_다시마,튀각','121006010_대황,말린것','121007010_뜸부기,말린것','121008010_매생이,말린것','121009000_모자반,생것','121009010_모자반,말린것','121009020_모자반,분말','121009030_모자반,염장품','121010000_미역,생것,자연산','121010010_미역,생것,양식산','121010020_미역,말린것','121010030_미역,분말','121010040_미역,염장미역','121010050_미역,튀각','121010060_미역,줄기,생것','121010070_미역,줄기,염장품','121010080_미역,물미역,말린것','121010090_국,미역국,인스턴트,건조','121011000_불등가사리','121012000_불등풀가사리','121013000_비단풀','121014010_석목,말린것','121015000_순채','121016000_우뭇가사리,생것','121016010_우뭇가사리,우무','121016020_우뭇가사리,한천','121017010_진두발,말린것','121018000_청각,생것','121018010_청각,말린것','121019010_청태,말린것','121020010_클로렐라,말린것','121021000_톳,생것','121021010_톳,말린것','121021020_톳,자건품','121022000_파래,생것','121022010_파래,말린것','121022020_파래,가시파래,말린것','121022030_파래,갈파래,말린것','121022040_파래,납작파래,생것','121022050_파래,창자파래,말린것','121022060_파래,흩파래,말린것','131001000_우유,생유','131002000_우유,보통우유','131002010_우유,남양우유','131002020_우유,남양아인슈타인IQ','131002030_우유,남양3.4우유훼미리밀크','131002040_우유,로히트-1,파스퇴르유업','131002050_우유,매일1등급우유','131002060_우유,매일우유','131002070_우유,밀큐7,빙그레','131002080_우유,밀큐패밀리우유,빙그레','131002090_우유,생큐4.3,빙그레','131002100_우유,아인슈타인,남양유업','131002110_우유,연세우유','131002120_우유,튼튼우유,해태유업','131002130_우유,파스퇴르후레쉬우유','131003000_우유,가공우유,농후','131003010_우유,가공우유,보통','131003020_우유,가공우유,고지방','131003030_우유,가공우유,저지방','131003040_우유,가공우유,저지방,(쵸코)','131003050_우유,가공우유,저지방,(커피)','131003060_우유,가공우유,탈지','131003140_우유,고칼슘우유','131003070_우유,밀큐딸기맛우유,빙그레','131003080_우유,빙그레바나나맛우유,빙그레','131003090_우유,밀큐커피우유,빙그레','131003100_우유,고칼슘우유,롯데햄우유','131003110_우유,뼈로가는칼슘우유,매일유업','131003150_우유,딸기','131003160_우유,바나나','131003120_우유,쵸콜렛','131003170_우유,커피','131003130_우유,밀큐초콜렛우유,빙그레','131004000_연유,무가당','131004010_연유,가당','131004020_연유,가당탈지','131005000_분유,전지분유','131005010_분유,조제분유','131005020_분유,조제분유1','131005030_분유,조제분유2','131005040_분유,조제분유3','131005050_분유,조제분유,1단계,매일','131005060_분유,조제분유,2단계,매일','131005070_분유,조제분유,3단계,매일','131005080_이유식,매일맘마(조제분유)D&A-1','131005090_이유식,매일맘마(조제분유)D&A-2','131005100_이유식,매일맘마(조제분유)D&A-3','131005110_이유식,매일맘마(조제분유),오메가-1','131005120_이유식,매일맘마(조제분유),오메가-2','131005130_이유식,매일맘마(조제분유),오메가-3','131005140_분유,조제분유,매일맘마IQ,매일','131005150_분유,조제분유,엡솔루트1단계,매일','131005160_분유,조제분유,엡솔루트2단계,매일','131005170_분유,조제분유,엡솔루트3단계,매일','131005180_분유,조제분유,엡솔루트4단계,매일','131008000_분유,조제분유,프리미엄궁초유의사랑1,매일유업','131008010_분유,조제분유,프리미엄궁초유의사랑2,매일유업','131008020_분유,조제분유,앱솔루트궁초유의비밀3,매일유업','131008030_분유,조제분유,앱솔루트궁초유의비밀4,매일유업','131008040_분유,조제분유,유기농산양분유1단계,매일유업','131008050_분유,조제분유,유기농산양분유2단계,매일유업','131008060_분유,조제분유,프리미엄명작1,매일유업','131008070_분유,조제분유,프리미엄명작2,매일유업','131008080_분유,조제분유,앱솔루트명작3,매일유업','131008090_분유,조제분유,앱솔루트명작4,매일유업','131008100_분유,조제분유,매일분유1,매일유업','131008110_분유,조제분유,매일분유2,매일유업','131008120_분유,조제분유,매일맘마QT3,매일유업','131008130_분유,조제분유,매일맘마QT4,매일유업','131008140_특수분유,베이비웰아기설사,매일유업','131008150_특수분유,베이비웰아토케어,매일유업','131008160_특수분유,베이비웰HA,매일유업','131008170_특수분유,베이비웰프리미,매일유업','131008180_특수분유,베이비웰LP,매일유업','131008190_특수분유,베이비웰소이,매일유업','131005190_이유식,아기사랑1,남양유업','131005200_이유식,아기사랑2,남양유업','131005210_이유식,점프아기사랑3,남양유업','131005220_이유식,점프아기사랑4,남양유업','131005230_이유식,임페리얼에스1,남양유업','131005240_이유식,임페리얼에스2,남양유업','131005250_이유식,점프임페리얼에스3,남양유업','131005260_이유식,점프임페리얼에스4,남양유업','131005270_분유,조제분유,프리미엄XO1,남양유업','131005280_분유,조제분유,프리미엄XO2,남양유업','131005290_분유,조제분유,임페리얼드림XO3,남양유업','131005300_분유,조제분유,임페리얼드림XO4,남양유업','131005310_특수분유,호프닥터1단계,남양유업','131005320_이유식,호프알레르기,남양유업','131009010_특수분유,호프알레기1단계,남양유업','131009020_특수분유,호프알레기2단계,남양유업','131009030_분유,조제분유,프리미엄분유XO액상형1단계,남양유업','131009040_분유,조제분유,프리미엄분유XO액상형2단계,남양유업','131009050_분유,조제분유,프리미엄분유XO액상형3단계,남양유업','131009060_분유,조제분유,프리미엄분유XO액상형4단계,남양유업','131009070_분유,조제분유,초유프리미엄엑스트라모멘트1단계,남양유업','131009080_분유,조제분유,초유프리미엄엑스트라모멘트2단계,남양유업','131009090_분유,조제분유,아이엠마더3단계,남양유업','131009100_분유,조제분유,아이엠마더4단계,남양유업','131009110_분유,조제분유,남양분유사이언스1,남양유업','131009120_분유,조제분유,남양분유사이언스2,남양유업','131009130_분유,조제분유,아기사랑사이언스3,남양유업','131009140_분유,조제분유,아기사랑사이언스4,남양유업','131009150_분유,조제분유,남양분유秀1,남양유업','131009160_분유,조제분유,남양분유秀2,남양유업','131009170_분유,조제분유,아기사랑秀3,남양유업','131009180_분유,조제분유,아기사랑秀4,남양유업','131009190_분유,조제분유,남양유기농분유1단계,남양유업','131009200_분유,조제분유,남양유기농분유2단계,남양유업','131009210_분유,조제분유,마더스오가닉3단계,남양유업','131009220_분유,조제분유,마더스오가닉4단계,남양유업','131009230_이유식,남양키플러스-바닐라,남양유업','131009240_이유식,남양키플러스-초코,남양유업','131009250_아기두유,아기랑콩이랑1단계,남양유업','131009260_아기두유,아기랑콩이랑2단계,남양유업','131009270_아기두유,아기랑콩이랑3단계,남양유업','131009280_아기두유,아기랑콩이랑4단계,남양유업','131005330_분유,조제분유,프리미엄분유1단계,일동후디스','131005340_분유,조제분유,프리미엄분유2단계,일동후디스','131005350_분유,조제분유,프리미엄분유3단계,일동후디스','131005360_분유,조제분유,후디스투루맘4단계,일동후디스','131010010_분유,조제분유,후디스산양분유1단계,일동후디스','131010020_분유,조제분유,후디스산양분유2단계,일동후디스','131010030_분유,조제분유,후디스산양유아식3단계,일동후디스','131010040_분유,조제분유,후디스산양유아식4단계,일동후디스','131010050_분유,조제분유,슈퍼프리미엄1단계,일동후디스','131010060_분유,조제분유,슈퍼프리미엄2단계,일동후디스','131010070_분유,조제분유,슈퍼프리미엄3단계,일동후디스','131010080_분유,조제분유,트루맘뉴클래스4단계,일동후디스','131010090_특수분유,트루맘쏘이,일동후디스','131010100_특수분유,New유기농닥터,일동후디스','131010110_분유,조제분유,프리미엄분유위드맘1단계,파스퇴르','131010120_분유,조제분유,프리미엄분유위드맘2단계,파스퇴르','131010130_분유,조제분유,프리미엄위드맘3단계,파스퇴르','131010140_분유,조제분유,누셍산양분유1단계,파스퇴르','131010150_분유,조제분유,누셍산양분유2단계,파스퇴르','131010160_분유,조제분유,누셍산양분유3단계,파스퇴르','131011070_분유,조제분유,오가닉분유1단계,파스퇴르','131011080_분유,조제분유,누셍오가닉2단계,파스퇴르','131011090_분유,조제분유,누셍오가닉3단계,파스퇴르','131011100_분유,조제분유,에메랄드분유1단계,파스퇴르','131011110_분유,조제분유,다이아몬드2단계,파스퇴르','131011120_분유,조제분유,사파이어트윙클3단계,파스퇴르','131005370_분유,탈지분유','131006000_산양유(염소유)','131007000_모유','132001000_크림,20%유지방','132001010_크림,38%유지방','132002000_크림,45%유지방','132003000_크림,경휘핑','132004000_크림,중휘핑','132005000_크림,커피용','132006000_크림,하프앤하프','132008000_크림,휘핑크림','132007000_분말크림,유지방성','133001000_아이스밀크','133001010_아이스밀크,바닐라','133002010_아이스크림,아이스크림,TCBY,트릿트','133002020_아이스크림,무설탕,탈지한얼린요구르트,TCBY트릿트','133002030_아이스크림,쿠키&크림(그랜드바)','133002040_아이스크림,누크바,롯데제과','133002050_아이스크림,더블비안코,롯데제과','133002060_아이스크림,맥스,롯데제과','133002070_아이스크림,셀렉션,롯데제과','133002080_아이스크림,스크류바,롯데제과','133002090_아이스크림,월드콘,롯데제과','133002100_아이스크림,조안나,롯데제과','133002110_아이스크림,12%유지방','133002120_아이스크림,8%유지방','133003000_아이스크림,바닐라','133003010_아이스크림,소프트(패스트푸드)','133003020_아이스크림,소프트,바닐라','133003030_아이스크림,바닐라아이스크림(콘)','133003040_아이스크림,라스프베리바닐라스위리,드라이어스아이스크림','133003050_아이스크림,바닐라(얼린요구르트),드라이어스아이스크림','133003060_아이스크림,바닐라,드라이어스아이스크림','133003070_아이스크림,바닐라,하겐다즈','133003080_아이스크림,바닐라&밀크초콜렛,하겐다즈','133004000_아이스크림,딸기','133004010_아이스크림,딸기썬대','133004020_아이스크림,딸기썬대,맥도날드','133004030_아이스크림,딸기&크림,드라이어스아이스크림','133004040_아이스크림,딸기,드라이어스아이스크림','133004050_아이스크림,딸기,하겐다즈','133005000_아이스크림,쵸콜렛','133005010_아이스크림,초콜렛&다크초콜렛,하겐다즈','133005020_아이스크림,초콜렛&칩,드라이어스아이스크림','133005030_아이스크림,초콜렛아몬드퍼지(그랜드바),드라이어스아이스크림','133005040_아이스크림,초콜렛,하겐다즈','133006010_아이스크림,모카퍼지,드라이어스아이스크림','133006020_아이스크림,버터피칸,하겐다즈','133006030_아이스크림,커피모카칩,하겐다즈','133006040_아이스크림,커피퍼지,드라이어스아이스크림','133006050_아이스크림,탈지한얼린요구르트,TCBY트릿트','133006060_아이스크림,피넛버터컵(그랜드),드라이어스아이스크림','133006070_아이스크림,캐러멜썬대,맥도날드','133006080_아이스크림,콘,맥도날드','133006090_아이스크림,핫퍼지썬대,맥도날드','133006100_아이스크림,임페리얼골드(호두),롯데제과','134001000_샤베트','134002000_쉐이크,딸기','134002010_쉐이크,딸기(패스트푸드)','134002020_쉐이크,딸기,맥도날드','134002030_쉐이크,딸기쉐이크,시럽첨가,버거킹','134003000_쉐이크,바닐라','134003010_쉐이크,바닐라(패스트푸드)','134003020_쉐이크,바닐라쉐이크,롯데리아','134003030_쉐이크,바닐라쉐이크,맥도날드','134003040_쉐이크,바닐라쉐이크,버거킹','134004000_쉐이크,쵸코렛','134004010_쉐이크,초콜렛쉐이크,맥도날드','134004020_쉐이크,초콜렛쉐이크,버거킹','134004030_쉐이크,쵸콜렛(패스트푸드)','135001000_요구르트,액상','135001010_요구르트,남양요구르트','135001020_요구르트,매일요구르트','135001030_요구르트,매일GG','135001040_요구르트,야쿠르트에이스,한국야쿠르트','135001050_요구르트,야쿠르트,한국야쿠르트','135001060_요구르트,불가리스(딸기),남양유업','135001070_요구르트,비피더스요구르트(딸기),매일유업','135001080_요구르트,딸기요구르트,파스퇴르유업','135001090_요구르트,메치니코프(복숭아),한국야쿠르트','135001100_요구르트,DHA요구르트(사과),파스퇴르유업','135001110_요구르트,메치니코프(사과),한국야쿠르트','135001120_요구르트,불가리스(사과),남양유업','135001130_요구르트,뿌요(사과),한국야쿠르트','135001140_요구르트,비피더스요구르트(사과),매일유업','135001150_요구르트,요고요고사과,해태유업','135001160_요구르트,장에는GG(사과)','135001170_요구르트,메치니코프(포도),한국야쿠르트','135001180_요구르트,불가리스(포도),남양유업','135001190_요구르트,장에는GG(포도)','135001200_요구르트,포도요구르트,파스퇴르유업','135002000_요구르트,호상','135002010_요구르트,호상,딸기','135002020_요구르트,호상,슈퍼100(딸기),한국야쿠르트','135002030_요구르트,호상,슈퍼100(복숭아),한국야쿠르트','135002060_요구르트,호상,우유,무가당','135002040_요구르트,호상,탈지유','135002050_요구르트,호상,탈지유,가당','136001000_치즈,자연치즈','136001010_치즈,체다','136002000_치즈,모짜렐라','136003000_치즈,카테지','136004000_치즈,가공치즈','136001020_치즈,크림','136001030_치즈,파마산','136005010_치즈,남양로젠하임치즈','136005020_치즈,앙팡치즈,서울우유','136006000_치즈스틱,롯데리아','136007000_카제인','141001000_닭기름','141002000_돼지기름','141003000_버터','141003010_버터,서울우유','142016000_복숭아씨기름','141004000_생선기름','141005000_쇠기름','141006000_양기름','142001000_들기름','142002000_땅콩기름','142003000_땅콩버터','142003010_땅콩버터,청크','142003020_땅콩버터,크림','142004000_마가린','142004010_마가린,식물성마아가린,대상','142005000_면실유','142006000_분말크림,식물성','142007000_쇼트닝','142008000_쌀겨기름','142009000_옥수수기름','142010000_올리브유','142010010_올리브유,국산','142010020_올리브유,외산','142011000_유채기름','142017000_홍화유','142012000_참기름','142013000_콩기름','142014000_팜유','142015000_커피프림,가루','142015030_커피크림,액상,유지방','142015040_커피크림,액상,식물성지방','142015010_프림,동서프리마','142015020_프림,커피메이트골드,한국네슬레','142018000_해바라기유','142019000_혼합식물성유','151001000_식혜','151001010_식혜,캔','151002000_이온음료','151002010_이온음료,게토레이피치쿨러,제일제당','151003000_탄산음료,과일탄산음료','151003010_레모네이드주스','151003020_레모네이드,웬디스','151003030_분말청량음료','151003040_탄산음료,과일탄산음료,포도소다','151003050_탄산음료,과일탄산음료,레몬라임소다','151003060_탄산음료,과일탄산음료,오렌지소다','151003070_탄산음료,과일탄산음료,크림소다','151003090_탄산음료,과일탄산음료,파인애플소다','151003080_환타,그레이프환타','151003100_소다,클럽소다','151004020_탄산음료,소다(탄산)수','151004000_탄산음료,진저에일','151004010_마운틴듀','151005000_탄산음료,사이다','151005010_탄산음료,사이다,롯데리아','151006000_탄산음료,콜라','151006010_탄산음료,콜라,롯데리아','151006020_탄산음료,콜라,루트비어','151006030_탄산음료,콜라,웬디스','151006160_탄산음료,콜라,저칼로리콜라','151006040_탄산음료,콜라,체리콕','151006050_탄산음료,콜라,코카콜라','151006060_탄산음료,콜라,코카콜라,클래식','151006070_탄산음료,콜라,펩시라이트','151006080_탄산음료,콜라,펩시콜라','151006090_탄산음료,콜라,다이어트콕,코카콜라','151006100_탄산음료,콜라,다이어트펩시','151006110_탄산음료,콜라,다이어트콜라,웬디스','151006120_탄산음료,콜라,다이어트스프라이트','151006130_탄산음료,콜라,다이어트슬라이스','151006140_탄산음료,콜라,다이어트체리콕','151006150_탄산음료,콜라,저칼로리,아스파탐첨가','151007000_토닉워터','151008000_커피,커피','151008010_커피,원두','151008020_커피,분말,인스턴트','151008030_커피,커피가루','151008040_커피,분말,무카페인,인스턴트','151008071_커피,인스턴트커피용액','151008050_커피,침출액','151008060_커피,캔','151008070_커피,커피음료','151008080_커피,네스카페클래식커피믹스,한국네슬레','151008090_커피,네스카페클래식,한국네슬레','151008100_커피,롯데리아','151008110_커피,맥스웰캔커피카페오레,동서식품','151008120_커피,맥스웰커피믹스,동서식품','151008130_커피,맥스웰화인,동서식품','151008140_커피,맥심디카페인커피믹스,동서식품','151008150_커피,맥심모카골드커피믹스,동서식품','151008160_커피,맥심,동서식품','151008170_커피,맥심커피믹스,동서식품','151008180_커피,무카페인커피,웬디스','151008190_커피,웬디스','151008200_커피,테이스터스초이스,한국네슬레','151008210_커피,테이스터스쵸이스디카페인커피믹스,한국네슬레','151008220_커피,테이스터스쵸이스커피믹스,한국네슬레','151009000_코코아','151009010_코코아가루','151009020_코코아믹서','151009030_코코아,우유','151009011_코코아,코코아차가루(코코아20%)','151009040_코코아,핫쵸콜렛(패스트푸드)','151009050_코코아,핫쵸코,버거킹','151009060_코코아,핫쵸코,웬디스','151010000_드링크,영비천에스,일양약품','152001000_감잎차,분말','152002000_계피차,분말','152003000_결명자차,종자','152004000_구기자차,종자','152005000_녹차','152005010_녹차,분말','152005020_녹차,침출액','152006000_다시마차','152022000_도라지차','152023000_돌나물건강음료','152007000_두충차,분말','152008000_보리차,보리','152008010_보리차,침출액','152008020_보리차,동서식품','152024000_상지차,분말','152009000_생강차,분말','152010000_쌍화차,분말','152011000_오미자차,말린것','152012000_옥수수차,동서식품','152013000_우롱차,분말','152013010_우롱차,침출액','152013020_우롱차,캔','152014000_유자차,분말','152015000_율무차,분말','152005030_인동녹차잎,말린것','152016000_인삼차,과립','152017000_치커리차,말린것','152018000_컴프리차,분말','152019000_현미녹차,차(건조품)','152019010_현미녹차,침출액','152019030_현미녹차,티백','152019020_현미녹차,동서식품','152020000_홍삼차,분말','152021040_홍차,티백','152021000_홍차,차','152021010_홍차,침출액','152021020_홍차,네스티,한국네슬레','152021030_홍차,캔','152021050_홍차,냉홍차,레몬맛','153001000_럼','153001010_럼,40도','153003000_막걸리','153004000_매실주,13도','153004010_돌복숭아주,13도','153005000_맥주','153005010_맥주,생맥주','153005020_맥주,합성맥주','153005040_맥주,흑맥주(4.2도)','153005030_맥주,흑맥주','153006000_보드카,40도','153006010_보드카,50도','153007010_브랜디,특급','153007011_브랜디,특급,40도','153007020_브랜디,1급','153007030_브랜디,2급','153008000_샴페인','153009000_소주','153010000_슬라이스','153004020_오가피주,13도','153011000_위스키,1급','153011010_위스키,2급','153011020_위스키,특급','153012000_진,47도','153012030_드라이진,47도','153012010_드라이진,38도','153012020_진,37도','153013000_청주','153014010_칵테일,데킬라선라이즈','153014020_칵테일,마티니','153014030_칵테일,맨하탄','153014040_칵테일,스크류드라이버','153014050_칵테일,위스키사우어','153014060_칵테일,진토닉','153014070_칵테일,피나콜라다','153014080_칵테일,페퍼민트','153014100_칵테일,데이커리','153014110_칵테일,버번앤소다','153014120_칵테일,블러드메리','153014130_칵테일,톰칼린스','153015010_포도주,단포도주','153015020_포도주,백포도주','153015030_포도주,적포도주','161001010_간장,왜간장','161001020_간장,진간장금F3,샘표식품','161001030_간장,진간장S,샘표식품','161001040_간장,재래간장','161001050_간장,양념간장','161001060_간장,양조간장','161001070_간장,양조간장501S,샘표식품','161001080_간장,양조간장701,샘표식품','161001090_간장,죽염간장','161002010_겨자,분말','161002020_겨자,페이스트','161003000_계피분말','161004010_고추가루','161004020_물고추','161004030_실고추','161005000_고추장','161005040_고추장,개량식','161005050_고추장,전통고추장','161005010_고추장,찹쌀맛고추장,대림수산','161005020_초고추장','161005030_고추장,가루고추장','161006000_깨소금','161007000_굴소스','161008000_돈까스소스','161009010_나토','161009020_된장,가루된장','161009110_된장,개량식(양조된장)','161009030_된장,된장','161009040_된장,일본된장','161009050_된장,쌈된장','161009060_된장,한식된장','161009070_된장,보리된장','161009080_된장,일반된장,대림수산','161009090_된장,찌개된장,대림수산','161009100_혼합장(쌈장)','161043000_라면스프','161010010_마늘,분말','161010020_마늘,페이스트','161011010_마요네즈','161011020_마요네즈,난황','161011030_마요네즈,대상','161011040_마요네즈,동원산업','161011050_마요네즈,전란','161012000_미림','161013010_브라운그레이비','161013020_브라운그레이비,물을가한것','161014010_샐러드드레싱,사우전드아일랜드','161014020_샐러드드레싱,이탈리안','161014030_샐러드드레싱,프렌치','161014040_샐러드드레싱,분리형','161014050_샐러드드레싱,유화형','161015010_생강,분말','161015020_생강,페이스트','161016010_소금,식염','161016020_소금,일반염','161016030_소금,고운소금','161016040_소금,굵은소금','161016050_소금,볶은것','161016060_소금,죽염','161017010_스파게티소스,분말','161018000_식초','161018010_식초,사과식초','161018020_식초,과실식초','161018030_식초,과일식초,감식초','161018070_식초,과일식초,배식초','161018080_식초,과일식초,사과식초','161018090_식초,과일식초,포도식초','161018040_식초,쌀식초','161018100_식초,알로에식초','161018050_식초,양조식초','161018060_식초,현미식초','161019000_양파분말','161020010_양념,다담낙지볶음양념,제일제당','161020020_양념,다담오징어볶음양념,제일제당','161020030_양념,다담해물탕양념,제일제당','161020040_양념,다담매운탕양념,제일제당','161021000_양념통닭소스','161022010_고추냉이(와사비),분말','161022020_고추냉이(와사비),페이스트','161023000_올스파이스분말','161024000_우스터소스','161025000_육두구,분말','161026000_조미분','161027010_다시다,멸치다시다','161027020_분말조미료,멸치','161027030_다시다,쇠고기다시다','161027040_분말조미료,쇠고기','161044000_산초가루','161028000_정향분말','161029000_조미소(미원)','161030010_짜장','161030020_짜장(춘장)','161030030_짜장,디럭스짜장,대상','161030040_짜장,레또쇠고기짜장,제일제당','161030050_짜장,레또유니짜장,제일제당','161031010_청국장,생것','161031020_청국장,분말','161032000_칠리분말','161032010_칠리,웬디스','161033000_카레분말','161033010_카레소스,분말','161033020_카레,레토르트','161033030_카레,통조림','161033040_카레,디럭스카레,대상','161033050_카레,레또핫카레,제일제당','161033060_카레,바몬드카레,오뚜기','161033070_카레,본카레(매운맛),대상','161033080_카레,본카레(순한맛),대상','161033090_카레,오뚜기카레','161034000_템페','161035000_타르타르소스','161045000_타임가루','161036010_토마토소스,통조림','161036020_토마토소스','161036030_토마토케찹','161036040_케찹,대상','161036050_케찹,동원산업','161036060_케찹,센스케찹,동원산업','161037010_파슬리,말린것','161038010_패프리카분말','161039000_핫소스','161040010_화이트소스,분말','161041000_후추,분말','161041010_후추,흰색','161041020_후추,검은색','161041030_후추,소스','161042000_머스터드소스','171001000_고로쇠나무(수액)','171010000_귀뚜라미,볶은것','171011000_누에동충하초,말린것','171011010_누에가루','171012000_녹용,상대','171012010_녹용,중대','171013000_대나무추출액','171014000_돌복숭아엑기스','171002000_메뚜기,말린것','171015000_미나리엑기스','171003000_번데기,말린것','171003010_번데기,통조림','171016000_뽕잎가루','171004030_삼백초,말린것','171004010_삼백초,잎','171004020_삼백초,줄기','171017000_선인장,토종,줄기','171017010_선인장,토종,열매','171017020_선인장,토종,꽃','171017030_선인장,제주선인장(용두과),줄기','171017040_선인장,제주선인장(용두과),열매','171005000_솔잎','171005010_솔잎추출액','171006000_송화가루','171018000_수세미수액','171019000_식용달팽이,통조림','171020000_올리브잎,말린것','171021000_월계수잎,말린것','171007010_인삼,수삼','171007020_인삼,백삼,말린것','171007030_인삼,홍삼,뿌리,말린것','171007040_인삼,홍삼,엑기스','171022000_참나무수액','171023000_치자꽃','171008010_팽창제,베이킹파우더,NaAlSO4','171008020_팽창제,베이킹파우더,인산','171009000_팽창제,효모,생것','171009010_팽창제,효모,말린것','171024000_프로폴리스,중부지역산','171024010_프로폴리스,남부지역산','171024020_프로폴리스,제주지역산','171025000_허브,말린것,로즈마리','171025010_허브,말린것,라벤다','171025020_허브,말린것,민트','171025030_허브,말린것,골든세이지','171025040_허브,말린것,코리아타임']; 

var availableTags2 =['115007010_죽','153001000_럼','11008000_메조','11029000_차조','14001000_건빵','14020000_와플','14021000_쨈빵','14023000_팥빵','15007000_피자','16001080_튀밥','16002000_산자','16003000_유과','16005000_약과','16007170_쿠키','16010000_나초','16012000_스낵','23009000_곤약','31001000_과당','32008000_젤리','43008000_두유','51007000_때죽','51009000_마름','51019000_잣죽','52006000_삼씨','61012000_고수','61026000_락교','61028000_냉이','61032000_다채','61033000_달래','61050000_로카','61177000_쌈추','61109000_양하','61115000_열무','61182000_전호','61144000_케일','61147000_콩잎','61154000_향채','61157000_홍무','61160000_휴잎','81004000_다래','81053000_리치','81011000_망고','81015000_모과','81018030_돌배','81026000_석류','81031000_앵두','81038000_으름','81043000_키위','81044000_탱자','94013000_자라','111031000_누치','111045000_도치','111059000_메기','111070000_민태','111079000_베스','111083000_병어','111090000_부세','111106000_샛멸','111108000_성대','111123000_양태','111127000_열기','111131000_우럭','111132000_웅어','111141000_장대','111142000_장치','111150000_준치','111161000_초어','111162000_통치','111169000_홍어','111170000_홍치','111175000_황어','112012010_꼬막','112016000_동죽','112034000_수랑','112038000_우렁','113012000_방게','114004010_낙지','114013000_한치','115001000_개불','115002000_군소','116006000_어단','121015000_순채','131007000_모유','141003000_버터','142014000_팜유','151001000_식혜','152005000_녹차','153005000_맥주','153009000_소주','153013000_청주','161009010_나토','161012000_미림','161018000_식초','161030010_짜장','161034000_템페','171005000_솔잎','11001000_고량미','11007000_메밀묵','11016000_엿기름','11028000_차수수','12012000_누룽지','13014000_수제비','14003000_크로켓','14004000_곰보빵','14009000_모카빵','14016000_슈크림','14022000_크림빵','14029000_모닝빵','16006000_모나카','16007010_비스켓','16009010_쌀과자','18002000_이유식','23007000_칡뿌리','23010000_양장피','31012000_포도당','32009010_카라멜','33002000_초콜렛','41010000_청대콩','41011000_청콩단','42006010_콩자반','52011010_머루씨','52002010_참깨죽','61005010_갯나물','61007010_겨자무','61027000_날개콩','61041010_돌산갓','61055000_메밀순','61056000_신선초','61086000_셀러리','61110000_어수리','61125000_원추리','61127000_자운영','61181000_적겨자','61133000_진달래','61184000_칠면초','61152000_파슬리','61189000_홍화잎','81057000_한라봉','81052000_두리안','81024000_산딸기','81054000_산수유','81029000_시벅혼','81056000_코코넛','81046000_파파야','93008000_오골계','93014000_토종닭','94001010_개고기','94005000_꿩고기','94017000_하이스','95014010_핫도그','111002000_가물치','111004000_가오리','111008000_강달이','111009000_강준치','111016000_긴따루','111018000_꺽저기','111023000_납지리','111028000_노래미','111029000_놀래기','111033000_눈볼대','111034000_눈양태','111036000_능성어','111038000_달강어','111039000_달고기','111042000_도다리','111049000_동사리','111050000_동자개','111054000_만새기','111057000_망상어','111058000_매퉁이','111065000_물메기','111073000_백련어','111078000_베로치','111080000_벤자리','111081000_별성대','111084000_보구치','111089000_부르길','111091000_부시리','111092000_붉바리','111100000_산천어','111104000_새다래','111114000_쏨뱅이','111115000_쑤기미','111116000_쑥감펭','111121000_애꼬치','111133000_은대구','111134000_은삼치','111136000_인상어','111139000_장갱이','111146000_점강펭','111152000_줄삼치','111157000_참마자','111158000_참붕어','111159000_청새치','111164000_평삼치','111166000_풀망둑','111167000_피라미','111176000_히메치','112006010_개조개','112007010_갱조개','112014010_대수리','112017000_떡조개','112019000_맛조개','112030000_살조개','112031000_새꼬막','112039000_위고둥','112052000_키조개','114012000_주꾸미','115003000_미더덕','116007000_어란젓','121013000_비단풀','134001000_샤베트','136007000_카제인','141001000_닭기름','141005000_쇠기름','141006000_양기름','142001000_들기름','142004000_마가린','142005000_면실유','142007000_쇼트닝','142017000_홍화유','142012000_참기름','142013000_콩기름','151009000_코코아','153003000_막걸리','153008000_샴페인','161004020_물고추','161004030_실고추','161005000_고추장','161006000_깨소금','161007000_굴소스','161026000_조미분','161039000_핫소스','171023000_치자꽃','12005020_찹쌀가루','13004000_녹두국수','13013000_메밀냉면','14002000_건포도빵','14013000_불란서빵','14024000_팬케이크','15003000_커스터드','16009020_찹쌀과자','16013010_쵸코파이','23004000_돼지감자','31002000_꿀, 꿀','31003000_로얄젤리','51004000_도토리묵','51023000_코코넛수','61008010_고구마잎','61009010_고들빼기','61163000_구지뽕잎','61025000_나라쓰게','61044010_두메부추','61052070_마늘쑥잼','61170000_사탕수수','61084030_생강넥타','61171000_솔장다리','61172000_세발나물','61098000_쑥부쟁이','61104000_아이비카','61114000_열대비름','61180000_왕호장잎','81003100_귤, 잼','81012030_매실음료','81030000_아보카도','81032000_서양수박','81033000_엘더베리','94014000_참새고기','111003000_가시망둑','111006000_갈전갱이','111012000_괴도라치','111013000_군평선어','111015000_기름종개','111020000_꽁지양태','111025000_네동가리','111027000_노랑촉수','111037000_다금바리','111040110_붉은대구','111046000_도화양태','111047000_독가시치','111048000_동동갈치','111052000_드렁허리','111053000_등가시치','111063000_모래무지','111064000_몽치다래','111066000_물치다래','111068000_민달고기','111077000_베도라치','111087000_볼기우럭','111093000_붉은메기','111096000_바가사리','111097000_빨간횟대','111098000_빨강부치','111111000_쌍동가리','111112000_쌍뿔달재','111130000_우각바리','111151000_줄노래미','111153000_줄전갱이','111154000_쥐노래미','111163000_틸라피아','111171000_황놀래기','111173000_황매퉁이','112013010_나팔고둥','112021000_모시조개','112022000_물레고둥','112024000_바다우렁','112027000_북방대합','112029000_비단고둥','112035000_오분자기','112047000_진주조개','112051000_큰논우렁','112053000_털탑고둥','112055000_피뿔고둥','114004020_세발낙지','114011000_붉은멍게','115005000_풍선군소','116004000_생선튀김','116005000_아가미젓','121001000_갈래곰보','121004000_꼬시래기','141002000_돼지기름','141004000_생선기름','142002000_땅콩기름','142003000_땅콩버터','142008000_쌀겨기름','142010000_올리브유','142011000_유채기름','151002000_이온음료','151004010_마운틴듀','151007000_토닉워터','152006000_다시마차','152022000_도라지차','153010000_슬라이스','161003000_계피분말','161004010_고추가루','161005020_초고추장','161043000_라면스프','161011010_마요네즈','161019000_양파분말','161044000_산초가루','161028000_정향분말','161032000_칠리분말','161033000_카레분말','161045000_타임가루','171011010_누에가루','171016000_뽕잎가루','171006000_송화가루','11012010_밀, 밀쌀','11012020_밀, 통밀','11026000_율무, 죽','11027020_조, 알곡','11030020_피, 알곡','14010000_마늘바게트','14020030_와플, 잼','14028000_만주, 밤','15001000_페이스트리','18001000_유아용과자','23006000_마, 산마','23006010_마, 가루','23006020_마, 단마','31002020_꿀, 밤꿀','31011000_이성화액당','31013000_조청, 배','32002010_마쉬맬로우','32004000_양갱, 팥','32005020_엿, 깨엿','32005030_엿, 흰엿','32006010_엿, 물엿','43011000_포크앤빈스','51010000_밤, 생것','51010030_밤, 가루','51011000_밤, 넥타','51022000_코코넛밀크','52005000_마가목열매','61003000_갓, 생것','61020000_그린비타민','61052080_마늘쑥음료','61052110_마늘호박잼','61052120_꿀절임마늘','61059120_무, 무순','61067030_박, 과육','61168000_박쥐나무잎','61084040_생강초절임','61096000_쑥, 생것','61106000_야콘, 잎','61121010_올리브피클','61126030_유채, 잎','61128010_잔대, 싹','61046040_녹색콩나물','81001020_감, 단감','81001040_감, 곶감','81001060_감, 침지','81007040_딸기, 잼','81018070_배, 과즙','81018080_배, 넥타','81023150_사과, 잼','81025030_살구, 잼','81048150_포도, 잼','94008000_비둘기고기','104001000_청둥오리알','111007020_갈치, 젓','111022020_날치, 알','111026000_노랑벤자리','111040080_대구, 젓','111040100_대구, 알','111044080_돔, 독돔','111044090_돔, 돌돔','111044110_돔, 범돔','111044130_돔, 뿔돔','111044140_돔, 샛돔','111044290_돔, 흑돔','111044300_돔, 황돔','111061040_멸치, 젓','111062040_명태, 포','111076020_뱅어, 포','111082000_별쭉지성대','111099000_사당놀래기','111102020_삼치, 젓','111103140_상어, 알','111105000_새치다래류','111109020_송어, 젓','111109040_송어, 알','111117010_아귀, 간','111118030_아미, 젓','111119000_아홉동가리','111124000_얼룩통구멍','111125000_여덟동가리','111126030_연어, 젓','111128000_열쌍동가리','111129000_용치놀래기','111145020_전어, 젓','111149020_조기, 젓','111165000_푸렁통구멍','112001070_비단가리비','112003000_가무락조개','112002050_국자가리비','112036010_왕우럭조개','112050000_큰구슬우렁','113007000_게, 반게','113009000_게, 참게','113013010_성게, 젓','113033000_새우, 젓','115004020_크릴, 즙','116008010_어묵, 찜','121011000_불등가사리','121021000_톳, 생것','133001000_아이스밀크','142009000_옥수수기름','142018000_해바라기유','151001010_식혜, 캔','151008060_커피, 캔','151009010_코코아가루','151009020_코코아믹서','152021000_홍차, 차','152021030_홍차, 캔','161008000_돈까스소스','161024000_우스터소스','161036020_토마토소스','161036030_토마토케찹','171005010_솔잎추출액','171018000_수세미수액','171022000_참나무수액','11013000_밀, 밀배아','11018020_수수, 알곡','11018030_수수, 가루','11026010_율무, 국수','11027010_조, 도정곡','11030010_피, 도정곡','11031020_호밀, 알곡','12001080_쌀, 일반미','12005030_찹쌀미숫가루','13002000_국수, 중면','13021000_우동, 생것','13023050_증숙중국국수','14006010_도우넛, 링','14006030_도우넛, 팥','14017000_식빵, 식빵','14027020_호빵, 팥속','15004180_케이크, 배','15007010_피자, 냉동','16004020_다식, 송화','16007191_쿠키, 버터','16009030_전병, 찹쌀','16012240_스낵, 감자','21001000_감자, 생것','21001010_감자, 찐것','21009000_감자, 대지','21009010_감자, 수미','21009020_감자, 자심','23008000_토란, 생것','31002010_꿀, 들깨꿀','31002030_꿀, 싸리꿀','31002050_꿀, 토종꿀','31002060_꿀, 잡화꿀','31005000_설탕, 분말','32001010_껌, 츄잉껌','32001020_껌, 풍선껌','32001040_껌, 무설탕','32003000_사탕, 사탕','32003010_사탕, 누가','32005010_엿, 검은엿','32008010_젤리, 구미','41006000_동부, 생것','41006030_동부, 탈피','41009000_잠두, 생것','43001000_두부, 두부','43003000_두부, 비지','51005000_땅콩, 생것','51005070_땅콩, 가루','51010010_밤, 삶은것','51010020_밤, 구운것','51012000_밤, 통조림','51016000_은행, 생것','51017000_잣, 말린것','51017010_잣, 볶은것','52003010_들깨, 가루','61002000_가지, 생것','61021000_근대, 생것','61034010_당귀, 뿌리','61035000_당근, 생것','61037010_더덕, 생것','61037020_더덕, 분말','61042020_동아, 생것','61043010_두릅, 생것','61051000_리크, 생것','61052090_마늘쫑장아찌','61054000_머위, 생것','61059030_무, 단무지','61059040_무, 알타리','61059130_무, 무짠지','61061000_물쑥, 생것','61070000_배추, 생것','61070010_배추, 봄동','61074000_부추, 생것','61074010_부추, 리크','61077000_비름, 생것','61083050_상추, 아담','61083070_상추, 천상','61083100_상추, 풍성','61084020_생강, 편강','61096010_쑥, 삶은것','61097000_쑥갓, 생것','61100010_산채발효음료','61103000_아욱, 생것','61106010_야콘, 뿌리','61113000_연근, 생것','61123000_우엉, 생것','61128000_잔대, 생것','61128001_잔대, 뿌리','61131000_죽순, 생것','61141000_참취, 생것','61185000_털머위, 잎','61151010_파, 대파 ','81001010_감, 감조청','81001021_감, 단감잼','81001070_감, 감주스','81003020_금귤, 생과','81003030_금귤, 과육','81003040_금귤, 과피','81005000_대추, 생과','81007030_딸기, 넥타','81008000_라임, 생과','81009000_레몬, 생과','81009010_레몬, 과즙','81012000_매실, 생과','81014020_멜론, 양구','81020050_복숭아, 잼','81022000_비파, 생과','81023080_사과, 넥타','81025000_살구, 생과','81025010_살구, 넥타','81027000_소귀나무열매','81039000_자두, 생과','81039040_자두, 넥타','81041000_참외, 생과','81041030_참외, 은천','81048000_포도, 생것','81048100_포도, 넥타','94006000_메추라기고기','101006000_계란, 수란','111007000_갈치, 생것','111014000_그물베도라치','111021000_꽁치, 생것','111022000_날치, 생것','111030000_농어, 생것','111040000_대구, 생것','111040020_대구, 내장','111044010_돔, 각시돔','111044020_돔, 감성돔','111044030_돔, 강담돔','111044040_돔, 구갈돔','111044050_돔, 금눈돔','111044060_돔, 꼽새돔','111044070_돔, 도화돔','111044100_돔, 백미돔','111044120_돔, 뱅애돔','111044160_돔, 실붉돔','111044170_돔, 어름돔','111044230_돔, 자리돔','111044280_돔, 호박돔','111044310_돔, 황줄돔','111060000_멸치, 생것','111061050_멸치, 액젓','111062000_명태, 생것','111062030_명태, 황태','111062100_명태, 이리','111069000_민어, 생것','111071000_박대, 생것','111074020_밴댕이, 젓','111076000_뱅어, 생것','111094000_붕어, 생것','111102000_삼치, 생것','111109000_송어, 생것','111110000_숭어, 생것','111117000_아귀, 생것','111118000_아미, 생것','111120000_암치, 생것','111126000_연어, 생것','111135040_은어, 이리','111138000_잉어, 생것','111138020_이스라엘잉어','111138030_잉어, 내장','111143000_적어, 생것','111145000_전어, 생것','111145010_전어, 피클','111149000_조기, 생것','111155000_쥐치, 생것','111160000_청어, 생것','111174020_황새치, 젓','112010040_굴, 냉동품','112010050_굴, 삶은것','112010070_굴, 통조림','112018000_맛살, 생것','112033000_소라, 생것','112041010_전복, 생것','112041080_전복, 내장','112041090_전복, 젓갈','112043000_조각매물고둥','112057010_홍합, 생것','113013000_성게, 생것','113032000_새우, 껍질','114002020_꼴뚜기, 젓','114005000_문어, 생것','115004000_크릴, 생것','115006000_해삼, 생것','115007020_해파리, 젓','116008020_어묵, 배소','116008030_어묵, 튀김','121002020_곰피, 분말','121010030_미역, 분말','121010050_미역, 튀각','121012000_불등풀가사리','121018000_청각, 생것','121021010_톳, 말린것','121021020_톳, 자건품','121022000_파래, 생것','131001000_우유, 생유','131003150_우유, 딸기','131003170_우유, 커피','131004010_연유, 가당','136001010_치즈, 체다','136001020_치즈, 크림','142016000_복숭아씨기름','142019000_혼합식물성유','151003030_분말청량음료','151008000_커피, 커피','151008010_커피, 원두','152005010_녹차, 분말','152013020_우롱차, 캔','152021040_홍차, 티백','153001010_럼, 40도','153012000_진, 47도','153012020_진, 37도','161002010_겨자, 분말','161009030_된장, 된장','161010010_마늘, 분말','161015010_생강, 분말','161016010_소금, 식염','161016060_소금, 죽염','161021000_양념통닭소스','161035000_타르타르소스','161036040_케찹, 대상','161038010_패프리카분말','161041000_후추, 분말','161041010_후추, 흰색','161041030_후추, 소스','161042000_머스터드소스','171012000_녹용, 상대','171012010_녹용, 중대','171013000_대나무추출액','171015000_미나리엑기스','171004010_삼백초, 잎','171007010_인삼, 수삼','11003020_기장,  알곡','11005000_메밀, 도정곡','11005010_메밀,  알곡','11014050_보리, 쌀보리','11014070_보리, 찰보리','11017000_보리, 보리밥','11018010_수수, 도정곡','11020010_옥수수, 콘칩','11024000_옥수수, 팝콘','11025000_율무, 율무쌀','11031010_호밀, 도정곡','12009000_죽, 인스턴트','13001000_국수, 마른것','13001010_국수, 삶은것','13001020_소면, 마른것','13001030_소면, 삶은것','13021010_우동, 삶은것','13024010_짜장면, 냉동','13025010_쫄면, 마른것','13026010_칼국수 (면)','14003010_크로켓, 냉동','14003020_크로켓, 채소','14003030_크로켓, 크림','14007020_롤빵, 하드롤','14012020_베이글, 계란','14018010_식빵, 토스트','14026000_호밀, 호밀빵','14027010_호빵, 고기속','14027030_호빵, 채소속','16001040_강정, 쌀강정','16001050_강정, 엿강정','16001060_강정, 콩강정','16003020_유과, 콩유과','16004010_다식, 검정깨','16007030_비스킷, 하드','16007150_과자, 프레즐','16007180_쿠키, 쵸코칩','16007290_웨하스, 감귤','16007310_웨하스, 크림','16012020_스낵, 밀가루','16012030_스낵, 새우맛','16012040_스낵, 콘칩스','16012260_스낵, 옥수수','21001020_감자, 삶은것','23001000_고구마, 생것','23001030_고구마, 찐것','23008010_토란, 삶은것','24003000_전분, 밀녹말','24004000_전분, 쌀녹말','31004010_당밀, 가공당','31004020_당밀, 정제당','31005010_설탕, 각설탕','31005020_설탕, 백설탕','31006000_설탕, 빙설탕','31007000_설탕, 황설탕','31008000_설탕, 흑설탕','31009000_시럽, 메이플','31010030_시럽, 쵸콜렛','31013010_조청, 산수유','31013020_조청, 오가피','32003040_사탕, 알사탕','32003060_사탕, 드롭스','32005040_엿, 고구마엿','32007010_젤라틴, 분말','33002170_쵸콜렛, 다크','33002180_쵸콜렛, 땅콩','33002190_쵸콜렛, 감잎','41001000_강남콩, 생것','41002030_녹두, 삶은것','41004000_녹두, 녹두묵','41006010_동부, 말린것','41006020_동부, 삶은것','41008000_완두콩, 생것','41009010_잠두, 말린것','41009020_잠두, 삶은것','42003000_대두, 노란콩','43002000_두부, 동두부','43004000_두부, 순두부','43005000_두부, 연두부','51001010_개암, 말린것','51001020_개암, 볶은것','51002000_도토리, 생것','51002010_도토리, 가루','51005010_땅콩, 말린것','51005050_땅콩, 볶은것','51005060_땅콩, 삶은것','51013000_보리밥, 열매','51016010_은행, 삶은것','51018000_잣, 미숫가루','51021030_코코넛, 가루','51025010_피칸, 말린것','51026000_호두, 말린것','51026010_호두, 볶은것','52003000_들깨, 말린것','61002010_가지, 말린것','61002020_가지, 삶은것','61006010_갬추, 말린것','61011000_고사리, 생것','61014010_고추냉이, 잎','61015000_고춧잎, 생것','61162000_곤달비, 생것','61018000_공심채, 생것','61019000_국화꽃, 생것','61021010_근대, 삶은것','61035010_당근, 삶은것','61036010_당근쥬스, 캔','61038000_도라지, 생것','61038030_도라지, 가루','61039000_돌나물, 생것','61040000_돌미나리,생것','61042010_동아, 삶은것','61043020_두릅, 데친것','61045020_둥굴레, 생것','61046000_들깻잎, 생것','61048000_땅두릅, 생것','61049000_떡취 (산채)','61051010_리크, 삶은것','61052050_마늘, 마늘쫑','61052060_마늘, 풋마늘','61052100_마늘 호박음료','61054010_머위, 말린것','61054030_머위, 데친것','61054020_머위, 삶은것','61059080_무, 무장아찌','61059100_무, 무꼬투리','61059110_무, 무말랭이','61059150_무, 무우거지','61062000_미나리, 생것','61062040_논미나리, 잎','61062070_밭미나리, 잎','61064000_민들레, 생것','61065000_바셀라, 생것','61066010_바실, 개량종','61066020_바실, 재래종','61070020_배추, 얼갈이','61070060_배추, 삶은것','61072030_보리순, 가루','61077010_비름, 데친것','61083010_상추, 개량종','61083020_상추, 양상추','61083030_상추, 재래종','61083080_상추, 적하계','61083110_상추, 로메인','61083120_상추, 로얄채','61085000_섬초롱, 생것','61173010_소리장이, 잎','61094000_싹채소, 무순','61097010_쑥갓, 삶은것','61099000_씀바귀, 생것','61099020_씀바귀, 뿌리','61103010_아욱, 데친것','61107000_양배추, 생것','61108030_양파, 삶은것','61108040_양파링, 냉동','61179000_여주 (고야)','61113010_연근, 삶은것','61118040_오이, 오이지','61119000_오크라, 생것','61123010_우엉, 삶은것','61131010_죽순, 말린것','61131020_죽순, 삶은것','61131030_죽순, 통조림','61134000_질경이, 생것','61137010_참죽, 말린것','61141010_참취, 삶은것','61143010_치커리, 뿌리','61144010_케일, 꽃케일','61145000_콜라비, 생것','61146000_콩나물, 생것','61046030_콩나물, 가루','61185010_털머위, 줄기','61149000_토마토, 생것','61153010_피망, 붉은것','61153020_피망, 푸른것','62001000_김치, 갓김치','62003000_김치, 깍두기','62005000_김치, 동치미','62008000_김치, 백김치','62013000_김치, 파김치','64001000_이유식, 당근','71005000_밤버섯, 생것','81001050_감, 감말랭이','81002000_구아바, 생과','81002030_구아바, 쥬스','81005020_대추, 말린것','81008020_라임, 캔쥬스','81010000_롱간스, 생과','81012020_매실, 농축액','81014000_멜론, 머스크','81014010_멜론, 화이트','81016000_무화과, 생과','81017000_바나나, 생과','81019030_버찌, 통조림','81020040_복숭아, 넥타','81021020_블루베리, 잼','81022010_비파, 통조림','81023070_사과, 말린것','81023140_사과, 통조림','81025040_살구, 말린것','81025020_살구, 통조림','81035000_오렌지, 생과','81036000_올리브, 생과','81037000_유자, 생과 ','81048070_포도, 청포도','81048080_포도, 건포도','82001060_이유식, 배숙','91051000_쇠고기, 한우','91048000_쇠고기, 육수','93004000_닭고기, 너겟','93013000_영계, 삶은것','93014010_토종닭, 가슴','93014020_토종닭, 다리','93014030_토종닭, 날개','93014040_토종닭, 껍질','94002010_개구리, 다리','94010010_양고기, 갈비','95001010_돈까스, 냉동','95008020_미트볼, 냉동','95011030_스튜, 통조림','95014030_핫도그, 냉동','95015020_주물럭, 냉동','96002020_햄버거, 냉동','101008000_계란, 오믈렛','101009000_계란, 후라이','103001000_오리알, 생것','103001010_오리알, 피단','111007010_갈치, 얼간품','111010000_게르치, 생것','111011000_고등어, 생것','111017000_까나리, 생것','111021010_꽁치, 말린것','111021020_꽁치, 구운것','111021030_꽁치, 염장품','111021040_꽁치, 통조림','111022010_날치, 염장품','111030010_농어, 구운것','111032010_눈강달이, 젓','111035000_눈퉁멸, 생것','111040010_대구, 냉동품','111040120_대구, 구운것','111040030_대구, 말린것','111040040_대구, 대구포','111040050_대구, 염장품','111043000_도루묵, 생것','111044150_돔, 실꼬리돔','111051000_둑중개, 생것','111051020_둑중개, 조림','111055000_말쥐치, 생것','111056000_망둥어, 생것','111062050_명태, 조미포','111062060_명태, 구운것','111062110_명태, 창란젓','111062140_명태, 코다리','111069020_민어, 구운것','111069030_민어, 말린것','111071010_박대, 말린것','111071020_박대, 반건조','111071030_박대, 반건품','111072040_방어, 구운것','111074000_밴댕이, 생것','111076010_뱅어, 말린것','111085000_보리멸, 생것','111088070_볼락, 구운것','111094010_붕어, 구운것','111094020_붕어, 삶은것','111102010_삼치, 구운것','111103020_상어, 곱상어','111103080_상어, 별상어','111103090_상어, 악상어','111103100_상어, 은상어','111103130_상어, 흉상어','111107030_서대, 참서대','111109010_송어, 염장품','111109030_송어, 통조림','111110010_숭어, 구운것','111113000_쏘가리, 생것','111117020_아귀, 아귀찜','111118010_아미, 말린것','111118020_아미, 장조림','111177000_애꼬치, 생것','111120010_암치, 말린것','111122000_양미리, 생것','111126020_연어, 염장품','111126050_연어, 통조림','111126060_연어, 훈제품','111135020_은어, 엿절임','111135030_은어, 내장젓','111138010_잉어, 삶은것','111140010_장어, 갯장어','111143010_적어, 구운것','111148000_정어리, 생것','111160010_청어, 말린것','111160020_청어, 염장품','111160040_청어, 자건품','111160050_청어, 훈제품','111168000_학꽁치, 생것','111126110_홍연어, 생것','111174000_황새치, 생것','112001000_가리비, 생것','112004000_갈색띠매물고둥','112010090_굴, 어리굴젓','112018010_맛살, 말린것','112023000_민허리돼지고둥','112025040_바지락, 젓갈','112032000_새조개, 생것','112033010_소라, 통조림','112041050_전복, 말린것','112041060_전복, 튀긴것','112045000_조개살, 생것','112057020_홍합, 자건품','112057030_홍합, 통조림','113006000_게, 붉은대게','113013020_성게, 통조림','113020000_새우, 닭새우','113023000_새우, 물새우','114002000_꼴뚜기, 생것','114005010_문어, 말린것','114005020_문어, 삶은것','114008000_오징어, 생것','115004010_크릴, 삶은것','115006010_해삼, 말린것','115006020_해삼, 내장젓','115007000_해파리, 생것','116001000_어묵, 게맛살','116003010_이유식,생선죽','116010000_어육햄, 생것','116010020_어육햄, 찐것','121002010_곰피, 말린것','121003110_김, 둥근돌김','121005000_다시마, 생것','121005060_다시마, 조림','121005080_다시마, 튀각','121006010_대황, 말린것','121009000_모자반, 생것','121009020_모자반, 분말','121010020_미역, 말린것','121014010_석목, 말린것','121018010_청각, 말린것','121019010_청태, 말린것','121022010_파래, 말린것','131003160_우유, 바나나','131003120_우유, 쵸콜렛','131004000_연유, 무가당','132003000_크림, 경휘핑','132004000_크림, 중휘핑','132005000_크림, 커피용','134002000_쉐이크, 딸기','136003000_치즈, 카테지','136001030_치즈, 파마산','151003010_레모네이드주스','151003100_소다,클럽소다','151008050_커피, 침출액','151008190_커피, 웬디스','151009030_코코아, 우유','152001000_감잎차, 분말','152002000_계피차, 분말','152005020_녹차, 침출액','152023000_돌나물건강음료','152007000_두충차, 분말','152008000_보리차, 보리','152024000_상지차, 분말','152009000_생강차, 분말','152010000_쌍화차, 분말','152013000_우롱차, 분말','152014000_유자차, 분말','152015000_율무차, 분말','152016000_인삼차, 과립','152020000_홍삼차, 분말','152021010_홍차, 침출액','153005010_맥주, 생맥주','153005030_맥주, 흑맥주','153007010_브랜디, 특급','153007020_브랜디, 1급','153007030_브랜디, 2급','153011000_위스키, 1급','153011010_위스키, 2급','153011020_위스키, 특급','161001010_간장, 왜간장','161009050_된장, 쌈된장','161013010_브라운그레이비','161016020_소금, 일반염','161016050_소금, 볶은것','161018040_식초, 쌀식초','161023000_올스파이스분말','161025000_육두구, 분말','161030020_짜장 (춘장)','161031010_청국장, 생것','161031020_청국장, 분말','161032010_칠리, 웬디스','161033030_카레, 통조림','161041020_후추, 검은색','171014000_돌복숭아엑기스','171004020_삼백초, 줄기','11003010_기장,  도정곡','11005020_메밀, 메밀가루','11006000_메밀, 부침가루','11014060_보리, 볶은보리','11015000_보리, 미숫가루','11023060_시리얼, 코코링','11023090_시리얼, 콘첵스','11031030_호밀, 호밀가루','13007000_라면, 인스턴트','13010010_막국수, 마른것','13010020_막국수, 삶은것','13019180_스프, 인스턴트','13021020_냄비우동, 냉동','13022010_울면, 인스턴트','13023000_중국국수, 생것','13024030_짜장, 레토르트','14007010_롤빵, 소프트롤','14015030_비스켓, KFC','14015040_비스켓, 버거킹','14017010_식빵, 우유식빵','14025020_푸딩, 커스터드','14027040_찐빵, 단호박소','15005030_크로아쌍, 버터','15006020_파이, 딸기파이','15006030_파이, 블렉베리','15006040_파이, 블루베리','15006050_파이, 애플파이','15006080_파이, 체리파이','15006130_파이, 피칸파이','15006140_파이, 호박파이','15007140_피자, 치즈피자','16001010_강정, 들깨강정','16001020_강정, 땅콩강정','16001030_강정, 보리강정','16001070_강정, 참깨강정','16002010_산자, 찹쌀산자','16003010_유과, 찹쌀유과','16005010_약과, 대추첨가','16007020_비스킷, 소프트','16007190_쿠키, 땅콩버터','16007200_크랙커, 크랙커','16007300_웨하스, 바닐라','16008000_센베이, 센베이','17001000_수수, 수수경단','21007000_감자, 새알감자','21010000_유색감자, 생것','21010010_유색감자, 찐것','23001010_고구마, 말린것','23001020_고구마, 구운것','23003000_고구마, 신율미','24001000_전분, 감자녹말','31002040_꿀, 아카시아꿀','31010010_시럽, 딸기시럽','31010020_시럽, 쵸코시럽','31014000_사탕무우, 생것','32003090_사탕, 박하사탕','33002060_쵸콜렛, 아몬드','33002130_쵸코렛, 쵸코볼','33002200_쵸콜렛, 초코바','41001010_강남콩, 말린것','41001020_강남콩, 삶은것','41005000_녹두, 녹두국수','41008010_완두콩, 말린것','41008020_완두콩, 삶은것','41015010_팥죽, 인스턴트','41015020_팥죽, 레토르트','41016000_작두콩 (도두)','42007010_콩가루, 볶은것','43009010_두유, 애플두유','51006010_땅콩, 조미땅콩','51006020_땅콩, 커피땅콩','51015010_아몬드, 말린것','51020020_캐슈넛 우성식품','51021010_코코넛, 말린것','51025020_피칸, 조미한것','52007010_수박씨, 말린것','52008020_연씨, 조미한것','52010010_호박씨, 말린것','61001010_가죽나물(산채)','61002030_가지, 소금절임','61011010_고사리, 말린것','61011020_고사리, 삶은것','61013050_고추, 꽈리고추','61014011_고추냉이, 뿌리','61014020_고추냉이, 줄기','61015010_고춧잎, 삶은것','61162010_곤달비, 삶은것','61018010_공심채, 삶은것','61019010_국화꽃, 말린것','61019020_국화꽃, 삶은것','61024000_꽃양배추, 생것','61038010_도라지, 말린것','61038020_도라지, 데친것','61040010_돌미나리,데친것','61045010_둥굴레, 말린것','61046010_들깻잎, 데친것','61046020_들깻잎, 통조림','61047000_들미나리, 생것','61048010_땅두릅, 데친것','61053000_마타리 (산채)','61062010_미나리, 삶은것','61062020_미나리, 데친것','61062030_논미나리, 줄기','61062050_논미나리, 뿌리','61062060_밭미나리, 줄기','61062080_밭미나리, 뿌리','61063000_미역취 (산채)','61064010_민들레, 데친것','61065010_바셀라, 삶은것','61070040_배추, 소금절임','61076000_브로콜리, 생것','61080000_산마늘 (산채)','61081000_산부추 (산채)','61083040_상추, 적양상추','61083060_상추, 유레이크','61083130_상추, 롤로로사','61085010_섬초롱, 삶은것','61173000_소리장이, 뿌리','61088000_수리취 (산채)','61089000_숙주나물, 생것','61091020_시금치, 삶은것','61091030_시금치, 포항초','61092000_싹채소, 고추순','61093000_싹채소, 들깨순','61174000_싹채소, 메밀순','61176000_싹채소, 호박순','61099010_씀바귀, 데친것','61107010_양배추, 삶은것','61118020_오이, 늙은오이','61118050_오이, 오이피클','61119010_오크라, 삶은것','61120000_옥수수순, 생것','61129000_제비쑥 (산채)','61130000_조뱅이 (산채)','61183000_좀홍당무, 뿌리','61134010_질경이, 데친것','61136010_참반디, 말린것','61144020_케일, 적꽃케일','61145010_콜라비, 삶은것','61146010_콩나물, 삶은것','61146020_콩나물, 말린것','61149010_토마토, 삶은것','61149020_토마토, 통조림','61149050_토마토쥬스(생)','61159000_홑잎나물, 생것','62004000_김치, 나박김치','62006000_김치, 무청김치','62007000_김치, 배추김치','62009000_김치, 열무김치','62011000_김치, 유채김치','62012000_김치, 총각김치','71009000_송이버섯, 생것','71010000_싸리버섯, 생것','71019000_아위버섯, 생것','71013000_잎새버섯, 생것','71014010_잣버섯, 말린것','71015000_팽이버섯, 생것','71015020_팽이버섯, 야생','71016000_표고버섯, 생것','81008010_라임, 천연과즙','81010010_롱간스, 냉동품','81010020_롱간스, 말린것','81013050_머루, 천연과즙','81016010_무화과, 말린것','81016020_무화과, 통조림','81017010_바나나, 말린것','81020060_복숭아, 당조림','81021000_블루베리, 생것','81023100_사과, 천연과즙','81035020_오렌지, 캔쥬스','81036010_올리브, 말린것','81037030_유자, 과피가루','81041010_참외, 황색과육','81042000_크린베리, 생과','81045000_파인애플, 생과','81045050_파인애플, 넥타','82003080_이유식, 사과숙','91049030_이유식, 쇠간죽','92021000_돼지고기, 목살','93001000_닭고기 (성계)','93007010_닭고기, 닭육수','94004000_고래고기, 날것','94004010_고래고기, 꼬리','94004050_고래고기, 비계','94009000_사슴고기, 날것','94010020_양고기, 다리살','94010040_양고기, 어깨살','95011010_스튜, 레토르트','95012010_장조림, 진주햄','95015010_고기산적, 냉동','95016010_치킨까스, 냉동','96001160_샌드위치, 생선','96002060_햄버거, 버거킹','101004000_계란, DHA란','101005000_계란, 계란가루','101007000_계란, 스크램블','102001000_메추리알, 생것','105002000_기러기알, 생것','111001000_가다랭이, 생것','111001080_가다랭이, 튀김','111004050_가오리, 조미품','111005110_가자미, 구운것','111005120_가자미, 삶은것','111010010_게르치, 삶은것','111011010_고등어, 말린것','111011060_고등어, 반건품','111011020_고등어, 구운것','111011030_고등어, 삶은것','111011050_고등어, 통조림','111017010_까나리, 자건품','111019000_꼬치고기, 생것','111032000_눈강달이, 생것','111040090_대구, 아가미젓','111041000_대두어 (흑연)','111043010_도루묵, 염건품','111051010_둑중개, 삶은것','111056020_망둥어, 장조림','111061010_멸치, 자건품대','111061020_멸치, 자건품중','111061030_멸치, 자건품소','111067000_미꾸라지, 생것','111074010_밴댕이, 자건품','111085010_보리멸, 냉동품','111103010_상어, 가래상어','111103030_상어, 까치상어','111103040_상어, 돔발상어','111103060_상어, 두툽상어','111103150_상어, 지느러미','111107010_서대, 각시서대','111113010_쏘가리, 냉동품','111178000_애꼬치, 구운것','111122010_양미리, 말린것','111126040_연어, 찌기절임','111137000_임연수어, 생것','111144010_전갱이, 냉동품','111144020_전갱이, 구운것','111144030_전갱이, 삶은것','111147000_점줄우럭, 생것','111148010_정어리, 말린것','111148030_정어리, 구운것','111148100_정어리, 삶은것','111148040_정어리, 염장품','111148050_정어리, 염건품','111148110_정어리, 자건품','111148060_정어리, 통조림','111160030_청어, 찌기절임','111126120_홍연어, 구운것','111126130_홍연어, 훈제품','111174010_황새치, 구운것','112001010_가리비, 냉동품','112001020_가리비, 말린것','112001030_가리비, 삶은것','112001060_가리비, 통조림','112005000_개량조개, 생것','112010080_굴, 훈제통조림','112025020_바지락, 말린것','112025030_바지락, 장조림','112025060_바지락, 통조림','112026000_보말고둥, 생것','112045010_조개살, 말린것','112045030_조개살, 조개젓','112045040_조개젓, 비양념','112048000_참소라, 삶은것','113004020_게, 닭게, 젓','113011000_게, 게알, 젓','113013030_성게, 알, 젓','113014010_보라성게알, 젓','113025000_새우, 부채새우','113030000_새우, 철모새우','113031000_새우, 펄닭새우','113035010_새우튀김, 냉동','114001000_갑오징어, 생것','114002010_꼴뚜기, 자건품','114008010_오징어, 냉동품','114008020_오징어, 말린것','114008030_오징어, 구운것','114008040_오징어, 삶은것','114008050_오징어, 튀긴것','114008060_오징어, 엿조림','114008110_오징어, 통조림','114008130_오징어채, 조미','114008140_오징어, 훈제품','115004030_크릴, 패이스트','116001030_집게맛살, 냉동','116010010_어육햄, 구운것','116010030_어육햄, 튀긴것','117001000_샌드위치, 생선','121005010_다시마, 말린것','121005070_다시마, 염장품','121007010_뜸부기, 말린것','121008010_매생이, 말린것','121009010_모자반, 말린것','121009030_모자반, 염장품','121010040_미역, 염장미역','121017010_진두발, 말린것','131002000_우유, 보통우유','131002010_우유, 남양우유','131002060_우유, 매일우유','131002110_우유, 연세우유','131004020_연유, 가당탈지','131005000_분유, 전지분유','131005010_분유, 조제분유','131005370_분유, 탈지분유','132008000_크림, 휘핑크림','134003000_쉐이크, 바닐라','134004000_쉐이크, 쵸코렛','135001000_요구르트, 액상','135002000_요구르트, 호상','136001000_치즈, 자연치즈','136002000_치즈, 모짜렐라','136004000_치즈, 가공치즈','141003010_버터, 서울우유','142003010_땅콩버터, 청크','142003020_땅콩버터, 크림','142010010_올리브유, 국산','142010020_올리브유, 외산','142015000_커피프림, 가루','151006000_탄산음료, 콜라','151008030_커피, 커피가루','151008070_커피, 커피음료','151008100_커피, 롯데리아','152003000_결명자차, 종자','152004000_구기자차, 종자','152008010_보리차, 침출액','152013010_우롱차, 침출액','152018000_컴프리차, 분말','152019030_현미녹차, 티백','153004000_매실주, 13도','153005020_맥주, 합성맥주','153006000_보드카, 40도','153006010_보드카, 50도','153014020_칵테일, 마티니','153014030_칵테일, 맨하탄','153014060_칵테일, 진토닉','161001040_간장, 재래간장','161001050_간장, 양념간장','161001060_간장, 양조간장','161001090_간장, 죽염간장','161002020_겨자, 페이스트','161005040_고추장, 개량식','161009020_된장, 가루된장','161009040_된장, 일본된장','161009060_된장, 한식된장','161009070_된장, 보리된장','161009100_혼합장 (쌈장)','161010020_마늘, 페이스트','161011020_마요네즈, 난황','161011030_마요네즈, 대상','161011050_마요네즈, 전란','161015020_생강, 페이스트','161016030_소금, 고운소금','161016040_소금, 굵은소금','161018010_식초, 사과식초','161018020_식초, 과실식초','161018050_식초, 양조식초','161018060_식초, 현미식초','161029000_조미소 (미원)','161033010_카레소스, 분말','161033020_카레, 레토르트','161036050_케찹, 동원산업','161037010_파슬리, 말린것','171002000_메뚜기, 말린것','171003000_번데기, 말린것','171003010_번데기, 통조림','171004030_삼백초, 말린것','11021000_옥수수, 콘샐러드','11023070_시리얼, 코코팝스','11023150_시리얼, 하니팝스','11023190_시리얼, 후르트링','12002020_쌀, 현미, 쑥쌀','12002030_쌀, 현미, 가루','12003000_쌀, 흑미, 멥쌀','12003010_쌀, 흑미, 찹쌀','12003020_쌀, 흑미, 현미','12005000_쌀, 찹쌀, 백미','12005010_쌀, 찹쌀, 현미','13006000_떡복이, 인스턴트','13009010_마카로니, 마른것','13009020_마카로니, 삶은것','13015010_스파게티, 마른것','13015020_스파게티, 삶은것','13016050_스파게티, 병조림','13023010_중국국수, 삶은것','13024020_짜장면, 인스턴트','13027010_하이면, 인스턴트','14017020_식빵, 옥수수식빵','15001010_페이스트리, 과일','15001020_페이스트리, 치즈','15004040_케이크, 롤케이크','15004140_케이크, 컵케이크','15004160_케이크, 핫케이크','15006010_파이, 고구마파이','15007061_피자, 슈퍼슈프림','15007062_피자, 치킨슈프림','16007210_크랙커, 치즈샌드','16007220_크랙커, 땅콩샌드','16008010_센베이, 튀긴과자','17002000_쌀, 찹쌀, 꿀떡','17009000_쌀, 찹쌀, 약식','17013010_쌀, 찹쌀, 경단','21005030_감자, 해쉬브라운','21006000_감자, 감자샐러드','22002140_감자크로켓, 냉동','23002000_고구마, 사탕조림','23006030_마, 장마, 생것','24002000_전분, 고구마녹말','24005000_전분, 옥수수녹말','24006000_전분, 칡뿌리녹말','32002020_사탕, 마쉬멜로우','32003030_사탕, 버터스카치','41003000_녹두, 빈대떡가루','41003010_녹두, 빈대떡반죽','41007000_라이마빈스, 생것','51010001_밤, 생것, 단택','51010002_밤, 생것, 덕명','51010003_밤, 생것, 이평','51010004_밤, 생것, 옥광','51015020_아몬드, 조미한것','51020010_캐슈넛, 조미한것','52007020_수박씨, 조미한것','52010020_호박씨, 조미한것','61008020_고구마줄기, 생것','61013040_고추, 고추장아찌','61022010_깨나물, 깻잎나물','61024010_꽃양배추, 삶은것','61030000_녹색완두콩, 생것','61047010_들미나리, 데친것','61052040_마늘, 마늘장아찌','61059020_무, 게걸무, 잎','61059070_무, 왜무, 뿌리','61067010_박오가리, 말린것','61067020_박오가리, 삶은것','61069000_방가지똥 (산채)','61071000_버드장이 (산채)','61072010_보리순, 쌀보리순','61072020_보리순, 올보리순','61076020_브로콜리, 데친것','61076010_브로콜리, 삶은것','61078030_비트, 잎, 생것','61083090_상추, 뚝섬적출면','61089010_숙주나물, 삶은것','61090040_순무, 잎, 생것','61095000_싹채소, 알파파순','61101000_아기양배추, 생것','61138010_창출나물 (산채)','61150010_토마토, 흑토마토','61155120_호박죽, 레토르트','61155130_호박죽, 인스턴트','61159010_홑잎나물, 삶은것','62009010_김치, 열무물김치','62010000_김치, 오이소박이','62011010_김치, 유채물김치','71002000_느타리버섯, 생것','71003000_만가닥버섯, 생것','71004010_목이버섯, 말린것','71004020_목이버섯, 삶은것','71008010_석이버섯, 말린것','71018000_상황버섯, 말린것','71009010_송이버섯, 통조림','71010010_싸리버섯, 말린것','71012000_양송이버섯, 생것','71012020_양송이버섯, 가루','71020000_영지버섯, 말린것','71022000_참타리버섯, 생것','71015010_팽이버섯, 데친것','71016010_표고버섯, 말린것','81001030_감, 연시, 생것','81003010_귤, 생과, 조생','81006010_대추야자, 말린것','81021010_블루베리, 통조림','81055000_아세로라, 감미종','81035030_오렌지, 천연과즙','81045060_파인애플, 통조림','81047000_패션후르츠, 생과','81047010_패션후르츠천연과즙','92005000_돼지고기, 삼겹살','92009000_돼지고기, 지방육','93001020_닭고기, 구이통닭','93007000_닭고기, 닭뼈국물','93001140_닭고기, 튀긴통닭','94003030_거위, 간, 날것','94007000_멧돼지고기, 날것','94009010_사슴고기, 구운것','94010050_어린양고기, 날것','94012010_오리고기, 산오리','94016010_토끼고기, 산토끼','95008030_고기소스, 통조림','95010020_쇠고기완자, 냉동','96001010_샌드위치, 닭고기','96001070_샌드위치, 쇠고기','96002050_햄버거, 맥도날드','96002290_햄버거, 치즈버거','105002010_기러기알, 삶은것','111001030_가다랭이, 반건품','111001050_가다랭이, 통조림','111001090_가다랭이, 내장젓','111019010_꼬치고기, 구운것','111040060_대구, 반건염장품','111040070_대구, 튀김냉동품','111044180_돔, 옥돔, 생것','111044240_돔, 참돔, 생것','111044270_돔, 참돔, 껍질','111055010_말쥐치, 조미건품','111056010_망둥어, 설탕조림','111061060_멸치, 유지통조림','111067010_미꾸라지, 삶은것','111069060_민어, 알, 염장','111101000_삼세기 (삼수기)','111103070_상어, 모조리상어','111103110_상어, 청새리상어','111107020_서대, 궁제기서대','111109050_무지개송어, 생것','111126010_연어, 다시마조림','111126070_연어, 알, 생것','111126080_연어, 알, 염장','111137020_임연수어, 반건품','111147010_점줄우럭, 구운것','111160060_청어, 알, 생것','111160080_청어, 알, 염장','111168010_학공치, 조미한것','112005010_개량조개, 말린것','112010010_굴, 석굴, 생것','112010100_굴, 토굴, 생것','112020010_매끈이고둥, 생것','112026010_보말고둥, 구운것','112026030_보말고둥, 삶은것','112028000_붉은맛 (큰죽합)','112032010_새조개, 조미건품','112046030_진주담치, 삶은것','112054000_펄조개 (뻘조개)','113003000_게, 꽃게, 생것','113004000_게, 닭게, 생것','113008000_게, 왕게, 생것','113014000_보라성게알, 생것','113016000_새우, 가시배새우','113017000_새우, 각시흰새우','113029000_새우, 징거미새우','114001010_갑오징어, 말린것','114003000_불동꼴뚜기, 생것','114003020_불동꼴뚜기, 조림','114008100_오징어, 조미구이','114008170_오징어튀김, 냉동','114010000_끈멍게 (돌멍게)','116009000_어묵, 어육소시지','117003010_오징어버거, 냉동','121016000_우뭇가사리, 생것','121016010_우뭇가사리, 우무','121016020_우뭇가사리, 한천','121020010_클로렐라, 말린것','131003140_우유, 고칼슘우유','131005020_분유, 조제분유1','131005030_분유, 조제분유2','131005040_분유, 조제분유3','131006000_산양유 (염소유)','133004000_아이스크림, 딸기','142006000_분말크림, 식물성','151003080_환타,그레이프환타','151005000_탄산음료, 사이다','152008020_보리차, 동서식품','152011000_오미자차, 말린것','152017000_치커리차, 말린것','152019010_현미녹차, 침출액','153004020_오가피주, 13도','153012030_드라이진, 47도','153012010_드라이진, 38도','153014080_칵테일, 페퍼민트','153014100_칵테일, 데이커리','153014130_칵테일, 톰칼린스','153015010_포도주, 단포도주','153015020_포도주, 백포도주','153015030_포도주, 적포도주','161018100_식초, 알로에식초','161027020_분말조미료, 멸치','161033090_카레, 오뚜기카레','161040010_화이트소스, 분말','171010000_귀뚜라미, 볶은것','171020000_올리브잎, 말린것','171021000_월계수잎, 말린것','11002020_귀리,  오트밀가루','11012030_밀, 도정곡, 흑밀','11014080_보리, 생것, 가루','11019090_옥수수, 옥수수가루','11019091_옥수수, 옥수수 묵','11023010_시리얼, 코코넛첵스','11023100_시리얼, 콘푸레이크','11023130_시리얼, 콘푸로스트','12007030_필라프, 햄, 냉동','13005000_도토리, 도토리국수','13023060_중면, 건면, 생것','14008010_머핀, 잉글리쉬머핀','14008020_머핀, 전유로만든것','14020010_와플, 분말로만든것','14020020_와플, 커스터드크림','15002000_카스테라, 카스테라','15004010_케이크, 당근케이크','15004130_케이크, 치즈케이크','15005000_크로아쌍, 크로아쌍','15006120_파이, 파인애플파이','15007020_피자 (패스트푸드)','15007141_피자, 치즈, 냉동','15007340_피자, 페퍼로니피자','16009011_쌀과자, 튀김쌀과자','16010010_나쵸 (패스트푸드)','16011010_타코 (패스트푸드)','16013090_카스타드, 롯데제과','18006010_이유식, 쌀, 분말','23006040_마, 장마, 삶은것','23009030_곤약, 생것, 판형','23009040_곤약, 생것, 분말','24009000_전분, 감자부침가루','31014010_사탕무우, 농축한것','33002040_쵸콜렛, 밀크쵸콜렛','41007010_라이마빈스, 말린것','41007020_라이마빈스, 삶은것','41015030_팥, 소, 페이스트','42007020_콩가루, 탈지콩가루','43007010_마파두부, 레토르트','43009000_두유음료 (베지밀)','51008010_마카디미아, 말린것','51010011_밤, 삶은것, 단택','51010012_밤, 삶은것, 덕명','51010013_밤, 삶은것, 이평','51010014_밤, 삶은것, 옥광','51014010_브라질너트, 말린것','51014020_브라질너트, 볶은것','51024010_피스타치오, 말린것','52008010_연씨, 미숙, 생것','52009000_해바라기씨, 말린것','52009020_해바라기씨, 볶은것','61161000_가시오가피순, 생것','61008030_고구마줄기, 말린것','61008040_고구마줄기, 삶은것','61010000_고비, 생것(야생)','61010001_고비, 생것(재배)','61029000_녹색꽃양배추, 생것','61030010_녹색완두콩, 삶은것','61030020_녹색완두콩, 통조림','61031000_는쟁이냉이 (산채)','61048020_땅두릅, 잎, 생것','61052012_마늘, 구근, 냉동','61059010_무, 게걸무, 뿌리','61059060_무, 알타리무, 잎','61059090_무, 조선무, 뿌리','61059170_무청시래기, 삶은것','61078040_비트, 잎, 삶은것','61078000_비트, 뿌리, 생것','61090010_순무, 뿌리, 생것','61090050_순무, 잎, 삶은것','61175000_싹채소, 해바라기순','61101010_아기양배추, 삶은것','61102000_아스파라거스, 생것','61107020_양배추, 붉은양배추','61108010_양파, 동결건조한것','61126010_유채, 꽃대, 생것','61139010_청경채 (중국채소)','61149060_토마토, 토마토쥬스','61150000_토마토, 체리토마토','61151020_파, 중파 (쪽파)','61151030_파, 소파 (실파)','62002000_김치, 고들빼기김치','71017000_검은비늘버섯, 생것','71002010_느타리버섯, 말린것','71002020_느타리버섯, 삶은것','71006000_버들송이버섯, 생것','71011000_애느타리버섯, 생것','71012010_양송이버섯, 통조림','71022010_참타리버섯, 삶은것','71023020_큰느타리버섯, 가루','71012030_큰양송이버섯, 생것','81013020_머루, 생과, 과육','81013030_머루, 생과, 과피','81018000_배, 생과, 국내산','81018040_배, 생과, 유럽산','81018050_배, 생과, 일본산','81018060_배, 생과, 중국산','81023010_사과, 생과, 국광','81023020_사과, 생과, 부사','81023050_사과, 생과, 홍옥','81023060_사과, 생과, 후지','81034010_오디, 생과, 백과','81035040_오렌지, 마말레이드','81035050_오렌지, 생과일쥬스','81037010_유자, 생과, 과육','81037020_유자, 생과, 과피','81048060_포도, 생과, 거봉','81048140_포도, 깐포도통조림','81049010_후르츠펀치, 통조림','91048010_사골국물, 인스턴트','92022000_돼지고기, 넓적다리','93006000_닭고기, 목, 날것','94003040_거위, 간, 튀긴것','94004030_고래고기, 복부정육','94004040_고래고기, 복부지육','94007020_멧돼지고기, 앞다리','95008040_고기소스, 레토르트','95010010_돼지고기완자, 냉동','96002010_햄버거, 보통햄버거','96002040_햄버거, 로이로저스','101001000_계란, 전란, 생것','101002000_계란, 난백, 생것','101003000_계란, 난황, 생것','102001010_메추라기알, 삶은것','111001040_가다랭이, 삶은국물','111005100_가자미, 튀김냉동품','111044190_돔, 옥돔, 구운것','111044200_돔, 옥돔, 삶은것','111044210_돔, 옥돔, 반건품','111044250_돔, 참돔, 구운것','111044260_돔, 참돔, 삶은것','111062020_명태, 건 (북어)','111069010_민어, 건 (암치)','111086000_복어, 검복, 생것','111086050_복어, 밀복, 생것','111088080_볼락, 볼락, 생것','111109060_무지개송어, 냉동품','111109070_무지개송어, 구운것','111110020_숭어, 알, 염건품','111137010_임연수어, 소금절임','111144060_전갱이, 가미통조림','111144080_전갱이, 튀김냉동품','111148020_정어리, 통째말린것','111148070_정어리, 가미통조림','111148080_정어리, 유지통조림','111155010_쥐치, 포, 말린것','111155020_쥐치, 포, 냉동품','111160070_청어, 알, 말린것','112001050_가리비, 튀김냉동품','112010020_굴, 참굴, 자연산','112010030_굴, 참굴, 양식산','112011010_긴고둥 (긴뿔고둥)','112015010_백합(대합), 생것','112015050_백합(대합), 생것','112020020_매끈이고둥, 삶은것','112025050_바지락, 조미통조림','112056030_피조개, 가미통조림','113003010_게, 꽃게, 삶은것','113004010_게, 닭게, 삶은것','113008020_게, 왕게, 삶은것','113008010_게, 왕게, 통조림','113010000_게, 게살, 자건품','113018000_새우, 긴뿔천길새우','113021000_새우, 대하, 생것','113033010_새우, 젓 (육젓)','113033020_새우, 젓 (추젓)','114002030_꼴뚜기, 젓, 양념','114003010_불동꼴뚜기, 삶은것','114003030_불동꼴뚜기, 훈제품','114008150_오징어, 훈제조미품','114008190_오징어볼튀김, 냉동','116012010_해물찌개재료, 냉동','121003000_김 (참김), 생것','121003060_김 (참김), 맛김','121003130_김 (참김), 돌김','121005050_다시마, 다시마말이','121010060_미역, 줄기, 생것','132007000_분말크림, 유지방성','133001010_아이스밀크, 바닐라','133003000_아이스크림, 바닐라','133005000_아이스크림, 쵸콜렛','136006000_치즈스틱, 롯데리아','142015010_프림, 동서 프리마','151003020_레모네이드, 웬디스','151004000_탄산음료, 진저에일','152012000_옥수수차, 동서식품','152005030_인동녹차잎, 말린것','152019020_현미녹차, 동서식품','153004010_돌복숭아주, 13도','153014070_칵테일, 피나콜라다','153014110_칵테일, 버번앤소다','153014120_칵테일, 블러드메리','161005050_고추장, 전통고추장','161005030_고추장, 가루고추장','161011040_마요네즈, 동원산업','161017010_스파게티소스, 분말','161027010_다시다, 멸치다시다','161027040_분말조미료, 쇠고기','161036010_토마토소스, 통조림','171001000_고로쇠나무 (수액)','171017020_선인장, 토종, 꽃','171019000_식용달팽이, 통조림','11012040_밀, 도정곡, 금강밀','11014040_보리, 겉보리, 할맥','11014071_보리, 찰보리, 할맥','11023160_시리얼, 현미푸레이크','12002040_쌀, 현미, 발아현미','12007020_필라프, 새우, 냉동','13007030_라면, 뉴면, 빙그레','13007060_라면, 신라면, 농심','13011050_만두, 냉동, 물만두','13013010_메밀냉면 (인스턴트)','13016030_스파게티, 전자렌지용','13023030_마른중국국수, 마른것','13023040_마른중국국수, 삶은것','13026050_칼국수, 생면, 생것','14006020_도우넛, 이스트도우넛','14006040_도우넛, 케이크도우넛','14011000_버리토 (패스트푸드)','14015010_비스켓, 분말로만든것','14015020_비스켓 (패스트푸드)','15002010_카스테라, 감카스테라','15004050_케이크, 바나나케이크','15004070_케이크, 쇼튼드케이크','15004080_케이크, 스폰지케이크','15004100_케이크, 쵸콜렛케이크','15004150_케이크, 파운드케이크','15004170_케이크, 후르츠케이크','16008020_센베이, 센베이, 김','17007020_쌀, 찹쌀, 찰시루떡','23009010_곤약, 생것, 국수형','24007000_전분, 당면, 마른것','24007010_전분, 당면, 삶은것','24008010_전분, 졸참나무도토리','32003080_사탕, 목캔디, 롯데','32003100_사탕, 생캔디, 롯데','32007020_젤라틴, 분말로만든것','33002050_쵸콜렛, 라이스시리얼','33002100_쵸콜렛, 스위트쵸콜렛','33002120_쵸코렛, 제로, 롯데','33002160_쵸콜렛, 화이트쵸콜렛','41012000_팥, 검정팥, 마른것','41012010_팥, 검정팥, 삶은것','41014020_팥, 붉은팥, 삶은것','42001010_대두, 검정콩, 흑태','42004000_대두, 노란콩, 콩물','42005010_대두, 밤콩, 말린것','51008020_마카디미아, 조미한것','51010040_밤, 말린것 (황율)','51024020_파스타치오, 우성식품','51024030_피스타치오, 조미한것','52004010_참깨, 흰깨, 말린것','52004020_참깨, 흰깨, 볶은것','52009010_해바라기씨, 우성식품','52009030_해바라기씨, 조미한것','61161010_가시오가피순, 데친것','61010020_고비, 말린것, 생것','61010030_고비, 생것, 삶은것','61013020_고추, 풋고추, 꽈리','61164000_넘취 (산채), 생것','61029010_녹색꽃양배추, 삶은것','61166000_누리장나무잎 (산채)','61034020_당귀, 잎, 노지재배','61034030_당귀, 잎, 양액재배','61048030_땅두릅, 잎, 데친것','61048040_땅두릅, 줄기, 생것','61057000_모시대참물 (모시잎)','61059050_무, 알타리무, 뿌리','61167000_물냉이 (워터크레스)','61061010_물쑥, 뿌리, 삶은것','61067040_박, 속 (씨앗포함)','61070030_배추, 호배추, 생것','61074020_부추, 재래종, 생것','61074030_부추, 호부추, 생것','61078010_비트, 뿌리, 삶은것','61078020_비트, 피클, 통조림','61084000_생강, 구근, 국내산','61084010_생강, 구근, 중국산','61090020_순무, 뿌리, 삶은것','61090060_순무, 잎, 소금절임','61091000_시금치, 생것, 노지','61102010_아스파라거스, 통조림','61102020_아스파라거스, 삶은것','61108000_양파, 생것, 국내산','61108020_양파, 생것, 중국산','61116000_염교 (락교), 생것','61118010_오이, 생것, 개량종','61118030_오이, 생것, 재래종','61126020_유채, 꽃대, 삶은것','61140000_곰취 (산채), 생것','61148000_토란대, 생것, 생것','61187000_파드득나물 (삼엽채)','61155010_호박, 개량종, 생것','61155020_호박, 단호박, 생것','61155030_호박, 애호박, 생것','61156000_호박, 호박잎, 생것','61156020_호박, 호박잎, 찐것','71001010_검은비늘버섯, 말린것','71021000_율무느타리버섯, 생것','71023010_큰느타리버섯, 데친것','81003090_귤, 통조림, 무가당','81005010_대추, 풋대추, 생것','81007010_딸기, 생과, 재래종','81007020_딸기, 생과, 개량종','81013010_머루, 생과, 개량종','81013040_머루, 생과, 재래종','81018090_배, 통조림, 서양배','81018100_배, 통조림, 일본배','81019000_버찌, 생과, 국내산','81019010_버찌, 생과, 미국산','81019020_버찌, 생과, 일본산','81020010_복숭아, 생과, 황도','81020020_복숭아, 생과, 백도','81020030_복숭아, 생과, 천도','81023030_사과, 생과, 아오리','81028000_수박, 생과, 적육질','81028010_수박, 생과, 황육질','81036020_올리브, 피클, 청과','81036030_올리브, 피클, 숙과','81039010_자두, 생과, 후무사','81042010_크린베리, 쥬스칵테일','81048040_포도, 생과, 세레단','81050010_후르츠샐러드, 통조림','81051010_후르츠칵테일, 통조림','91052000_쇠고기, 한우, 갈비','91025000_쇠고기, 한우, 등심','91026000_쇠고기, 한우, 사태','91027000_쇠고기, 한우, 설도','91028000_쇠고기, 한우, 안심','91029000_쇠고기, 한우, 양지','91030000_쇠고기, 한우, 우둔','91031000_쇠고기, 한우, 육포','91033000_쇠고기, 한우, 채끝','93001070_닭고기, 후라이드치킨','93002000_닭고기, 가슴, 날것','93003000_닭고기, 날개, 날것','93005000_닭고기, 다리, 날것','94003010_거위, 살코기, 날것','94005010_꿩고기, 날것, 숫꿩','94005020_꿩고기, 날것, 암꿩','94011000_염소고기 (산양고기)','95013010_전통떡갈비, 한성기업','96001100_샌드위치, 햄과 치즈','96002030_햄버거 (패스트푸드)','101001010_계란, 전란, 삶은것','101002010_계란, 난백, 삶은것','101003010_계란, 난황, 삶은것','105001000_거위알, 전란, 생것','111001060_가다랭이, 가미통조림','111001070_가다랭이, 유지통조림','111024000_넙치 (광어), 생것','111024010_넙치 (광어), 껍질','111072030_방어, 훈제유지통조림','111086020_복어, 까치복, 생것','111086030_복어, 까칠복, 생것','111086040_복어, 매리복, 생것','111086060_복어, 자주복, 생것','111086070_복어, 흰점복, 생것','111088030_볼락, 불볼락, 생것','111103050_상어, 돔발상어, 알','111135000_은어, 생것, 자연산','111135050_은어, 생것, 양식산','111140070_장어, 붕장어, 생것','111140130_장어, 뱀장어, 민물','111144000_전갱이, 생것, 성어','111148090_정어리, 토마토통조림','112010060_굴, 튀김옷입혀튀긴것','112015020_백합(대합), 삶은것','112015060_백합(대합), 구운것','112015070_백합(대합), 말린것','112026020_보말고둥, 가미통조림','112036020_왕우럭 (왕우렁??)','112041030_전복, 말전복, 생것','112041040_전복, 참전복, 생것','112042000_접시조개 (비단조개)','113001000_가재, 갯가재, 생것','113005030_게, 대게 (영덕게)','113021010_새우, 대하, 말린것','113026000_새우, 잔새우, 생것','113027000_새우, 젓새우, 생것','113027020_새우, 젓새우, 조림','114006000_문어, 백문어, 생것','114007000_문어, 피문어, 생것','114008090_오징어, 젓, 내장젓','116002020_국, 북어국, 오뚜기','121003010_김 (참김), 마른김','121003050_김 (참김), 구운것','121003080_김 (참김), 조선김','121003090_김 (참김), 초밥김','121010000_미역, 생것, 자연산','121010010_미역, 생것, 양식산','121010070_미역, 줄기, 염장품','121022040_파래, 납작파래,생것','132001000_크림, 20% 유지방','132001010_크림, 38% 유지방','132002000_크림, 45% 유지방','132006000_크림, 하프 앤 하프','133004010_아이스크림, 딸기썬대','135001030_요구르트, 매일 GG','153014050_칵테일, 위스키사우어','161014030_샐러드드레싱, 프렌치','161014040_샐러드드레싱, 분리형','161014050_샐러드드레싱, 유화형','161027030_다시다, 쇠고기다시다','171017000_선인장, 토종, 줄기','171017010_선인장, 토종, 열매','171007020_인삼, 백삼, 말린것','171007040_인삼, 홍삼, 엑기스','171009000_팽창제, 효모, 생것','171025020_허브, 말린것, 민트','11002040_귀리, 도정곡, 쌀귀리','11005040_메밀, 메밀가루, 알곡','11012050_밀, 도정곡, 신미찰밀','11014020_보리, 겉보리, 보리쌀','11014030_보리, 겉보리, 통보리','11023020_시리얼, 라이스크리스피','11023030_시리얼, 아몬드후레이크','12009020_죽, 참치죽, 레토르트','12009030_죽, 참치죽, 동원산업','13003010_국수, 생국시, 풀무원','13007040_라면, 맛보면, 빙그레','13007070_라면, 안성탕면, 김치','13011010_만두, 냉동, 고기만두','13011030_만두, 냉동, 김치만두','13012000_메밀국수, 생것, 생것','13016010_스파게티 (패스트푸드)','13016020_스파게티, 레토르트식품','13018010_레또 그라탕, 제일제당','13019090_스프, 양파스프, 분말','13019130_스프, 크림스프, 분말','13020010_엔칠라다 (패스트푸드)','14014000_브레드스틱, 도미노피자','15004030_케이크, 당근케이크가루','15004090_케이크, 엔젤푸드케이크','15004120_케이크, 쵸코케이크가루','15005010_크로아쌍, 계란과 치즈','15007231_피자, 페퍼로니, 냉동','16007250_쿠키, 칙촉, 롯데제과','16012080_스낵, 꽃게랑, 빙그레','16012090_스낵, 꿀꽈배기, 농심','16012100_스낵, 마르쏘, 빙그레','16012120_스낵, 바나나킥, 농심','18016010_이유식, 오트밀, 분말','22002030_감자튀김, 후렌치후라이','24008000_전분, 종가시나무도토리','32001030_껌, 월드풍선껌, 롯데','32001080_껌, 후라보노껌, 롯데','32003020_사탕, 누가사탕, 땅콩','32003050_사탕, 누가사탕, 살구','33002070_쵸코렛, 빼빼로(롯데)','33002110_쵸코렛, 엘리스, 롯데','41002010_녹두, 말린것, 국내산','41002020_녹두, 말린것, 중국산','41003020_녹두전, 빈대떡, 냉동','41013000_팥, 계피팥 (회색팥)','41017000_쥐눈이콩 (검정소립콩)','42003040_대두, 노란콩, 삶은것','43004010_두부, 순두부, 풀무원','43005010_두부, 연두부, 풀무원','51005020_땅콩, 말린것, 대립종','51005030_땅콩, 말린것, 중립종','51005040_땅콩, 말린것, 소립종','52001010_참깨, 검정깨, 말린것','52001020_참깨, 검정깨, 볶은것','61010010_고비, 말린것, 삶은것','61013010_고추, 풋고추, 개량종','61013030_고추, 풋고추, 재래종','61013060_고추, 붉은고추, 생것','61017030_곰취 (산채), 삶은것','61164010_넘취 (산채), 삶은것','61048050_땅두릅, 줄기, 데친것','61058000_모시딱지 (울릉도산채)','61169000_방울다다기양배추, 생것','61074021_부추, 재래종, 삶은것','61074040_부추, 호부추, 삶은것','61087000_쇠귀나물, 뿌리, 생것','61090030_순무, 뿌리, 소금절임','61091010_시금치, 생것, 하우스','61105000_피마자잎 (아주까리잎)','61111010_얼레지, 뿌리, 말린것','61112010_엉겅퀴, 말린것, 생건','61112020_엉겅퀴, 말린것, 숙건','61116010_염교 (락교), 장아찌','61117000_영아자 (산채), 생것','61124010_울외장아찌 (나라쓰게)','61126040_유채, 어린것 (동채)','61148010_토란대, 말린것, 생것','61148030_토란대, 생것, 삶은것','61149040_토마토, 퓨레, 통조림','61186000_토스카노 (잎브로콜리)','61155140_호박, 국수호박, 생것','61155160_호박, 단호박, 삶은것','61155170_호박, 애호박, 삶은것','61155040_호박, 서양호박, 생것','61155060_호박, 늙은호박, 생것','61156010_호박, 호박잎, 삶은것','81020090_복숭아, 생과, 미숙과','81020070_복숭아, 통조림, 백도','81020080_복숭아, 통조림, 황도','81023040_사과, 생과, 조나골드','81039020_자두, 일본자두, 생과','81048030_포도, 생과, 델라웨어','81048050_포도, 생과, 캠벌얼리','82001030_이유식, 배, 으깬형태','82003010_이유식, 사과, 비치넛','91016000_쇠고기, 수입우, 등심','91022000_쇠고기, 수입우, 우둔','91036000_쇠고기, 부산물, 곱창','91037000_쇠고기, 부산물, 꼬리','91038000_쇠고기, 부산물, 대장','91042000_쇠고기, 부산물, 천엽','91045000_쇠고기, 부산물, 우족','92001000_돼지고기, 갈비, 날것','92003000_돼지고기, 등심, 날것','92004000_돼지고기, 사태, 날것','92006000_돼지고기, 안심, 날것','93001011_닭고기, 살코기, 날것','93002010_닭고기, 가슴, 구운것','93002011_닭고기, 가슴, 삶은것','93002040_닭고기, 가슴살, 날것','93002090_닭고기, 가슴, KFC','93003010_닭고기, 날개, 구운것','93003011_닭고기, 날개, 삶은것','93003080_닭고기, 핫윙, KFC','93005010_닭고기, 다리, 구운것','93005011_닭고기, 다리, 삶은것','93005040_닭고기, 다리살, 날것','93011000_닭고기, 부산물, 내장','94003020_거위, 살코기, 구운것','94010030_양고기, 살코기, 날것','95002020_동그랑땡, 새우, 냉동','95002030_동그랑땡, 야채, 냉동','95003020_햄, 런천미트, 진주햄','96001150_샌드위치, 달걀, 치즈','105001010_거위알, 전란, 삶은것','106001010_샌드위치, 계란과 치즈','111001020_가다랭이, 생것, 흰살','111005000_가자미, 생것, 가자미','111021050_꽁치통조림,  동원산업','111021060_꽁치, 토마토가미통조림','111044220_돔, 옥돔, 육동가리돔','111062010_명태, 냉동품 (동태)','111062150_명태, 코다리, 구운것','111069040_민어, 튀김옷입혀튀긴것','111086010_복어, 검복, 조미품 ','111088040_볼락, 우럭볼락, 생것','111088060_볼락, 황점볼락, 생것','111095000_빙어, 민물빙어, 생것','111095040_빙어, 바다빙어, 생것','111126090_연어, 소금가미, 생것','111135010_은어, 구운것, 자연산','111135060_은어, 구운것, 양식산','111140080_장어, 붕장어, 냉동품','111140090_장어, 붕장어, 뼈튀김','111140100_장어, 칠성장어, 생것','111140120_장어, 뱀장어, 꼼장어','111144040_전갱이, 염건품, 생것','111149010_조기, 염건품 (굴비)','112025000_바지락, 생것, 자연산','112025010_바지락, 생것, 양식산','112041020_전복, 까막전복, 생것','112041100_전복, 통조림, 삶은것','112049000_콩깍지고둥 (털골뱅이)','112056010_피조개, 생것, 자연산','112056020_피조개, 생것, 양식산','113001010_가재, 갯가재, 삶은것','113002000_가재, 바다가재, 생것','113022000_새우, 물렁가시붉은새우','113024000_새우, 보리새우, 생것','113026010_새우, 잔새우, 말린것','113027010_새우, 젓새우, 말린것','113033030_새우, 젓 (토굴육젓)','113033040_새우, 젓 (토굴추젓)','113033070_새우, 젓 (토굴오젓)','114006010_문어, 백문어, 말린것','114007010_문어, 피문어, 말린것','114008070_오징어, 젓, 오징어젓','114008120_오징어, 포, 조미한것','114008180_오징어링튀김, 한성기업','121003070_김 (참김), 간장조림','121003100_김 (참김), 김밥용김','121003120_김, 양반김, 동원산업','121010080_미역, 물미역, 말린것','121022030_파래, 갈파래, 말린것','121022060_파래, 흩파래, 말린것','131002050_우유, 매일 1등급우유','131002070_우유, 밀큐 7,빙그레','131003000_우유, 가공우유, 농후','131003010_우유, 가공우유, 보통','131003060_우유, 가공우유, 탈지','133002120_아이스크림, 8%유지방','135002010_요구르트, 호상, 딸기','151003000_탄산음료, 과일탄산음료','151008020_커피, 분말, 인스턴트','151008160_커피, 맥심, 동서식품','152021050_홍차, 냉홍차, 레몬맛','153007011_브랜디, 특급, 40도','153014010_칵테일, 데킬라선라이즈','153014040_칵테일, 스크류드라이버','161014020_샐러드드레싱, 이탈리안','171011000_누에 동충하초, 말린것','171009010_팽창제, 효모, 말린것','171024000_프로폴리스, 중부지역산','171024010_프로폴리스, 남부지역산','171024020_프로폴리스, 제주지역산','171025010_허브, 말린것, 라벤다','11002030_귀리, 도정곡,  겉귀리','11002010_귀리,  알곡,  도정곡','11005030_메밀, 메밀가루, 도정곡','11019030_옥수수, 단옥수수, 생것','11019040_옥수수, 단옥수수, 찐것','11019050_옥수수, 찰옥수수, 생것','11019070_옥수수, 찰옥수수, 찐것','11020000_옥수수, 옥수수강냉이팽화','12001060_쌀, 멥쌀, 밭벼, 백미','12001090_쌀, 멥쌀, 논벼, 미국','12001100_쌀, 멥쌀, 논벼, 일본','12001110_쌀, 멥쌀, 논벼, 중국','12001120_쌀, 멥쌀, 논벼, 태국','12001130_쌀, 멥쌀, 논벼, 호주','12002010_쌀, 멥쌀, 밭벼, 현미','12007010_즉석밥, 햇반, 제일제당','12009010_죽, 야채맛죽, 인스턴트','13012010_메밀국수, 생것, 삶은것','13019010_스프, 쇠고기스프, 분말','13019060_스프, 야채스프, 오뚜기','13019070_스프, 양송이스프, 분말','13019150_스프, 크림스프, 오뚜기','13026030_칼국수, 인스턴트, 생것','14015050_비스켓,버터밀크(웬디스)','14018020_식빵, 프렌치버터 토스트','14019000_옥수수빵, 분말로 만든것','15006100_파이, 애플파이, 버거킹','15006110_파이, 체리파이, 버거킹','15006150_파이, 피칸파이, 버거킹','15007120_피자, 야채(패스트푸드)','15007130_피자, 치즈(패스트푸드)','16007100_과자, 애플쨈, 롯데제과','16007120_크래커, 제크, 롯데제과','16007130_비스켓, 쵸이스,롯데제과','16007280_크랙커, 토픽, 롯데제과','16012110_스낵, 맛동산, 해태제과','16012150_스낵, 야채타임, 빙그레','16012180_스낵, 자키자키, 빙그레','16013050_파이, 오예스, 해태제과','17011000_쌀, 멥쌀, 논벼, 절편','17012000_쌀, 멥쌀, 논벼, 증편','18007060_이유식, 쌀죽, 우유첨가','21002010_감자, 구운감자, 웬디스','21003010_감자, 으깬것, 우유첨가','32001070_껌, 쥬시후레시껌, 롯데','32003070_사탕, 롯데사랑방, 롯데','32009020_카라멜(밀크), 동양제과','32009030_카라멜(땅콩), 동양제과','33002020_초콜렛, 가나, 롯데제과','33002090_초콜렛, 새알, 동양제과','43002010_두부, 동두부, 냉동건조','43006000_두부, 튀긴두부 (유부)','43010000_콩, 베이크드빈, KFC','51002011_도토리, 가루, 졸참나무','51006040_땅콩, 꿀땅콩, 우성식품','51006060_땅콩, 맛땅콩, 우성식품','51006080_땅콩, 알땅콩, 우성식품','51021020_코코넛, 말린것, 구운것','61013070_고추, 붉은고추, 말린것','61060000_물강활 (산채), 말린것','61169010_방울다다기양배추, 삶은것','61070050_배추, 호배추, 소금절임','61087010_쇠귀나물, 뿌리, 삶은것','61108060_양파, 어니언링, 버거킹','61117010_영아자 (산채), 데친것','61117020_영아자 (산채), 말린것','61122010_왜우산풀, 말린것, 생건','61122020_왜우산풀, 말린것, 숙건','61142000_취나물 (산채),  생것','61142010_취나물 (산채), 말린것','61142020_취나물 (산채), 삶은것','61148020_토란대, 말린것, 삶은것','61188000_파프리카, 국산, 녹색과','61188010_파프리카, 국산, 적색과','61188030_파프리카, 국산, 황색과','61188040_파프리카, 외산, 적색과','61188060_파프리카, 외산, 황색과','61155150_호박, 국수호박, 삶은것','61155050_호박, 서양호박, 삶은것','61155070_호박, 늙은호박, 말린것','61155080_호박, 늙은호박, 삶은것','61155090_호박, 애호박, 호박고지','61155100_호박, 호박나물 (산채)','71016090_표고버섯, 참나무, 가루','81003060_귤, 과일쥬스, 농축과즙','81003080_귤, 과일쥬스, 천연과즙','81012010_매실, 우메보시 (염건)','81023130_사과, 과일쥬스, 캔쥬스','81039030_자두, 일본자두, 말린것','81048020_포도, 골덴마스컷, 큰것','81048130_포도, 과일쥬스, 캔쥬스','82001010_이유식, 배, 고형분포함','82003090_이유식, 맑은쥬스, 사과','91002000_송아지고기, 갈비, 날것','91003000_송아지고기, 등심, 날것','91004000_송아지고기, 설도, 날것','91006000_송아지고기, 어깨, 날것','91007000_송아지고기, 채끝, 날것','92001010_돼지고기, 갈비, 구운것','92001020_돼지고기, 갈비, 삶은것','92002000_돼지고기, 뒷다리, 날것','92003010_돼지고기, 등심, 구운것','92003030_돼지고기, 등심, 삶은것','92004010_돼지고기, 사태, 구운것','92006010_돼지고기, 안심, 구운것','92007000_돼지고기, 앞다리, 날것','92018010_돼지고기, 불고기, 양념','92019020_탕수육, 냉동, 소스포함','93001010_닭고기, 살코기, 삶은것','93001030_닭고기, 살코기, 구운것','93001040_닭고기, 밀가루입혀튀긴것','93001060_닭고기, 튀김옷입혀튀긴것','93001100_닭고기, 치킨, 롯데리아','93002050_닭고기, 가슴살, 튀긴것','93002060_닭고기, 가슴살, 구운것','93002070_닭고기, 가슴살, 볶은것','93005050_닭고기, 다리살, 구운것','93005060_닭고기, 다리살, 튀긴것','93005070_닭고기, 다리살, 볶은것','93005120_닭고기, 넓적다리, 날것','93005160_치킨, 넓적다리, KFC','94004070_고래고기, 염장품, 지육','94010060_어린양고기, 갈비, 날것','94010090_어린양고기, 다리, 날것','94010110_어린양고기, 어깨, 날것','94016020_토끼고기, 집토끼, 날것','95003030_햄, 로스팜, 롯데햄우유','95005040_베이컨, 베이컨, 진주햄','95007110_햄, 갈비맛골드, 진주햄','95007140_햄, 덩크후랑크, 진주햄','95007190_햄, 스모크햄, 동원산업','95007200_햄, 즉석구이햄, 진주햄','96001120_샌드위치, 햄, 서브웨이','96002110_햄버거, 빅맥, 맥도날드','111001010_가다랭이, 생것, 붉은살','111005020_가자미, 생것, 돌가자미','111005040_가자미, 생것, 범가자미','111005060_가자미, 생것, 용가자미','111005070_가자미, 생것, 줄가자미','111005080_가자미, 생것, 참가자미','111005090_가자미, 생것, 혀가자미','111011040_고등어, 염장품 (자반)','111035010_눈퉁멸, 말린것, 부채꼴','111069050_민어, 조미건품 (암치)','111088020_볼락, 누루시볼락, 생것','111095010_빙어, 민물빙어, 자건품','111095030_빙어, 민물빙어, 장조림','111095050_빙어, 바다빙어, 말린것','111095060_빙어, 바다빙어, 구운것','111126100_연어, 소금가미, 구운것','111140020_장어, 먹장어 (꼼장어)','111140110_장어, 칠성장어, 말린것','111144050_전갱이, 염건품, 구운것','111156150_다랑어, 황다랑어, 생것','112001040_가리비, 튀김옷입혀튀긴것','112002000_가리비, 조개관자, 생것','112032020_새조개, 조개살, 말린것','112040010_조개, 재치조개 (재첩)','112044000_조개살, 조개관자, 생것','112046010_진주담치, 생것, 자연산','112046020_진주담치, 생것, 양식산','113002010_가재, 바다가재, 삶은것','113024010_새우, 보리새우, 삶은것','113033050_새우, 젓 (토굴동백하)','113033060_새우, 젓 (토굴대때기)','113034000_새우, 민물새우, 토하젓','117001020_샌드위치, 참치,서브웨이','121022020_파래, 가시파래, 말린것','121022050_파래, 창자파래, 말린것','131003020_우유, 가공우유, 고지방','131003030_우유, 가공우유, 저지방','133002110_아이스크림, 12%유지방','134002020_쉐이크, 딸기, 맥도날드','135001010_요구르트, 남양 요구르트','135001020_요구르트, 매일 요구르트','135002040_요구르트, 호상, 탈지유','136005010_치즈, 남양 로젠하임치즈','142015030_커피크림, 액상, 유지방','151004020_탄산음료, 소다(탄산)수','151006030_탄산음료, 콜라, 웬디스','151006040_탄산음료, 콜라, 체리콕','151008071_커피, 인스턴트 커피용액','151009050_코코아, 핫쵸코, 버거킹','151009060_코코아, 핫쵸코, 웬디스','152019000_현미녹차, 차 (건조품)','161018030_식초, 과일식초, 감식초','161018070_식초, 과일식초, 배식초','161030030_짜장, 디럭스짜장, 대상','161033040_카레, 디럭스카레, 대상','171025000_허브, 말린것, 로즈마리','11014021_보리, 겉보리, 서둔찰보리','11014022_보리, 겉보리, 두산 8호','11019010_옥수수, 메옥수수, 말린것','11019020_옥수수, 메옥수수, 볶은것','11019060_옥수수, 찰옥수수, 마른것','11022030_옥수수, 옥수수죽, 통조림','12001050_쌀, 멥쌀, 논벼, 쌀가루','12007000_즉석밥, 오곡밥, 제일제당','12011000_쌀, 멥쌀, 논벼, 튀긴쌀','13007001_라면, 조리한것, 스프포함','13007050_라면, 삼양라면, 삼양식품','13011020_만두, 고기만두, 동원산업','13011040_만두, 김치만두, 동원산업','13012020_메밀국수, 마른것, 마른것','13012030_메밀국수, 마른것, 삶은것','13016040_스파게티, 미트소스, 냉동','13019030_스프, 쇠고기스프, 오뚜기','13019120_스프, 콩소메, 물을가한것','13021030_우동, 조리한것, 스프포함','13026020_칼국수, 인스턴트, 반건조','13026040_칼국수, 생칼국수, 풀무원','15004060_케이크, 생크림, 블루베리','15006060_파이, 애플파이, 롯데리아','15006070_파이, 애플파이, 맥도날드','15006090_파이, 체리파이, 맥도날드','15007030_피자, 디럭스(패스트푸드)','15007040_피자, 소시지(패스트푸드)','15007050_피자, 쇠고기(패스트푸드)','15007060_피자, 슈프림(패스트푸드)','15007151_피자, 고기, 채소, 냉동','16007050_비스켓, 샤브레, 해태제과','16007260_크래커, 빼빼로, 롯데제과','16010020_나쵸, 치즈 (패스트푸드)','16012200_스낵, 칼슘 양파링, 농심','16012250_스낵, 프링글즈(오리지날)','16013020_파이, 초코파이, 동양제과','16013030_파이, 초코파이, 롯데제과','16013040_파이, 몽쉘통통, 롯데제과','17004000_쌀, 멥쌀, 논벼, 개피떡','17005000_쌀, 멥쌀, 논벼, 백설기','17007010_쌀, 멥쌀, 논벼, 시루떡','17008000_쌀, 멥쌀, 논벼, 쑥설기','18003010_이유식, 계란죽, 가정조리','18003020_이유식, 과일죽, 가정조리','18003040_이유식, 당근죽, 가정조리','18003060_이유식, 전통죽, 가정조리','18005000_이유식, 보리죽, 우유첨가','18006020_이유식, 쌀, 분말, 거버','18012010_이유식, 마터락, 매일유업','21001030_감자, 구운것, 껍질벗긴것','21006020_감자, 감자샐러드, KFC','21008010_감자, 아침용감자, 웬디스','22001000_감자, 포테이토칩, 튀긴것','22001020_감자, 포테이토칩, 구운것','32001060_껌, 스카시망고스틴, 롯데','33001010_초코바, 블랙바, 롯데제과','33002150_초콜렛, 크런키, 롯데제과','51002012_도토리, 가루, 종가시나무','51006030_땅콩, 커피땅콩, 우성식품','51006070_땅콩, 믹스너트, 우성식품','51015030_아몬드, 칼몬드, 우성식품','61023010_고깔나물 (산채), 말린것','61059140_무, 왜무, 잎 (왜무청)','61068010_밥취나물 (산채), 말린것','61178000_엄나무잎 (개두룹), 생것','61143020_치커리, 잎, 적색, 생것','61149030_토마토, 페이스트, 통조림','61188020_파프리카, 국산, 주황색과','61188050_파프리카, 외산, 주황색과','61155110_호박, 늙은호박, 호박고지','61158010_홍치나물 (산채), 말린것','63002000_양배추샐러드 (코올슬로우)','64001020_이유식, 당근, 고형분포함','71006010_버들송이버섯, 말린것, 갓','81003070_귤, 과일쥬스, 무가당쥬스','81018010_배, 생과, 국내산, 신고','81023120_사과, 과일쥬스, 농축과즙','81028020_수박, 씨없는수박, 적육질','81048010_포도, 골덴마스컷, 작은것','81048090_포도, 과일쥬스, 과즙음료','81048110_포도, 과일쥬스, 농축과즙','81048120_포도, 과일쥬스, 천연과즙','82002040_이유식, 복숭아, 으깬형태','91001000_송아지고기, 살코기, 날것','91002010_송아지고기, 갈비, 구운것','91002020_송아지고기, 갈비, 삶은것','91003010_송아지고기, 등심, 구운것','91003020_송아지고기, 등심, 삶은것','91004010_송아지고기, 설도, 삶은것','91004020_송아지고기, 설도, 볶은것','91005000_송아지고기, 쇠악지, 날것','91006010_송아지고기, 어깨, 구운것','91006020_송아지고기, 어깨, 삶은것','91007010_송아지고기, 채끝, 구운것','91007020_송아지고기, 채끝, 삶은것','91048020_쇠고기, 부산물, 양지국물','91048030_쇠고기, 부산물, 우족국물','91048040_쇠고기, 부산물, 잡뼈국물','91049020_이유식, 쇠고기, 으깬형태','92002010_돼지고기, 뒷다리, 구운것','92008000_돼지고기, 어깨등심, 날것','93001090_닭고기, 맥치킨, 맥도날드','93004030_닭고기, 치킨너겟, 웬디스','93004050_닭고기, 치킨너겟, KFC','94004020_고래고기, 냉동품, 꼬리살','94004060_고래고기, 염장품, 붉은살','94004080_고래고기, 냉동품, 붉은살','94010070_어린양고기, 갈비, 구운것','94010100_어린양고기, 다리, 구운것','94010120_어린양고기, 어깨, 구운것','94010140_어린양고기, 어깨, 삶은것','94015000_칠면조고기, 살코기, 날것','95001020_돈까스, 돈까스, 대림수산','95007130_햄, 더블스포크햄, 진주햄','95007170_햄, 순돈육햄91, 진주햄','95007180_햄, 숯불구이햄, 동원산업','95009010_소시지, 둘리, 롯데햄우유','95009050_소시지, 천하장사, 진주햄','95009060_소시지, 홉소세지, 진주햄','96001060_샌드위치, 아침용(웬디스)','96002080_햄버거, 싱글버거, 웬디스','96002100_햄버거, 더블버거, 웬디스','96002220_햄버거, 치즈버거, 베이컨','96002360_햄버거, 치즈버거, 버거킹','111004010_가오리, 생것, 나비가오리','111004020_가오리, 생것, 노랑가오리','111004030_가오리, 생것, 목탁가오리','111004040_가오리, 생것, 전기가오리','111005010_가자미, 생것, 각시가자미','111005030_가자미, 생것, 문치가자미','111005050_가자미, 생것, 술봉가자미','111062070_명태, 알 (명란), 생것','111095020_빙어, 민물빙어, 설탕조림','111140140_장어, 뱀장어, 바다붕장어','111144090_전갱이, 조미반건품, 생것','111156030_다랑어, 참다랑어, 냉동품','111156050_다랑어, 참다랑어, 말린것','111156060_다랑어, 참다랑어, 구운것','111156140_다랑어, 참다랑어, 샐러드','111156160_다랑어, 황다랑어, 통조림','112002040_가리비, 조개관자, 자건품','112002010_가리비, 조개관자, 냉동품','112002020_가리비, 조개관자, 말린것','112009000_관절매물고둥 (보라골뱅이)','112015080_백합 (대합), 조미통조림','112041070_전복, 통조림, 가미통조림','112045020_조개살, 조개관자, 튀긴것','113005000_게, 대게 (영덕게),생것','117002010_버거, 새우버거, 롯데리아','117002020_버거,휘쉬필레버거(웬디스)','121005020_다시마, 말린것, 긴다시마','131002020_우유, 남양 아인슈타인IQ','131002120_우유, 튼튼우유, 해태유업','131002130_우유, 파스퇴르 후레쉬우유','133006080_아이스크림, 콘, 맥도날드','136005020_치즈, 앙팡치즈, 서울우유','151006010_탄산음료, 콜라, 롯데리아','151006020_탄산음료, 콜라, 루트비어','151006050_탄산음료, 콜라, 코카콜라','151006080_탄산음료, 콜라, 펩시콜라','152021020_홍차, 네스티, 한국네슬레','153005040_맥주, 흑맥주 (4.2도)','161001030_간장, 진간장S, 샘표식품','161009110_된장, 개량식 (양조된장)','161013020_브라운그레이비, 물을가한것','161018080_식초, 과일식초, 사과식초','161018090_식초, 과일식초, 포도식초','161022010_고추냉이 (와사비), 분말','161033060_카레, 바몬드카레, 오뚜기','161036060_케찹, 센스케찹, 동원산업','171025030_허브, 말린것, 골든세이지','171025040_허브, 말린것, 코리아타임','11010010_밀가공식품, 밀가루, 빵가루','11011010_밀가공식품, 밀가루, 강력분','11011020_밀가공식품, 밀가루, 중력분','11011030_밀가공식품, 밀가루, 박력분','11019080_옥수수, 튀김옥수수, 마른것','11022000_옥수수, 옥수수통조림, 가당','11023200_시리얼, 쵸코스, 농심켈로그','11024010_옥수수, 팝콘, 소금, 지방','12001040_쌀, 멥쌀, 논벼, 칠분도미','12001070_쌀, 멥쌀, 밭벼, 칠분도미','12005001_쌀, 찹쌀, 백미, 화선찰벼','13007010_라면, 너구리 순한맛, 농심','13007090_라면, 칼슘 안성탕면, 농심','13008010_컵라면, 새우탕큰사발, 농심','13008040_컵라면, 짜장 큰사발, 농심','13019040_스프, 쇠고기야채스프, 분말','13019100_스프, 양파스프, 물을가한것','13019140_스프, 크림스프, 물을가한것','14012010_베이걸, 건포도계피, 토스트','14018030_식빵, 후렌치토스트, 버거킹','14018040_식빵, 후렌치토스트(웬디스)','15007230_피자, 페퍼로니(패스트푸드)','16007040_비스켓, 브라우닝, 동양제과','16007060_비스켓, 이츠초코, 동양제과','16007070_비스켓, 마가렛트, 롯데제과','16007080_비스켓, 버터쿠키, 나비스코','16007110_과자, 엄마손파이, 롯데제과','16007140_쿠키, 초코칩쿠키, 롯데제과','16007160_비스켓, 하비스트, 롯데제과','16007240_쿠키, 초코칩쿠키, 동양제과','16012220_스낵, DHA 새우깡, 농심','17004010_쌀, 멥쌀, 논벼, 쑥개피떡','17010010_쌀, 찹쌀, 인절미, 콩고물','17010020_쌀, 찹쌀, 인절미, 팥고물','18003030_이유식, 과일푸딩, 가정조리','18006030_이유식, 쌀, 바나나, 분말','18010110_이유식, 오트밀죽, 우유첨가','25001010_이유식, 고구마, 고형분포함','32001050_껌, 슈가리스자일리톨, 롯데','32003110_사탕, 스카치세가지맛, 롯데','32003120_사탕, 요구르트300, 롯데','33001020_초코바, 아트라스, 롯데제과','33001030_초코바, 자유시간, 해태제과','42001020_대두, 검정콩, 생것, 가루','51006050_땅콩, 너트프라자, 우성식품','61004010_강남조나물 (산채), 말린것','61013031_고추, 풋고추, 녹광, 홍색','61013032_고추, 풋고추, 녹광, 녹색','61165000_누룩치 (산채), 잎, 생것','61052010_마늘, 구근, 생것(국내산)','61052011_마늘, 구근, 생것(중국산)','61108050_양파링, 냉동, 오븐에데운것','61178010_엄나무잎 (개두룹), 데친것','61143000_치커리, 잎, 푸른색, 생것','63002020_양배추, 코올슬로우(웬디스)','63002030_샐러드, 코올슬로우, KFC','64003030_이유식, 종합야채, 으깬형태','71006020_버들송이버섯, 말린것, 줄기','71016030_표고버섯, 물갬나무, 말린것','71016040_표고버섯, 신갈나무, 말린것','81003050_귤, 생과, 보통 (임온주)','81018020_배, 생과, 국내산, 장심랑','81035070_오렌지, 과즙음료 (무가당)','81041020_참외, 흰색과육 (금싸라기)','81045040_파인애플, 과일쥬스, 캔쥬스','81047020_패션후르츠, 생과, 자색과육','81047030_패션후르츠, 생과, 황색과육','82002010_이유식, 복숭아, 고형분포함','82003050_이유식, 사과소스, 으깬형태','82014010_이유식, 맑은쥬스, 종합과일','91001010_송아지고기, 살코기, 삶은것','91005010_송아지고기, 쇠악지, 구운것','91005020_송아지고기, 쇠악지, 삶은것','91034000_쇠고기, 부산물, 간, 날것','91041000_쇠고기, 부산물, 양 (위)','91046000_쇠고기, 부산물, 혀, 날것','91049010_이유식, 쇠고기, 고형분포함','92003020_돼지고기, 등심, 브로일한것','92006020_돼지고기, 안심, 브로일한것','92008010_돼지고기, 어깨등심, 구운것','93001120_닭고기, 치킨텐더즈, 버거킹','93004010_닭고기. 치킨너겟, 맥도날드','93005130_닭고기,  넓적다리, 구운것','93005200_닭고기,  넓적다리살, 날것','93009000_닭고기, 부산물, 간, 날것','94015010_칠면조고기, 살코기, 구운것','94016030_토끼고기, 집토끼, 조리한것','95009040_소시지, 점프후랑크, 진주햄','95014020_핫도그, 칠리 (패스트푸드)','96001130_샌드위치, 볼로냐, 서브웨이','96002140_햄버거, 데리버거, 롯데리아','96002160_햄버거, 리브샌드, 롯데리아','96002170_햄버거, 맥디엘티, 맥도날드','96002180_햄버거, 바버거, 로이로저스','96002200_햄버거, BB버거, 롯데리아','96002330_햄버거, 치즈버거, 롯데리아','96002340_햄버거, 치즈버거, 맥도날드','96002490_햄버거, 치킨버거, 롯데리아','111062080_명태, 알 (명란), 명란젓','111072020_방어, 생것, 양식, 어린것','111103120_상어, 청새리상어, 지느러미','111140060_장어, 뱀장어 (장치), 간','111144100_전갱이, 조미반건품, 구운것','111156090_다랑어, 고추참치, 동원산업','111156110_다랑어, 야채참치, 동원산업','111156120_다랑어, 짜장참치, 동원산업','116001010_게맛살, 생생게맛살, 진주햄','116001020_게맛살, 싱싱맛살, 동원산업','116011000_어육햄, 어육혼합핫도그소시지','117002000_버거, 휘쉬버거(패스트푸드)','117002030_버거,휘시필레버거(맥도날드)','121005030_다시마, 말린것, 삼석다시마','121005040_다시마, 말린것, 이구다시마','131002090_우유, 생큐 4.3, 빙그레','131002100_우유, 아인슈타인, 남양유업','133002060_아이스크림, 맥스, 롯데제과','133003020_아이스크림, 소프트, 바닐라','133004050_아이스크림, 딸기, 하겐다즈','134002010_쉐이크, 딸기 (패스트푸드)','142015040_커피크림, 액상, 식물성지방','151005010_탄산음료, 사이다, 롯데리아','151006070_탄산음료, 콜라, 펩시라이트','151008130_커피, 맥스웰화인, 동서식품','151008180_커피, 무카페인커피, 웬디스','161009080_된장, 일반 된장, 대림수산','161009090_된장, 찌개 된장, 대림수산','171007030_인삼, 홍삼, 뿌리, 말린것','171008020_팽창제, 베이킹파우더, 인산','11009020_밀가공식품, 밀가루, 튀김가루','11009050_밀가공식품, 밀가루, 부침가루','11023080_시리얼, 코코팝스, 농심켈로그','11023210_시리얼, 쵸코첵스, 농심켈로그','11023280_시리얼, 하니첵스, 농심켈로그','11023290_시리얼, 후르트링, 농심켈로그','12008000_쌀, 멥쌀, 논벼, 죽, 백미','12008020_쌀, 멥쌀, 논벼, 죽, 현미','13007020_라면, 너구리 얼큰한맛, 농심','13008020_컵라면, 육개장 사발면, 농심','13019020_스프, 쇠고기스프, 물을가한것','13019080_스프, 양송이스프, 물을가한것','13019110_스프, 콩소메, 분말, 젤라틴','13019160_스프, 크림스프, 아스파라거스','15007160_피자, 콤비네이션(패스트푸드)','15007220_피자, 팬피자, 치즈, 피자헛','16007090_비스켓, 빠다코코낫, 롯데제과','17006020_쌀, 멥쌀, 논벼, 송편, 깨','18001020_유아용과자, 베이비쿠키, 거버','18006060_이유식, 쌀, 바나나, 사과즙','18007050_이유식, 쌀죽, 우유, 바나나','18010010_이유식, 오트밀, 분말, 거버','18014010_이유식, 쎄레락1, 한국네슬레','18014020_이유식, 쎄레락2, 한국네슬레','18014030_이유식, 쎄레락3, 한국네슬레','21003020_감자, 으깬것, 전유와버터첨가','21004020_감자, 매쉬드포테이토, KFC','21005010_감자, 해쉬브라운(패스트푸드)','22002010_감자튀김, 후렌치후라이, 냉동','22002080_감자, 후렌치후라이, 맥도날드','22002120_감자, 후렌치 후라이, 웬디스','33001040_초코바, 핫브레이크, 동양제과','41014000_팥, 붉은팥, 말린것, 국내산','41014010_팥, 붉은팥, 말린것, 중국산','43009020_두유, 베지밀 애덜트, 정식품','43009030_두유, 베지밀 인펀트, 정식품','51015040_아몬드, 하니아몬드, 우성식품','51026020_땅콩, 머거본 호두, 우성식품','61017010_곰취 (산채), 말린것, 야생','61017020_곰취 (산채), 말린것, 재배','61165010_누룩치 (산채), 잎, 삶은것','61165020_누룩치 (산채), 줄기, 생것','61059160_무, 조선무, 잎 (조선무청)','61082000_삼나물 (울릉도산채), 말린것','61108070_양파, 어니언링 (패스트푸드)','61132010_줄나물 (울릉도산채), 말린것','61135000_참나물 (산채), 생것, 야생','61135030_참나물 (산채), 생것, 재배','64001040_이유식, 당근, 분말, 하인즈','81034000_오디, 생과, 흑과 (개량종)','81034020_오디, 생과, 흑과 (재래종)','81040000_그레이프후르츠 (자몽), 생과','81045010_파인애플, 과일쥬스, 농축과즙','81045030_파인애플, 과일쥬스, 천연과즙','82003020_이유식, 사과, 분말, 하인즈','82003030_이유식, 사과소스, 고형분포함','91014000_쇠고기, 수입우, 갈비, 날것','91017000_쇠고기, 수입우, 사태, 날것','91018000_쇠고기, 수입우, 설도, 날것','91020000_쇠고기, 수입우, 안심, 날것','91021000_쇠고기, 수입우, 양지, 날것','91024000_쇠고기, 수입우, 채끝, 날것','91032000_쇠고기, 한우, 장정 (목심)','91034010_쇠고기, 부산물, 간, 삶은것','91043000_쇠고기, 부산물, 피 (선지)','91044000_쇠고기, 부산물, 허파, 날것','91047010_쇠고기, 한우, 불고기, 양념','92010000_돼지고기, 부산물, 간, 날것','93003040_닭고기, 버팔로윙, 도미노피자','93004020_닭고기, 치킨맥너겟, 맥도날드','93005210_닭고기,  넓적다리살, 구운것','93005220_닭고기,  넓적다리살, 볶은것','93005230_닭고기,  넓적다리살, 튀긴것','93006010_닭고기, 목, 밀가루입혀튀긴것','93006020_닭고기, 목, 튀김옷입혀튀긴것','93012000_닭고기, 부산물, 심장, 날것','94010080_어린양고기, 갈비, 브로일한것','94010130_어린양고기, 어깨, 브로일한것','94015020_칠면조고기, 살코기, 약불익힘','95001030_돈까스, 미니돈까스, 대림수산','95001040_돈까스, 순살돈까스, 동원산업','95002010_동그랑땡, 동그랑땡, 대림수산','95007120_햄, 구운 소금구이맛, 진주햄','95007150_햄, 동그랑땡 구이맛, 진주햄','95007160_햄, 불고기스모크햄, 한성기업','96002130_햄버거, 주니어햄버거, 웬디스','96002190_햄버거, 불고기버거, 롯데리아','96002210_햄버거, 빅클래식버거, 웬디스','96002300_햄버거, 싱글치즈버거, 웬디스','96002320_햄버거, 치즈버거, 로이로저스','96002380_햄버거, 더블치즈버거, 버거킹','96002390_햄버거, 더블치즈버거, 웬디스','96002500_햄버거, 치킨샌드위치, 버거킹','96002510_햄버거, 치킨샌드위치, KFC','96002540_햄버거, 쿼터파운더, 맥도날드','101007010_계란, 스크렘블 (패스트푸드)','107001020_이유식, 계란노른자, 으깬형태','111140030_장어, 뱀장어 (장치), 생것','111156040_다랑어, 참다랑어, 튀김냉동육','111156080_다랑어, 참다랑어, 유지통조림','111156130_다랑어, 후레쉬참치, 동원산업','111156170_다랑어, 황다랑어, 유지통조림','111156180_다랑어, 황다랑어, 가미통조림','112002030_가리비, 조개관자, 튀김냉동품','112015030_백합(대합), 튀김옷입혀튀긴것','112015040_백합(대합), 통조림, 고형분','113005010_게, 대게 (영덕게), 삶은것','113005040_게, 대게 (영덕게), 통조림','113019060_새우, 꽃새우 (독새우), 젓','113027030_새우, 젓새우, 젓 (백하젓)','113028030_새우, 중하 (시바새우), 젓','114008080_오징어, 젓, 오징어젓, 양념','114008160_오징어숯불구이(포), 한성기업','116002010_국, 북어국, 인스턴트, 건조','117001010_샌드위치, 생선 (패스트푸드)','121003020_김 (참김), 마른김, 상급품','121003030_김 (참김), 마른김, 중급품','121003040_김 (참김), 마른김, 하급품','121010090_국, 미역국, 인스턴트, 건조','131002040_우유, 로히트-1,파스퇴르유업','131003090_우유, 밀큐 커피 우유,빙그레','131003100_우유, 고칼슘우유, 롯데햄우유','131005190_이유식, 아기사랑1, 남양유업','131005200_이유식, 아기사랑2, 남양유업','133002040_아이스크림, 누크바, 롯데제과','133002070_아이스크림, 셀렉션, 롯데제과','133002090_아이스크림, 월드콘, 롯데제과','133002100_아이스크림, 조안나, 롯데제과','133003070_아이스크림, 바닐라, 하겐다즈','133005040_아이스크림, 초콜렛, 하겐다즈','134003010_쉐이크, 바닐라 (패스트푸드)','134004020_쉐이크, 초콜렛쉐이크, 버거킹','134004030_쉐이크, 쵸콜렛 (패스트푸드)','135001160_요구르트, 장에는 GG(사과)','135001190_요구르트, 장에는 GG(포도)','151006160_탄산음료, 콜라, 저칼로리콜라','151006100_탄산음료, 콜라, 다이어트펩시','151008170_커피, 맥심커피믹스, 동서식품','151010000_드링크, 영비천에스, 일양약품','161014010_샐러드드레싱, 사우전드아일랜드','161022020_고추냉이 (와사비), 페이스트','161033050_카레, 레또 핫카레, 제일제당','11009010_밀가공식품, 밀가루, 도우넛가루','11009040_밀가공식품, 밀가루, 핫케익가루','11023110_시리얼, 콘푸레이크, 농심켈로그','11023140_시리얼, 콘푸로스트, 농심켈로그','11023270_시리얼, 하니오트밀, 농심켈로그','11023300_시리얼, 후르츠너트, 농심켈로그','12006000_쌀, 멥쌀, 논벼, 쌀밥, 백미','12006020_쌀, 멥쌀, 밭벼, 쌀밥, 백미','12006040_쌀, 멥쌀, 논벼, 쌀밥, 현미','12010000_쌀, 멥쌀, 논벼, 미음, 백미','12010020_쌀, 멥쌀, 논벼, 미음, 현미','13007080_라면, 진라면(매운맛), 오뚜기','13007100_컵라면, 캡틴 매운탕면, 빙그레','13008060_컵라면, 큰사발면(김치), 농심','13008070_컵라면, 튀김우동 큰사발, 농심','13017010_스파게티와 미트볼 (패스트푸드)','15007110_피자, 씬크리스피,치즈, 피자헛','15007210_피자, 크러스트, 치즈, 피자헛','16007270_크래커, 아몬드빼빼로, 롯데제과','16012050_스낵, 고래밥(매콤), 동양제과','16012070_스낵, 꼬깔콘(고소), 롯데제과','16013080_파이, 초코지오 초코라, 빙그레','17013000_쌀, 찹쌀, 찹쌀떡 (찹쌀모찌)','18001010_유아용과자, 베이비비스켓, 거버','18001030_유아용과자, 보리, 분말, 거버','18001040_유아용과자, 애니멀크래커, 거버','18010020_이유식, 오트밀, 바나나, 분말','18010050_이유식, 오트밀, 사과, 바나나','18011050_이유식, 종합씨리얼죽, 우유첨가','18013040_이유식, 스텝 엄선1, 남양유업','18013050_이유식, 스텝 엄선2, 남양유업','18013060_이유식, 스텝 엄선3, 남양유업','21002020_감자, 베이크드포테이토,치즈소스','21002040_감자, 구운감자, 치즈, 웬디스','21006010_감자, 감자샐러드 (패스트푸드)','22001010_감자, 포테이토칩 (패스트푸드)','22002070_감자, 프렌치포테이토, 롯데리아','22002090_감자튀김, 후렌치후라이, 버거킹','22002130_감자튀김, 후렌치후라이, KFC','25001030_이유식, 고구마, 분말, 하인즈','33002030_쵸콜렛, 땅콩쵸코볼, M&M-s','33002080_쵸콜렛, 새알쵸콜렛, M&M-s','42003010_대두, 노란콩, 말린것, 국내산','42003020_대두, 노란콩, 말린것, 미국산','42003030_대두, 노란콩, 말린것, 중국산','61013033_고추, 풋고추, 시레나, 연두색','61013034_고추,  풋고추, 시레나, 녹색','61013061_고추, 붉은고추, 생것, 수비초','61016000_곤드레 (산채), 말린것, 재배','61016010_곤드레 (산채), 말린것, 야생','61165030_누룩치 (산채), 줄기, 삶은것','61073000_부지갱이 (울릉도산채), 말린것','61135010_참나물 (산채), 말린것, 야생','61135020_참나물 (산채), 말린것, 재배','71016020_표고버섯, 리기다소나무, 말린것','71016050_표고버섯, 참나무, 생것, 생것','81001031_감, 연시, 얼린것 (아이스감)','82001070_이유식, 유아용쥬스, 배, 거버','82002030_이유식, 복숭아, 분말, 하인즈','82008050_이유식, 사과, 살구, 으깬형태','82009020_이유식, 맑은쥬스, 사과, 체리','82011010_이유식, 맑은쥬스, 사과, 포도','91008000_송아지고기, 부산물, 간, 날것','91009000_송아지고기, 부산물, 골, 날것','91013000_송아지고기, 부산물, 혀, 날것','91014010_쇠고기, 수입우, 갈비, 구운것','91015000_쇠고기, 수입우, 대접살, 날것','91017010_쇠고기, 수입우, 사태, 삶은것','91019000_쇠고기, 수입우, 쇠악지, 날것','91021010_쇠고기, 수입우, 양지, 삶은것','91044010_쇠고기, 부산물, 허파, 삶은것','91046010_쇠고기, 부산물, 혀, 약불익힘','92010010_돼지고기, 부산물, 간, 삶은것','92011000_돼지고기, 부산물, 대장, 날것','92015000_돼지고기, 부산물, 심장, 날것','92016000_돼지고기, 부산물, 족발, 날것','92017000_돼지고기, 부산물, 허파, 날것','93002020_닭고기, 가슴, 밀가루입혀튀긴것','93002030_닭고기, 가슴, 튀김옷입혀튀긴것','93002100_닭고기, 치킨오리지날, 가슴중심','93003020_닭고기, 날개, 밀가루입혀튀긴것','93003030_닭고기, 날개, 튀김옷입혀튀긴것','93005020_닭고기, 다리, 밀가루입혀튀긴것','93005030_닭고기, 다리, 튀김옷입혀튀긴것','93009010_닭고기, 부산물, 간, 약불익힘','94010150_어린양고기, 부산물, 간, 날것','95006080_돼지고기, 돼지고기가공품, 순대','95008010_미트볼, 레또 미트볼, 제일제당','95011020_스튜, 레또 크림스튜, 제일제당','96001020_샌드위치, 닭고기 (패스트푸드)','96001080_샌드위치, 쇠고기 (패스트푸드)','96002070_햄버거, 싱글버거 (패스트푸드)','96002090_햄버거, 더블버거 (패스트푸드)','96002250_햄버거, 베이컨치즈버거, 웬디스','96002400_햄버거, 주니어치즈버거, 웬디스','96002550_햄버거, 크로상샌드위치, 버거킹','96002560_햄버거, 햄치즈샌드위치, 버거킹','101007030_계란, 스크램블드에그, 맥도날드','107001010_이유식, 계란노른자, 고형분포함','111088050_볼락, 조피볼락 (우럭), 생것','111140040_장어, 뱀장어 (장치), 구운것','111156000_다랑어, 참다랑어, 생것, 성어','113019000_새우, 꽃새우 (독새우), 생것','113028000_새우, 중하 (시바새우), 생것','131002030_우유, 남양3.4우유 훼미리밀크','131002080_우유, 밀큐 패밀리 우유,빙그레','131003070_우유, 밀큐 딸기맛 우유,빙그레','131005050_분유, 조제분유, 1단계, 매일','131005060_분유, 조제분유, 2단계, 매일','131005070_분유, 조제분유, 3단계, 매일','131005320_이유식, 호프알레르기, 남양유업','133002080_아이스크림, 스크류바, 롯데제과','133003010_아이스크림, 소프트(패스트푸드)','133004020_아이스크림, 딸기썬대, 맥도날드','133006020_아이스크림, 버터피칸, 하겐다즈','134003020_쉐이크, 바닐라쉐이크, 롯데리아','134003030_쉐이크, 바닐라쉐이크, 맥도날드','134003040_쉐이크, 바닐라 쉐이크, 버거킹','134004010_쉐이크, 초콜렛쉐이크, 맥도날드','135002060_요구르트, 호상, 우유, 무가당','135002050_요구르트, 호상, 탈지유, 가당','142004010_마가린, 식물성 마아가린, 대상','151006140_탄산음료, 콜라, 다이어트체리콕','151008120_커피, 맥스웰커피믹스, 동서식품','151009040_코코아, 핫쵸콜렛 (패스트푸드)','161001020_간장, 진간장 금F3, 샘표식품','161001080_간장, 양조간장701, 샘표식품','161030050_짜장, 레또 유니짜장, 제일제당','161033070_카레, 본카레 (매운맛), 대상','161033080_카레, 본카레 (순한맛), 대상','11014010_보리, 겉보리, 납작보리 (압맥)','11022010_옥수수, 옥수수통조림, 크림스타일','11023180_시리얼, 현미푸레이크, 농심켈로그','11023250_시리얼, 포스트 코코볼, 동서식품','11023260_시리얼, 포스트 하니컴, 동서식품','12002000_쌀, 멥쌀, 논벼, 현미, 일반형','12002004_쌀, 멥쌀, 논벼, 현미, 통일형','12008010_쌀, 멥쌀, 논벼, 죽, 칠분도미','13008030_컵라면, 육개장(용기), 삼양식품','13019050_스프, 쇠고기야채스프, 물을가한것','15001060_페이스트리, 치즈데니쉬, 맥도날드','15007170_피자, 크러스트, 슈프림, 피자헛','16007320_비스켓, 웨하스(딸기), 동양제과','16012130_스낵, 스모키 베이컨 칩, 빙그레','16013070_파이, 초코지오 초코까페, 빙그레','18001050_유아용과자, 애로우루트쿠키, 거버','18004030_이유식, 맘마밀 쌀로 만든 씨리얼','18007020_이유식, 쌀죽, 사과소스, 바나나','18010100_이유식, 오트밀죽, 바나나, 우유','18011010_이유식, 종합씨리얼, 분말, 거버','22002060_감자튀김, 후렌치후라이, 롯데리아','61052020_마늘, 구근, 말린것 (동결건조)','61052030_마늘, 구근, 말린것 (열풍건조)','61126050_유채, 서양종, 줄기와 잎, 생것','63002010_양배추, 코올슬로우 (패스트푸드)','64002010_이유식, 시금치, 크림, 으깬형태','64003020_이유식, 종합야채, 분말, 하인즈','71007030_뽕나무버섯, 자연산, 말린것, 갓','71023000_새송이버섯 (큰느타리버섯), 생것','71016060_표고버섯, 참나무, 생것, 삶은것','71016070_표고버섯, 참나무, 말린것, 생건','81040030_그레이프후르츠 (자몽), 천연과즙','82006020_이유식, 맑은쥬스, 사과, 복숭아','82012010_이유식, 바나나, 분말, 하인즈 ','91008010_송아지고기, 부산물, 간, 삶은것','91009010_송아지고기, 부산물, 골, 삶은것','91010000_송아지고기, 부산물, 신장, 날것','91011000_송아지고기, 부산물, 심장, 날것','91012000_송아지고기, 부산물, 허파, 날것','91013010_송아지고기, 부산물, 혀, 삶은것','91015020_쇠고기, 수입우, 대접살, 삶은것','92011010_돼지고기, 부산물, 대장, 삶은것','92015010_돼지고기, 부산물, 심장, 삶은것','92016010_돼지고기, 부산물, 족발, 삶은것','92017010_돼지고기, 부산물, 허파, 삶은것','93002051_닭고기, 가슴살, 튀김옷입혀튀긴것','93012010_닭고기, 부산물, 심장, 약불익힘','94010160_어린양고기, 부산물, 간, 삶은것','94012000_오리고기, 집오리, 고기 (날것)','95004000_돼지고기, 돼지고기가공품, 바베큐','95007100_돼지고기, 돼지고기가공품, 통조림','95009030_소시지, 새참맛 소시지맛, 진주햄','96001030_샌드위치, 치킨 샌드위치, 버거킹','96001040_샌드위치, 치킨 샌드위치, KFC','96001090_샌드위치, 로우스트비프, 서브웨이','96001140_샌드위치, 빅킹 샌드위치, 버거킹','96002260_햄버거, 베이컨 치즈버거, 버거킹','96002310_햄버거, 빅클래식치즈버거, 웬디스','96002370_햄버거, 더블치즈버거(패스트푸드)','96002420_샌드위치, 와퍼 샌드위치, 버거킹','96002480_햄버거, 치킨샌드위치(패스트푸드)','96002520_햄버거, 치킨클럽샌드위치, 웬디스','111062120_명태, 알(창란), 창란젓, 양념','111062130_명태, 말린것, 어린것 (노가리)','111072000_방어, 생것, 자연산,  (성어)','111088010_볼락, 생것 (아래 중복 삭제?)','111135070_은어, 내장, 생것,  (자연산)','111135080_은어, 내장, 생것,  (양식산)','111140050_장어, 뱀장어 (장치), 조미구이','111144070_전갱이, 생것, 어린것 (매가리)','111156010_다랑어, 참다랑어, 생것, 붉은살','111156020_다랑어, 참다랑어, 생것, 기름육','111156070_다랑어, 참다랑어, 생것, 어린것','113005020_게, 대게 (영덕게), 게살자건품','113015000_새우, 가시발새우 (네점빨강새우)','113019010_새우, 꽃새우 (독새우), 냉동품','113019020_새우, 꽃새우 (독새우), 자건품','113019030_새우, 꽃새우 (독새우), 삶은것','113019050_새우, 꽃새우 (독새우), 장조림','113028010_새우, 중하 (시바새우), 자건품','113028040_새우, 중하 (시바새우), 통조림','114009000_우렁쉥이 (멍게), 생것, 자연산','114009010_우렁쉥이 (멍게), 생것, 양식산','131003130_우유, 밀큐 초콜렛 우유, 빙그레','131005230_이유식, 임페리얼에스1, 남양유업','131005240_이유식, 임페리얼에스2, 남양유업','133002050_아이스크림, 더블비안코, 롯데제과','133006030_아이스크림, 커피모카칩, 하겐다즈','133006070_아이스크림, 캐러멜썬대, 맥도날드','133006090_아이스크림, 핫퍼지썬대, 맥도날드','135001050_요구르트, 야쿠르트, 한국야쿠르트','151003040_탄산음료, 과일탄산음료, 포도소다','151003070_탄산음료, 과일탄산음료, 크림소다','151006130_탄산음료, 콜라, 다이어트슬라이스','151008040_커피, 분말, 무카페인, 인스턴트','161001070_간장, 양조간장501S, 샘표식품','161005010_고추장, 찹쌀맛 고추장, 대림수산','161030040_짜장, 레또 쇠고기짜장, 제일제당','11022020_옥수수, 옥수수통조림, 홀커넬스타일','11023040_시리얼, 아몬드푸레이크, 농심켈로그','11023220_시리얼, 코코넛푸레이크, 농심켈로그','11023240_시리얼, 포스트 스타베리, 동서식품','12004000_쌀, 멥쌀, 논벼, 쌀배아, 배아미','12006010_쌀, 멥쌀, 논벼, 쌀밥, 칠분도미','12006030_쌀, 멥쌀, 밭벼, 쌀밥, 칠분도미','12010010_쌀, 멥쌀, 논벼, 미음, 칠분도미','14025010_푸딩, 바닐라, 분말, 전유로만든것','15007070_피자, 씬크리스피, 슈프림, 피자헛','15007180_피자, 슈프림피자(pan), 피자헛','15007310_피자, 크러스트, 페퍼로니, 피자헛','16007330_비스켓, 웨하스(바닐라), 동양제과','16012060_스낵, 고래밥(볶음양념), 동양제과','16012170_스낵, 오징어땅콩, 오리온프리토레이','16013060_파이, 초코지오 마쉬멜로우, 빙그레','17003000_쌀, 멥쌀, 논벼, 가래떡 (흰떡)','17006010_쌀, 멥쌀, 논벼, 송편, 검정콩속','17006030_쌀, 멥쌀, 논벼, 송편, 팥고물속','18004060_이유식, 맘마밀 혼합과일, 매일유업','18004070_이유식, 맘마밀 혼합야채, 매일유업','18006040_이유식, 쌀, 바나나, 분말, 거버','18008040_이유식, 씨리얼, 노른자, 으깬형태','18011020_이유식, 종합씨리얼, 바나나, 분말','18013010_이유식, 스텝 리전트1,  남양유업','18013020_이유식, 스텝 리전트2,  남양유업','18013030_이유식, 스텝 리전트3,  남양유업','18018020_이유식, 후디스아기밀1, 일동후디스','18018030_이유식, 후디스아기밀2, 일동후디스','18018040_이유식, 후디스아기밀3, 일동후디스','21004010_감자, 매쉬드포테이토 (패스트푸드)','21005020_감자, 해쉬브라운포테이토, 맥도날드','33002010_초콜렛, 가공쵸콜렛, 건포도스프레드','33002140_초콜렛, 카카오파워초콜렛, 롯데제과','61118011_오이, 생것, 개량종, 겨울살이청장','61126060_유채, 서양종, 줄기와 잎, 삶은것','71007010_뽕나무버섯, 인공재배, 말린것, 갓','71007040_뽕나무버섯, 자연산, 말린것, 줄기','71016080_표고버섯, 참나무, 말린것, 삶은것','81023110_사과, 과일쥬스, 천연과즙 (가당)','82005010_이유식, 사과, 배, 분말, 하인즈','82007030_이유식, 사과, 블루베리, 으깬형태','82008070_이유식, 사과소스, 살구, 으깬형태','82012030_이유식, 바나나, 으깬형태, 비치넛','82013010_이유식, 밤, 바나나죽 (가정조리)','91010010_송아지고기, 부산물, 신장, 삶은것','91011010_송아지고기, 부산물, 심장, 삶은것','91012010_송아지고기, 부산물, 허파, 삶은것','91014020_쇠고기, 수입우, 갈비, 브로일한것','91018010_쇠고기, 수입우, 설도, 브로일한것','91020010_쇠고기, 수입우, 안심, 브로일한것','91024010_쇠고기, 수입우, 채끝, 브로일한것','91035000_쇠고기, 부산물, 골 (뇌), 날것','91050000_쇠고기, 쇠고기가공품, 허니롤소시지','92016020_돼지고기, 부산물, 족발, 조미한것','93001110_닭고기, 그릴드치킨디럭스, 맥도날드','93005090_닭고기, 치킨오리지날,다리, KFC','93010000_닭고기, 부산물, 모래주머니, 날것','94012020_오리고기, 집오리, 고기 (구운것)','94012040_오리고기, 집오리, 살코기 (날것)','95001050_돈까스, 알뜰 돈까스, 롯데햄.우유','95009020_소시지, 새몽땅야채맛소시지, 진주햄','96001110_샌드위치, 햄과 치즈 (패스트푸드)','96002120_햄버거, 빅클래식더블햄버거, 웬디스','96002230_햄버거, 베이컨치즈버거(패스트푸드)','96002240_햄버거, 베이컨치즈버거, 로이로저스','111062090_명태, 알 (명란), 명란젓, 양념','111072010_방어, 생것, 자연산,  (어린것)','111135090_은어, 내장, 구운것,  (자연산)','111135100_은어, 내장, 구운것,  (양식산)','112008000_매끈이고둥, 통조림 (골뱅이통조림)','113028020_새우, 중하 (시바새우), 조미건품','131003080_우유, 빙그레 바나나맛 우유,빙그레','131008160_특수분유, 베이비웰 HA, 매일유업','131008180_특수분유, 베이비웰 LP, 매일유업','131008190_특수분유, 베이비웰 소이, 매일유업','131005210_이유식, 점프 아기사랑3, 남양유업','131005220_이유식, 점프 아기사랑4, 남양유업','131010090_특수분유, 트루맘 쏘이, 일동후디스','133003030_아이스크림, 바닐라아이스크림 (콘)','135001150_요구르트, 요고요고 사과, 해태유업','142015020_프림, 커피메이트 골드, 한국네슬레','151003060_탄산음료, 과일탄산음료, 오렌지소다','151006060_탄산음료, 콜라, 코카콜라, 클래식','151006120_탄산음료, 콜라, 다이어트스프라이트','151008090_커피, 네스카페 클래식, 한국네슬레','151008200_커피, 테이스터스초이스, 한국네슬레','161020030_양념, 다담 해물탕 양념, 제일제당','161020040_양념, 다담 매운탕 양념, 제일제당','11023120_시리얼, 포스트 콘후레이크, 동서식품','11023350_시리얼, 올-브랜 플러스, 농심켈로그','12004010_쌀, 멥쌀, 논벼, 쌀배아, 인디카형','12004020_쌀,멥쌀, 논벼, 쌀배아, 자포니카형','15005020_크로아쌍, 계란과 치즈 (패스트푸드)','15007080_피자, 슈프림피자(thin), 피자헛','15007190_피자, 크러스트, 슈퍼슈프림, 피자헛','15007290_피자, 씬크리스피, 페퍼로니, 피자헛','18004020_이유식, 맘마밀 쌀과 우유, 매일유업','18004080_이유식, 유기농 맘마밀 1, 매일유업','18004090_이유식, 유기농 맘마밀 2, 매일유업','18004100_이유식, 유기농 맘마밀 3, 매일유업','18004110_이유식, 유기농 맘마밀 4, 매일유업','18006050_이유식, 쌀, 바나나, 분말, 비치넛','18007070_이유식, 쌀죽, 종합과일, 고형분포함','18008010_이유식, 씨리얼, 노른자, 고형분포함','18011040_이유식, 종합씨리얼, 우유첨가, 거버','18013100_이유식, 스텝 그래뉼生 2, 남양유업','18013110_이유식, 스텝 그래뉼生 3, 남양유업','18013120_이유식, 스텝 그래뉼生 4, 남양유업','22002000_감자튀김, 후렌치후라이 (패스트푸드)','22002040_감자튀김, 후렌치후라이 (패스트푸드)','32008020_젤리, 참새방앗간(복숭아), 롯데제과','42002000_대두, 검정콩, 녹색자엽콩 (서리태)','61064020_띠뿌리민들레 (백모근), 전체, 생것','61064030_띠뿌리민들레 (백모근), 잎, 말린것','71007020_뽕나무버섯, 인공재배, 말린것, 줄기','71016100_표고버섯, 참나무, 가루, 동고, 갓','71016110_표고버섯, 참나무, 가루, 동고, 대','71016120_표고버섯, 참나무, 향신, 동고, 갓','71016130_표고버섯, 참나무, 향신, 동고, 대','81023090_사과, 과일쥬스, 천연과즙 (무가당)','81035060_오렌지, 과즙음료 (가당, Ca첨가)','82008040_이유식, 사과, 살구, 분말, 하인즈','82014030_이유식, 유아용쥬스, 종합과일, 거버','91015010_쇠고기, 수입우, 대접살, 브로일한것','92012010_돼지고기, 부산물, 머리고기, 삶은것','93001080_닭고기, 크리스피치킨디럭스, 맥도날드','93002160_치킨, 텐터로스트치킨, 가슴, KFC','93003050_닭고기, 치킨오리지날, 날개, KFC','93003060_닭고기, 크리스피치킨, 날개, KFC','93005100_닭고기, 크리스피치킨,닭다리, KFC','93005140_닭고기,  넓적다리, 밀가루입혀튀긴것','93005150_닭고기,  넓적다리, 튀김옷입혀튀긴것','93005170_닭고기,치킨오리지날,넓적다리, KFC','93005180_닭고기,크리스피치킨,넓적다리, KFC','93005270_치킨, 텐터로스트치킨, 다리, KFC','94012030_오리고기, 집오리, 살코기 (구운것)','95007010_돼지고기, 돼지고기가공품, 햄, 등심','95007020_돼지고기, 돼지고기가공품, 햄, 로스','95007050_돼지고기, 돼지고기가공품, 햄, 본인','96002150_햄버거, 로스트비프샌드위치, 롯데리아','96002270_햄버거, 주니어베이컨치즈버거, 웬디스','96002350_햄버거, 쿼터파운더, 치즈, 맥도날드','96002410_햄버거, 주니어치즈버거디럭스, 웬디스','96002430_샌드위치, 와퍼치즈 샌드위치, 버거킹','96002530_햄버거, 치킨치즈샌드위치(패스트푸드)','106001020_샌드위치, 계란과 치즈 (패스트푸드)','111156100_다랑어, 라이트스탠다드참치, 동원산업','111156190_다랑어, 황다랑어, 조미통조림, 고추','111156200_다랑어, 황다랑어, 조미통조림, 야채','111156210_다랑어, 황다랑어, 조미통조림, 짜장','131003040_우유, 가공우유, 저지방,  (쵸코)','131003050_우유, 가공우유, 저지방,  (커피)','131008170_특수분유, 베이비웰 프리미, 매일유업','131005310_특수분유, 호프닥터 1단계, 남양유업','135001060_요구르트, 불가리스(딸기), 남양유업','135001080_요구르트, 딸기요구르트, 파스퇴르유업','135001120_요구르트, 불가리스(사과), 남양유업','135001130_요구르트, 뿌요(사과), 한국야쿠르트','135001180_요구르트, 불가리스(포도), 남양유업','135001200_요구르트, 포도요구르트, 파스퇴르유업','151003050_탄산음료, 과일탄산음료, 레몬라임소다','151003090_탄산음료, 과일탄산음료, 파인애플소다','161020010_양념, 다담 낙지볶음 양념, 제일제당','171017030_선인장, 제주선인장 (용두과), 줄기','171017040_선인장, 제주선인장 (용두과), 열매','171008010_팽창제, 베이킹파우더, NaAlSO4','11023170_시리얼, 포스트 현미후레이크, 동서식품','11023360_시리얼, 올-브랜 푸레이크, 농심켈로그','13007120_컵라면, 캡틴 프리미엄 육개장, 빙그레','13008050_컵라면, 큰냄비육개장(용기), 삼양식품','15007090_피자, 씬크리스피, 슈퍼슈프림, 피자헛','15007200_피자, 슈퍼슈프림피자(pan), 피자헛','15007270_피자, 치킨슈프림피자(pan), 피자헛','15007300_피자, 페퍼로니 피자(pan), 피자헛','16012140_스낵, 썬칩(핫윙맛), 오리온프리토레이','18009010_이유식, 영양죽1, 이유중기, 가정조리','18009020_이유식, 영양죽2, 이유후기, 가정조리','18010030_이유식, 오트밀, 바나나, 분말, 거버','21002050_감자, 베이크드포테이토,치즈,베이컨소스','21002060_감자, 구운감자, 베이컨&치즈, 웬디스','22002100_감자, 후렌치후라이, 소금제외, 버거킹','22002110_감자, 후렌치후라이, 소금첨가, 버거킹','61064040_띠뿌리민들레 (백모근), 뿌리, 말린것','63003010_야채샐러드, 드레싱없는것 (패스트푸드)','81040040_그레이프후르츠 (자몽), 캔쥬스, 가당','82001040_이유식, 배, 으깬형태, 1차식, 거버','82001050_이유식, 배, 으깬형태, 2차식, 거버','82001080_이유식, 맑은쥬스, 배, 2차식, 거버','82003100_이유식, 유아용 맑은쥬스, 사과, 거버','82005030_이유식, 사과, 배, 으깬형태, 하인즈','82006010_이유식, 사과, 복숭아, 분말, 하인즈','82007010_이유식, 사과, 블루베리, 고형분포함 ','82008060_이유식, 사과, 살구, 으깬형태, 거버','82009030_이유식, 맑은쥬스, 사과, 체리, 거버','91023000_쇠고기, 수입우, 장정 (목심), 날것','91035010_쇠고기, 부산물, 골 (뇌), 약불익힘','91039000_쇠고기, 부산물, 신장 (콩팥), 날것','91040000_쇠고기, 부산물, 심장 (염통), 날것','92020010_이유식, 햄, 으깬형태, 2차식, 거버','93002110_닭고기, 치킨오리지날, 가슴옆, KFC','93004040_닭고기, 치킨너겟, 바베큐소스, 웬디스','93010010_닭고기, 부산물, 모래주머니, 약불익힘','95007070_돼지고기, 돼지고기가공품, 햄, 어깨살','96002440_샌드위치, 더블 와퍼 샌드위치, 버거킹','117001030_샌드위치, BK 빅피쉬샌드위치, 버거킹','131003110_우유, 뼈로 가는 칼슘 우유, 매일유업','131005080_이유식, 매일맘마(조제분유) D&A-1','131005090_이유식, 매일맘마(조제분유) D&A-2','131005100_이유식, 매일맘마(조제분유) D&A-3','131005140_분유, 조제분유, 매일맘마 IQ, 매일','131008140_특수분유, 베이비웰 아기설사, 매일유업','131008150_특수분유, 베이비웰 아토케어, 매일유업','131005250_이유식, 점프 임페리얼에스3, 남양유업','131005260_이유식, 점프 임페리얼에스4, 남양유업','131009010_특수분유, 호프알레기 1단계, 남양유업','131009020_특수분유, 호프알레기 2단계, 남양유업','133002030_아이스크림, 쿠키 & 크림(그랜드 바)','151002010_이온음료, 게토레이 피치쿨러, 제일제당','151006090_탄산음료, 콜라, 다이어트콕, 코카콜라','151006110_탄산음료, 콜라, 다이어트콜라, 웬디스','151008140_커피, 맥심 디카페인커피믹스, 동서식품','151009011_코코아, 코코아차가루 (코코아 20%)','161020020_양념, 다담 오징어볶음 양념, 제일제당','11023050_시리얼, 포스트 아몬드후레이크, 동서식품','11023230_시리얼, 포스트 스위트후레이크, 동서식품','12006001_쌀, 멥쌀, 논벼, 쌀밥, 백미, 추청벼','12006002_쌀, 멥쌀, 논벼, 쌀밥, 백미, 일품벼','12006003_쌀, 멥쌀, 논벼, 쌀밥, 백미, 수라벼','13007110_컵라면, 캡틴 프리미엄 부대전골, 빙그레','15007100_피자, 슈퍼슈프림피자(thin), 피자헛','15007150_피자, 치즈, 쇠고기, 야채(패스트푸드)','15007280_피자, 치킨슈프림피자(thin), 피자헛','16012210_스낵, 포카칩(소금맛), 오리온프리토레이','18004010_이유식, 맘마밀 쇠고기와 야채, 매일유업','18004050_이유식, 맘마밀 치즈와 쇠고기, 매일유업','18019030_이유식, 누셍 유기농장 1단계, 파스퇴르','18019040_이유식, 누셍 유기농장 2단계, 파스퇴르','18019050_이유식, 누셍 유기농장 3단계, 파스퇴르','18019060_이유식, 그린밀 그래뉼 1단계, 파스퇴르','18019070_이유식, 그린밀 그래뉼 2단계, 파스퇴르','18019080_이유식, 그린밀 그래뉼 3단계, 파스퇴르','18019090_이유식, 그린밀 그래뉼 4단계, 파스퇴르','51015050_아몬드, 후렌치후라이드 아몬드, 우성식품','63001010_샐러드, 그릴드치킨샐러드디럭스, 맥도날드','64001050_이유식, 당근, 으깬형태, 1차식, 거버','64001060_이유식, 당근, 으깬형태, 2차식, 거버','81002020_구아바, 과일쥬스, 넥타 (과육 20%)','81040050_그레이프후르츠 (자몽), 캔쥬스, 무가당','82001020_이유식, 배, 고형분포함, 3차식, 거버','82003110_이유식, 맑은쥬스, 사과, 2차식, 거버','82004010_이유식, 유아용쥬스, 사과, 베리, 거버','82005020_이유식, 사과, 배, 고형분포함, 하인즈','82008080_이유식, 맑은쥬스, 사과, 살구, 하인즈','82009010_이유식, 유아용쥬스, 사과, 체리, 거버','82011030_이유식, 유아용쥬스, 사과, 포도, 거버','82012020_이유식, 바나나, 으깬형, 1차식, 거버','91023010_쇠고기, 수입우, 장정 (목심), 삶은것','92013000_돼지고기, 부산물, 소장 (곱창), 날것','92014000_돼지고기, 부산물, 신장 (콩팥), 날것','92020020_이유식, 햄, 고형분포함, 3차식, 거버','93004060_닭고기, 치킨너겟, 머스타드소스, KFC','93005250_치킨, 텐터로스트치킨, 넓적다리, KFC','95005000_돼지고기, 돼지고기가공품, 베이컨, 날것','95006010_돼지고기, 돼지고기가공품, 소시지, 건조','95006020_돼지고기, 돼지고기가공품, 소시지, 리용','95007060_돼지고기, 돼지고기가공품, 햄, 슬라이스','95007080_돼지고기, 돼지고기가공품, 통조림, 날것','96002280_햄버거, 더블 치즈버거, 베이컨, 버거킹','96002460_샌드위치, 와퍼 주니어 샌드위치, 버거킹','131005110_이유식, 매일맘마(조제분유), 오메가-1','131005120_이유식, 매일맘마(조제분유), 오메가-2','131005130_이유식, 매일맘마(조제분유), 오메가-3','131005150_분유, 조제분유, 엡솔루트 1단계, 매일','131005160_분유, 조제분유, 엡솔루트 2단계, 매일','131005170_분유, 조제분유, 엡솔루트 3단계, 매일','131005180_분유, 조제분유, 엡솔루트 4단계, 매일','131008100_분유, 조제분유, 매일분유 1, 매일유업','131008110_분유, 조제분유, 매일분유 2, 매일유업','131009240_이유식, 남양 키플러스- 초코, 남양유업','133004040_아이스크림, 딸기, 드라이어스 아이스크림','134002030_쉐이크, 딸기 쉐이크, 시럽첨가, 버거킹','135001040_요구르트, 야쿠르트 에이스, 한국야쿠르트','151006150_탄산음료, 콜라, 저칼로리, 아스파탐첨가','151008110_커피, 맥스웰 캔커피 카페오레, 동서식품','151008150_커피, 맥심 모카골드 커피믹스, 동서식품','12001022_쌀, 멥쌀, 논벼, 현미, 특수미, 큰눈벼','12002001_쌀, 멥쌀, 논벼, 현미, 일반형, 일미벼','12002002_쌀, 멥쌀, 논벼, 현미, 일반형, 일품벼','12002003_쌀, 멥쌀, 논벼, 현미, 일반형, 추청벼','12006004_쌀, 멥쌀, 논벼, 쌀밥, 백미, 새추청벼','15004110_케이크, 쵸콜렛케이크, 쵸콜렛프로스팅있는것','15007240_피자, 치즈크러스트(thin), 도미노피자','16012160_스낵, 엑서스(고소한맛), 오리온프리토레이','16012190_스낵, 치토스(매콤한맛), 오리온프리토레이','18004040_이유식, 맘마밀 요구르트와 곡류, 매일유업','18007030_이유식, 쌀죽, 사과소스, 바나나, 으깬형','18007040_이유식, 쌀죽, 사과즙, 배즙분말, 하인즈','18010070_이유식, 오트밀, 사과, 바나나, 으깬형태','18011030_이유식, 종합씨리얼, 바나나, 분말, 거버','18013070_이유식, 남양스텝 名品유기농 2, 남양유업','18013080_이유식, 남양스텝 名品유기농 3, 남양유업','18013090_이유식, 남양스텝 名品유기농 4, 남양유업','21002030_감자, 구운것, 치즈토핑한것 (패스트푸드)','25001040_이유식, 고구마, 으깬형태, 1차식, 거버','25001050_이유식, 고구마, 으깬형태, 2차식, 거버','64001030_이유식, 당근, 고형분포함, 3차식, 거버','82002050_이유식, 복숭아, 으깬형태, 1차식, 거버','82002060_이유식, 복숭아, 으깬형태, 2차식, 거버','82007040_이유식, 사과, 블루베리, 으깬형태, 거버','82008030_이유식, 사과, 살구, 고형분포함, 하인즈','82010010_이유식, 맑은쥬스, 사과, 파인애플, 거버','91039010_쇠고기, 부산물, 신장 (콩팥), 약불익힘','91040010_쇠고기, 부산물, 심장 (염통), 약불익힘','91049050_이유식, 쇠고기, 으깬형태, 2차식, 거버','92013010_돼지고기, 부산물, 소장 (곱창), 삶은것','92014010_돼지고기, 부산물, 신장 (콩팥), 삶은것','93001130_닭고기, 텐터로스트치킨, 껍질포함, KFC','93002120_닭튀김, 크리스피치킨, 가슴옆부위, KFC','95001060_돼지고기, 돼지고기가공품, 돈가스, 냉동품','95005010_돼지고기, 돼지고기가공품, 베이컨, 구운것','95006030_돼지고기, 돼지고기가공품, 소시지, 볼로냐','95006060_돼지고기, 돼지고기가공품, 소시지, 핫도그','95007090_돼지고기, 돼지고기가공품, 통조림, 구운것','101007040_계란, 스크램블드에그, 아침식사용, 버거킹','113019040_새우, 꽃새우 (독새우), 튀김옷입혀튀긴것','131009230_이유식, 남양 키플러스- 바닐라, 남양유업','131009250_아기두유, 아기랑 콩이랑 1단계, 남양유업','131009260_아기두유, 아기랑 콩이랑 2단계, 남양유업','131009270_아기두유, 아기랑 콩이랑 3단계, 남양유업','131009280_아기두유, 아기랑 콩이랑 4단계, 남양유업','131010100_특수분유, New 유기농 닥터, 일동후디스','133002010_아이스크림, 아이스크림, TCBY, 트릿트','133003060_아이스크림, 바닐라, 드라이어스 아이스크림','133006100_아이스크림, 임페리얼골드(호두), 롯데제과','135001110_요구르트, 메치니코프(사과), 한국야쿠르트','135001170_요구르트, 메치니코프(포도), 한국야쿠르트','11009030_밀가공식품, 밀가루, 치킨가루 (닭튀김가루)','11023310_시리얼, 오곡으로 만든 첵스초코, 농심켈로그','11023380_시리얼, 곡물이야기 오곡 저지방, 농심켈로그','11023390_시리얼, 곡물이야기 현미 저지방, 농심켈로그','12001031_쌀, 멥쌀, 논벼, 백미 (국내산), 일반형','12001010_쌀, 멥쌀, 논벼, 백미 (국내산), 통일형','14008030_머핀, 잉글리쉬머핀, 버터첨가 (패스트푸드)','15004020_케이크, 당근케이크, 푸딩형, 프로스팅없는것','18007080_이유식, 쌀죽, 종합과일, 고형분포함, 거버','18008030_이유식, 씨리얼, 노른자, 베이컨, 으깬형태','18010060_이유식, 오트밀, 사과, 바나나, 고형분포함','22002020_감자튀김, 후렌치후라이, 냉동, 오븐에데운것','64003040_이유식, 종합야채, 으깬형태, 2차식, 거버','81002010_구아바, 과일쥬스, 과즙음료 (과즙 10%)','81040020_그레이프후르츠 (자몽), 과일쥬스, 농축과즙','82002020_이유식, 복숭아, 고형분포함, 3차식, 거버','82003060_이유식, 사과소스, 으깬형태, 1차식, 거버','82003070_이유식, 사과소스, 으깬형태, 2차식, 거버','82008010_이유식, 사과소스, 살구, 고형분포함, 거버','82010020_이유식, 맑은쥬스, 사과, 파인애플, 하인즈','82014020_이유식, 맑은쥬스, 종합과일, 2차식, 거버','91049040_이유식, 쇠고기, 고형분포함, 3차식, 거버','93002080_닭고기, 가슴살, 튀김옷입힌것 (패스트푸드)','93002130_닭튀김, 크리스피치킨, 가슴중심부위, KFC','95003010_돼지고기, 돼지고기가공품, 통조림, 런천미트','96002450_샌드위치, 더블 와퍼 치즈 샌드위치, 버거킹','101007020_계란, 스크램블드에그, 아침식사(패스트푸드)','131008120_분유, 조제분유, 매일맘마 QT3, 매일유업','131008130_분유, 조제분유, 매일맘마 QT4, 매일유업','131009150_분유, 조제분유, 남양분유 秀 1, 남양유업','131009160_분유, 조제분유, 남양분유 秀 2, 남양유업','131009170_분유, 조제분유, 아기사랑 秀 3, 남양유업','131009180_분유, 조제분유, 아기사랑 秀 4, 남양유업','133006010_아이스크림, 모카퍼지, 드라이어스 아이스크림','133006040_아이스크림, 커피퍼지, 드라이어스 아이스크림','135001090_요구르트, 메치니코프(복숭아), 한국야쿠르트','151008080_커피, 네스카페 클래식 커피믹스, 한국네슬레','151008220_커피, 테이스터스쵸이스 커피믹스, 한국네슬레','11011040_밀, 밀가공식품, 밀가루, 국내산, 중력밀가루','11011050_밀, 밀가공식품, 밀가루, 국내산, 통밀밀가루','12001021_쌀, 멥쌀, 논벼, 현미, 특수미, 고아미2호','15001030_페이스트리, 데니쉬페이스트리,과일(패스트푸드)','15001050_페이스트리, 데니쉬페이스트리,치즈(패스트푸드)','15007250_피자, 치즈피자(pan), 라운드 테이블 피자','17014000_쌀, 쌀가공식품, 멥쌀, 논벼, 떡바, 사과맛','17014010_쌀, 쌀가공식품, 멥쌀, 논벼, 떡바, 치즈맛','17014030_쌀, 쌀가공식품, 멥쌀, 논벼, 떡바, 초코맛','18007010_이유식, 쌀죽, 사과, 바나나, 2차식, 거버','18008020_이유식, 씨리얼, 노른자, 베이컨, 고형분포함','18008090_이유식, 씨리얼, 사과소스, 바나나, 으깬형태','25001020_이유식, 고구마, 고형분포함,  3차식, 거버','64003010_이유식, 종합야채, 고형분포함, 3차식, 거버','81045020_파인애플, 과일쥬스, 과즙음료 (과즙 50%)','82003120_이유식, 사과소스, 고형분포함, 3차식, 거버','82007020_이유식, 사과, 블루베리, 고형분포함 , 거버','93001050_닭고기, 튀긴옷입혀튀긴것, 뼈제외(패스프투드)','95007040_돼지고기, 돼지고기가공품, 햄, 본레스, 날것','96002470_샌드위치, 와퍼 주니어 치즈 샌드위치, 버거킹','107001030_이유식, 계란노른자, 으깬형태, 2차식, 거버','131008060_분유, 조제분유, 프리미엄 명작 1, 매일유업','131008070_분유, 조제분유, 프리미엄 명작 2, 매일유업','131008080_분유, 조제분유, 앱솔루트 명작 3, 매일유업','131008090_분유, 조제분유, 앱솔루트 명작 4, 매일유업','131005270_분유, 조제분유, 프리미엄XO 1, 남양유업 ','131005280_분유, 조제분유, 프리미엄XO 2, 남양유업 ','131009090_분유, 조제분유, 아이엠마더 3단계, 남양유업','131009100_분유, 조제분유, 아이엠마더 4단계, 남양유업','131011070_분유, 조제분유, 오가닉분유 1단계, 파스퇴르','131011110_분유, 조제분유, 다이아몬드 2단계, 파스퇴르','133003080_아이스크림, 바닐라 & 밀크 초콜렛, 하겐다즈','133005010_아이스크림, 초콜렛 & 다크 초콜렛, 하겐다즈','135001070_요구르트, 비피더스 요구르트(딸기), 매일유업','135001100_요구르트, DHA요구르트(사과), 파스퇴르유업','135001140_요구르트, 비피더스 요구르트(사과), 매일유업','15001040_페이스트리, 데니쉬페이스트리,시나몬(패스트푸드)','15007260_피자, 치즈피자(thin), 라운드 테이블 피자','17014020_쌀, 쌀가공식품, 멥쌀, 논벼, 떡바, 고구마맛','17014040_쌀, 쌀가공식품, 멥쌀, 논벼, 떡바, 팥앙금맛','18004120_이유식, 베이비 사이언스 맘마밀 1, 매일유업 ','18004130_이유식, 베이비 사이언스 맘마밀 2, 매일유업 ','18004140_이유식, 베이비 사이언스 맘마밀 3, 매일유업 ','18008050_이유식, 씨리얼, 바나나, 사과, 분말, 하인즈','18008080_이유식, 씨리얼, 사과소스, 바나나, 고형분포함','18010040_이유식, 오트밀, 사과, 바나나, 분말, 하인즈','18018010_이유식, 후디스아기밀(떠먹이는 것), 일동후디스','82008090_이유식, 맑은쥬스, 사과, 살구, 2차식, 거버','82011020_이유식, 맑은쥬스, 사과, 포도, 2차식, 거버','93002150_치킨, 텐터로스트치킨, 가슴, 껍질포함, KFC','93005080_닭고기, 다리살, 튀김옷입혀튀긴것 (패스트푸드)','93005260_치킨, 텐터로스트치킨, 다리, 껍질포함, KFC','95005020_돼지고기, 돼지고기가공품, 베이컨, 날것, 등심','95006050_돼지고기, 돼지고기가공품, 소시지, 프랑크프르트','95006070_돼지고기, 돼지고기가공품, 소시지, 이태리소시지','95007030_돼지고기, 돼지고기가공품, 햄, 본레스, 구운것','96001050_샌드위치, BK 브로일러 치킨 샌드위치, 버거킹','131009210_분유, 조제분유, 마더스오가닉 3단계, 남양유업','131009220_분유, 조제분유, 마더스오가닉 4단계, 남양유업','131011080_분유, 조제분유, 누셍 오가닉 2단계, 파스퇴르','131011090_분유, 조제분유, 누셍 오가닉 3단계, 파스퇴르','13019170_스프, 크림스프, 아스파라거스 크림, 물을 가한것','18008060_이유식, 씨리얼, 사과, 바나나, 으깬형태, 거버','18010080_이유식, 오트밀, 사과, 바나나, 으깬형태, 거버','64002020_이유식, 시금치, 크림, 으깬형태, 2차식, 거버','82006030_이유식, 맑은쥬스, 사과, 복숭아, 2차식, 거버','93005240_치킨, 텐터로스트치킨, 넓적다리,껍질포함, KFC','95005030_돼지고기, 돼지고기가공품, 베이컨, 날것, 어깨살','95006040_돼지고기, 돼지고기가공품, 소시지, 비엔나, 위너','131005290_분유, 조제분유, 임페리얼드림XO 3, 남양유업 ','131005300_분유, 조제분유, 임페리얼드림XO 4, 남양유업 ','131009110_분유, 조제분유, 남양분유 사이언스 1, 남양유업','131009120_분유, 조제분유, 남양분유 사이언스 2, 남양유업','131009130_분유, 조제분유, 아기사랑 사이언스 3, 남양유업','131009140_분유, 조제분유, 아기사랑 사이언스 4, 남양유업','131009190_분유, 조제분유, 남양유기농분유 1단계, 남양유업','131009200_분유, 조제분유, 남양유기농분유 2단계, 남양유업','131005330_분유, 조제분유, 프리미엄분유 1단계, 일동후디스','131005340_분유, 조제분유, 프리미엄분유 2단계, 일동후디스','131005350_분유, 조제분유, 프리미엄분유 3단계, 일동후디스','131010050_분유, 조제분유, 슈퍼프리미엄 1단계, 일동후디스','131010060_분유, 조제분유, 슈퍼프리미엄 2단계, 일동후디스','131010070_분유, 조제분유, 슈퍼프리미엄 3단계, 일동후디스','131010140_분유, 조제분유, 누셍 산양분유 1단계, 파스퇴르','131010150_분유, 조제분유, 누셍 산양분유 2단계, 파스퇴르','131010160_분유, 조제분유, 누셍 산양분유 3단계, 파스퇴르','131011100_분유, 조제분유, 에메랄드 분유 1단계, 파스퇴르','133004030_아이스크림, 딸기 & 크림, 드라이어스 아이스크림','133005020_아이스크림, 초콜렛 & 칩, 드라이어스 아이스크림','135002020_요구르트, 호상, 슈퍼100(딸기), 한국야쿠르트','11023320_시리얼, 오곡으로 만든 첵스초코 크런치, 농심켈로그','11023330_시리얼, 오곡으로 만든 첵스초코 스노우, 농심켈로그','11023340_시리얼, 콘푸로스트 1/3 라이트 슈거, 농심켈로그','12001000_쌀, 멥쌀, 논벼, 백미 (국내산), 일반형, 일품','12001025_쌀, 멥쌀, 논벼, 백미 (국내산), 특수미, 향미','12001030_쌀, 멥쌀, 논벼, 백미 (국내산), 일반형, 추청','15007320_피자, 페퍼로니 피자(pan), 라운드 테이블 피자','18008070_이유식, 씨리얼, 사과, 바나나, 고형분포함, 거버','18010090_이유식, 오트밀, 사과, 바나나, 고형분포함, 거버','93002140_닭고기, Hot & Spicy 치킨, 가슴, KFC','93003070_닭고기, Hot & Spicy 치킨, 날개, KFC','93005110_닭고기, Hot & Spicy 치킨, 다리, KFC','131008040_분유, 조제분유, 유기농 산양분유 1단계, 매일유업','131008050_분유, 조제분유, 유기농 산양분유 2단계, 매일유업','131005360_분유, 조제분유, 후디스 투루맘 4단계, 일동후디스','131010130_분유, 조제분유, 프리미엄 위드맘 3단계, 파스퇴르','131011120_분유, 조제분유, 사파이어 트윙클 3단계, 파스퇴르','133006050_아이스크림, 탈지한 얼린 요구르트, TCBY 트릿트','135002030_요구르트, 호상, 슈퍼100(복숭아), 한국야쿠르트','11023370_시리얼, 곡물이야기 검은참깨 무콜레스테롤, 농심켈로그','12001032_쌀, 멥쌀, 논벼, 백미 (국내산), 일반형, 수라벼','12001034_쌀, 멥쌀, 논벼, 백미 (국내산), 일반형, 일미벼','12001020_쌀, 멥쌀, 논벼, 백미 (국내산), 특수미, 강화미','12001024_쌀, 멥쌀, 논벼, 백미 (국내산), 특수미, 큰눈벼','15007330_피자, 페퍼로니 피자(thin), 라운드 테이블 피자','18018080_이유식, New 유기농 아기밀 6개월부터, 일동후디스','18018090_이유식, New 유기농 아기밀 9개월부터, 일동후디스','131010010_분유, 조제분유, 후디스 산양분유 1단계, 일동후디스','131010020_분유, 조제분유, 후디스 산양분유 2단계, 일동후디스','131010080_분유, 조제분유, 트루맘 뉴클래스 4단계, 일동후디스','151008210_커피, 테이스터스쵸이스 디카페인 커피믹스, 한국네슬레','12001033_쌀, 멥쌀, 논벼, 백미 (국내산), 일반형, 새추청벼','18018050_이유식, New 아기밀 순유기농 6개월부터, 일동후디스','18018060_이유식, New 아기밀 순유기농 9개월부터, 일동후디스','18018100_이유식, New 유기농 아기밀 12개월부터, 일동후디스','93005190_닭고기, Hot & Spicy 치킨, 넙적다리, KFC','131010030_분유, 조제분유, 후디스 산양유아식 3단계, 일동후디스','131010040_분유, 조제분유, 후디스 산양유아식 4단계, 일동후디스','131010110_분유, 조제분유, 프리미엄분유 위드맘 1단계, 파스퇴르','131010120_분유, 조제분유, 프리미엄분유 위드맘 2단계, 파스퇴르','18018070_이유식, New 아기밀 순유기농 12개월부터, 일동후디스','131008000_분유, 조제분유, 프리미엄 궁 초유의 사랑 1, 매일유업','131008010_분유, 조제분유, 프리미엄 궁 초유의 사랑 2, 매일유업','131008020_분유, 조제분유, 앱솔루트 궁 초유의 비밀 3, 매일유업','131008030_분유, 조제분유, 앱솔루트 궁 초유의 비밀 4, 매일유업','133006060_아이스크림, 피넛버터컵 (그랜드), 드라이어스 아이스크림','12001023_쌀, 멥쌀, 논벼, 백미 (국내산), 특수미, 고아미 2호','18019010_이유식, 유기농 산양이유식, 누셍 앙쥬맘 1단계, 파스퇴르','18019020_이유식, 유기농 산양이유식, 누셍 앙쥬맘 2단계, 파스퇴르','22002050_감자튀김, 후렌치후라이, 식물성기름에 튀긴것 (패스트푸드)','81040010_그레이프후르츠 (자몽), 과일쥬스, 과즙음료 (과즙 20%)','81040011_그레이프후르츠 (자몽), 과일쥬스, 과즙음료 (과즙 50%)','131009030_분유, 조제분유, 프리미엄분유 XO 액상형 1단계, 남양유업','131009040_분유, 조제분유, 프리미엄분유 XO 액상형 2단계, 남양유업','131009050_분유, 조제분유, 프리미엄분유 XO 액상형 3단계, 남양유업','131009060_분유, 조제분유, 프리미엄분유 XO 액상형 4단계, 남양유업','133002020_아이스크림, 무설탕, 탈지한 얼린 요구르트, TCBY 트릿트','133003040_아이스크림, 라스프베리 바닐라 스위리, 드라이어스 아이스크림','133003050_아이스크림, 바닐라 (얼린 요구르트), 드라이어스 아이스크림','131009070_분유, 조제분유, 초유프리미엄 엑스트라모멘트 1단계, 남양유업','131009080_분유, 조제분유, 초유프리미엄 엑스트라모멘트 2단계, 남양유업','133005030_아이스크림, 초콜렛 아몬드 퍼지(그랜드 바), 드라이어스 아이스크림'];

         $( ".fdb_input03" ).autocomplete({
            source: availableTags,
            messages : {
                noResults: '',
                results: function() {}
            },
            select: function( event, ui ) {
                // select_autocomplete(ui.item.value);
                var auto_value = ui.item.value;
                var split_auto_value = auto_value.split("_");
                var id_st = "auto_"+split_auto_value[0];
                // intake_category(id_st, split_auto_value[1]);
                var chenk_du = intake_category(id_st, split_auto_value[1]);
                if(chenk_du == false){
                    ui.item.value = '';
                    ui.item.label = '';
                }
            }
         });
 // });

// function select_autocomplete(id){

// }
// $('.typeahead').typeahead({
//   hint: true,
//   highlight: true,
//   minLength: 1
// },
// {
//   name: 'states',
//   displayKey: 'value',
//   source: substringMatcher(states)
// });






// $('.fdb_input03').attr("data-source","["+dataFood)+"]";
{/literal}
</script>




<!-- </body>
</html> -->
