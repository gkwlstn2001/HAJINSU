/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.19
 * Generated at: 2019-10-18 00:06:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class map_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/F:/workspace_spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp3/wtpwebapps/CoffeeBeans/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1566967374025L));
    _jspx_dependants.put("jar:file:/F:/workspace_spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp3/wtpwebapps/CoffeeBeans/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"description\" content=\"\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("\tcontent=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("\r\n");
      out.write("<!-- Title -->\r\n");
      out.write("<title>카페 지도(CafeMap)</title>\r\n");
      out.write("\r\n");
      out.write("<!-- Favicon -->\r\n");
      out.write("<link rel=\"icon\" href=\"resources/img/core-img/abc.ico\">\r\n");
      out.write("\r\n");
      out.write("<!-- Stylesheet -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/ddd.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("#map {\r\n");
      out.write("\tmargin: 0 auto;\r\n");
      out.write("\tborder: 3px solid #6B4928;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#mapname {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write(".map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}\r\n");
      out.write(".map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}\r\n");
      out.write(".map_wrap {position:relative;width:100%;height:500px;}\r\n");
      out.write("#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}\r\n");
      out.write(".bg_white {background:#fff;}\r\n");
      out.write("#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}\r\n");
      out.write("#menu_wrap .option{text-align: center;}\r\n");
      out.write("#menu_wrap .option p {margin:10px 0;}  \r\n");
      out.write("#menu_wrap .option button {margin-left:5px;}\r\n");
      out.write("#placesList li {list-style: none;}\r\n");
      out.write("#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}\r\n");
      out.write("#placesList .item span {display: block;margin-top:4px;}\r\n");
      out.write("#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}\r\n");
      out.write("#placesList .item .info{padding:10px 0 10px 55px;}\r\n");
      out.write("#placesList .info .gray {color:#8a8a8a;}\r\n");
      out.write("#placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}\r\n");
      out.write("#placesList .info .tel {color:#009900;}\r\n");
      out.write("#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}\r\n");
      out.write("#placesList .item .marker_1 {background-position: 0 -10px;}\r\n");
      out.write("#placesList .item .marker_2 {background-position: 0 -56px;}\r\n");
      out.write("#placesList .item .marker_3 {background-position: 0 -102px}\r\n");
      out.write("#placesList .item .marker_4 {background-position: 0 -148px;}\r\n");
      out.write("#placesList .item .marker_5 {background-position: 0 -194px;}\r\n");
      out.write("#placesList .item .marker_6 {background-position: 0 -240px;}\r\n");
      out.write("#placesList .item .marker_7 {background-position: 0 -286px;}\r\n");
      out.write("#placesList .item .marker_8 {background-position: 0 -332px;}\r\n");
      out.write("#placesList .item .marker_9 {background-position: 0 -378px;}\r\n");
      out.write("#placesList .item .marker_10 {background-position: 0 -423px;}\r\n");
      out.write("#placesList .item .marker_11 {background-position: 0 -470px;}\r\n");
      out.write("#placesList .item .marker_12 {background-position: 0 -516px;}\r\n");
      out.write("#placesList .item .marker_13 {background-position: 0 -562px;}\r\n");
      out.write("#placesList .item .marker_14 {background-position: 0 -608px;}\r\n");
      out.write("#placesList .item .marker_15 {background-position: 0 -654px;}\r\n");
      out.write("#pagination {margin:10px auto;text-align: center;}\r\n");
      out.write("#pagination a {display:inline-block;margin-right:10px;}\r\n");
      out.write("#pagination .on {font-weight: bold; cursor: default;color:#777;}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/includes/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<br />\r\n");
      out.write("\t<br />\r\n");
      out.write("\r\n");
      out.write("\t<h1 id=\"mapname\">CafeMap(카페 지도)</h1>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"map_wrap\">\r\n");
      out.write("    <div id=\"map\" style=\"width:100%;height:100%;position:relative;overflow:hidden;\"></div>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"menu_wrap\" class=\"bg_white\">\r\n");
      out.write("        <div class=\"option\">\r\n");
      out.write("            <div>\r\n");
      out.write("          <form onsubmit=\"searchPlaces(); return false;\">\r\n");
      out.write("                    키워드 : <input type=\"text\" value=\"폴리텍\" id=\"keyword\" size=\"15\"> \r\n");
      out.write("                    <button type=\"submit\">검색하기</button> \r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <ul id=\"placesList\"></ul>\r\n");
      out.write("        <div id=\"pagination\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=2ee6c92474dfdeb528b57f280e472ffc&libraries=services\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t// 마커를 담을 배열입니다\r\n");
      out.write("\tvar markers = [];\r\n");
      out.write("\t\r\n");
      out.write("\tvar mapContainer = document.getElementById('map'), // 지도를 표시할 div\r\n");
      out.write("\t    mapOption = {\r\n");
      out.write("\t        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표\r\n");
      out.write("\t        level: 3 // 지도의 확대 레벨\r\n");
      out.write("\t    };  \r\n");
      out.write("\t\r\n");
      out.write("\t// 지도를 생성합니다    \r\n");
      out.write("\tvar map = new kakao.maps.Map(mapContainer, mapOption);\r\n");
      out.write("\t\r\n");
      out.write("\t//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다\r\n");
      out.write("\tvar mapTypeControl = new kakao.maps.MapTypeControl();\r\n");
      out.write("\t\r\n");
      out.write("\t// 지도에 컨트롤을 추가해야 지도위에 표시됩니다\r\n");
      out.write("\t// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다\r\n");
      out.write("\tmap.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);\r\n");
      out.write("\t\r\n");
      out.write("\t// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다\r\n");
      out.write("\tvar zoomControl = new kakao.maps.ZoomControl();\r\n");
      out.write("\tmap.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);\r\n");
      out.write("\t\r\n");
      out.write("\t// 마커를 표시할 위치와 title 객체 배열입니다\r\n");
      out.write("\tvar positions = [];\r\n");
      out.write("\t\r\n");
      out.write("\t");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t// 마커 이미지의 이미지 주소입니다\r\n");
      out.write("\tvar imageSrc = \"resources/img/core-img/abc.ico\";\r\n");
      out.write("\t\r\n");
      out.write("\tfor (var i = 0; i < positions.length; i++) {\r\n");
      out.write("\t\r\n");
      out.write("\t\t// 마커 이미지의 이미지 크기 입니다\r\n");
      out.write("\t\tvar imageSize = new kakao.maps.Size(35, 35);\r\n");
      out.write("\t\r\n");
      out.write("\t\t// 마커 이미지를 생성합니다    \r\n");
      out.write("\t\tvar markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);\r\n");
      out.write("\t\r\n");
      out.write("\t\t// 마커를 생성합니다\r\n");
      out.write("\t\tvar marker = new kakao.maps.Marker({\r\n");
      out.write("\t\t\tmap : map, // 마커를 표시할 지도\r\n");
      out.write("\t\t\tposition : positions[i].latlng, // 마커를 표시할 위치\r\n");
      out.write("\t\t\ttitle : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다\r\n");
      out.write("\t\t\timage : markerImage\r\n");
      out.write("\t\t// 마커 이미지 \r\n");
      out.write("\t\t});\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 장소 검색 객체를 생성합니다\r\n");
      out.write("\tvar ps = new kakao.maps.services.Places();  \r\n");
      out.write("\t\r\n");
      out.write("\t// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다\r\n");
      out.write("\tvar infowindow = new kakao.maps.InfoWindow({zIndex:1});\r\n");
      out.write("\t\r\n");
      out.write("\t// 키워드로 장소를 검색합니다\r\n");
      out.write("\tsearchPlaces();\r\n");
      out.write("\t\r\n");
      out.write("\t// 키워드 검색을 요청하는 함수입니다\r\n");
      out.write("\tfunction searchPlaces() {\r\n");
      out.write("\t\r\n");
      out.write("\t    var keyword = document.getElementById('keyword').value;\r\n");
      out.write("\t\r\n");
      out.write("\t    if (!keyword.replace(/^\\s+|\\s+$/g, '')) {\r\n");
      out.write("\t        alert('키워드를 입력해주세요!');\r\n");
      out.write("\t        return false;\r\n");
      out.write("\t    }\r\n");
      out.write("\t\r\n");
      out.write("\t    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다\r\n");
      out.write("\t    ps.keywordSearch( keyword, placesSearchCB); \r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다\r\n");
      out.write("\tfunction placesSearchCB(data, status, pagination) {\r\n");
      out.write("\t    if (status === kakao.maps.services.Status.OK) {\r\n");
      out.write("\t\r\n");
      out.write("\t        // 정상적으로 검색이 완료됐으면\r\n");
      out.write("\t        // 검색 목록과 마커를 표출합니다\r\n");
      out.write("\t        displayPlaces(data);\r\n");
      out.write("\t\r\n");
      out.write("\t        // 페이지 번호를 표출합니다\r\n");
      out.write("\t        displayPagination(pagination);\r\n");
      out.write("\t\r\n");
      out.write("\t    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {\r\n");
      out.write("\t\r\n");
      out.write("\t        alert('검색 결과가 존재하지 않습니다.');\r\n");
      out.write("\t        return;\r\n");
      out.write("\t\r\n");
      out.write("\t    } else if (status === kakao.maps.services.Status.ERROR) {\r\n");
      out.write("\t\r\n");
      out.write("\t        alert('검색 결과 중 오류가 발생했습니다.');\r\n");
      out.write("\t        return;\r\n");
      out.write("\t\r\n");
      out.write("\t    }\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 검색 결과 목록과 마커를 표출하는 함수입니다\r\n");
      out.write("\tfunction displayPlaces(places) {\r\n");
      out.write("\t\r\n");
      out.write("\t    var listEl = document.getElementById('placesList'), \r\n");
      out.write("\t    menuEl = document.getElementById('menu_wrap'),\r\n");
      out.write("\t    fragment = document.createDocumentFragment(), \r\n");
      out.write("\t    bounds = new kakao.maps.LatLngBounds(), \r\n");
      out.write("\t    listStr = '';\r\n");
      out.write("\t    \r\n");
      out.write("\t    // 검색 결과 목록에 추가된 항목들을 제거합니다\r\n");
      out.write("\t    removeAllChildNods(listEl);\r\n");
      out.write("\t\r\n");
      out.write("\t    // 지도에 표시되고 있는 마커를 제거합니다\r\n");
      out.write("\t    removeMarker();\r\n");
      out.write("\t    \r\n");
      out.write("\t    for ( var i=0; i<places.length; i++ ) {\r\n");
      out.write("\t\r\n");
      out.write("\t        // 마커를 생성하고 지도에 표시합니다\r\n");
      out.write("\t        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),\r\n");
      out.write("\t            marker = addMarker(placePosition, i), \r\n");
      out.write("\t            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다\r\n");
      out.write("\t\r\n");
      out.write("\t        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해\r\n");
      out.write("\t        // LatLngBounds 객체에 좌표를 추가합니다\r\n");
      out.write("\t        bounds.extend(placePosition);\r\n");
      out.write("\t\r\n");
      out.write("\t        // 마커와 검색결과 항목에 mouseover 했을때\r\n");
      out.write("\t        // 해당 장소에 인포윈도우에 장소명을 표시합니다\r\n");
      out.write("\t        // mouseout 했을 때는 인포윈도우를 닫습니다\r\n");
      out.write("\t        (function(marker, title) {\r\n");
      out.write("\t            kakao.maps.event.addListener(marker, 'mouseover', function() {\r\n");
      out.write("\t                displayInfowindow(marker, title);\r\n");
      out.write("\t            });\r\n");
      out.write("\t\r\n");
      out.write("\t            kakao.maps.event.addListener(marker, 'mouseout', function() {\r\n");
      out.write("\t                infowindow.close();\r\n");
      out.write("\t            });\r\n");
      out.write("\t\r\n");
      out.write("\t            itemEl.onmouseover =  function () {\r\n");
      out.write("\t                displayInfowindow(marker, title);\r\n");
      out.write("\t            };\r\n");
      out.write("\t\r\n");
      out.write("\t            itemEl.onmouseout =  function () {\r\n");
      out.write("\t                infowindow.close();\r\n");
      out.write("\t            };\r\n");
      out.write("\t        })(marker, places[i].place_name);\r\n");
      out.write("\t\r\n");
      out.write("\t        fragment.appendChild(itemEl);\r\n");
      out.write("\t    }\r\n");
      out.write("\t\r\n");
      out.write("\t    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다\r\n");
      out.write("\t    listEl.appendChild(fragment);\r\n");
      out.write("\t    menuEl.scrollTop = 0;\r\n");
      out.write("\t\r\n");
      out.write("\t    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다\r\n");
      out.write("\t    map.setBounds(bounds);\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 검색결과 항목을 Element로 반환하는 함수입니다\r\n");
      out.write("\tfunction getListItem(index, places) {\r\n");
      out.write("\t\r\n");
      out.write("\t    var el = document.createElement('li'),\r\n");
      out.write("\t    itemStr = '<span class=\"markerbg marker_' + (index+1) + '\"></span>' +\r\n");
      out.write("\t                '<div class=\"info\">' +\r\n");
      out.write("\t                '   <h5>' + places.place_name + '</h5>';\r\n");
      out.write("\t\r\n");
      out.write("\t    if (places.road_address_name) {\r\n");
      out.write("\t        itemStr += '    <span>' + places.road_address_name + '</span>' +\r\n");
      out.write("\t                    '   <span class=\"jibun gray\">' +  places.address_name  + '</span>';\r\n");
      out.write("\t    } else {\r\n");
      out.write("\t        itemStr += '    <span>' +  places.address_name  + '</span>'; \r\n");
      out.write("\t    }\r\n");
      out.write("\t                 \r\n");
      out.write("\t      itemStr += '  <span class=\"tel\">' + places.phone  + '</span>' +\r\n");
      out.write("\t                '</div>';           \r\n");
      out.write("\t\r\n");
      out.write("\t    el.innerHTML = itemStr;\r\n");
      out.write("\t    el.className = 'item';\r\n");
      out.write("\t\r\n");
      out.write("\t    return el;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다\r\n");
      out.write("\tfunction addMarker(position, idx, title) {\r\n");
      out.write("\t    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다\r\n");
      out.write("\t        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기\r\n");
      out.write("\t        imgOptions =  {\r\n");
      out.write("\t            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기\r\n");
      out.write("\t            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표\r\n");
      out.write("\t            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표\r\n");
      out.write("\t        },\r\n");
      out.write("\t        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),\r\n");
      out.write("\t            marker = new kakao.maps.Marker({\r\n");
      out.write("\t            position: position, // 마커의 위치\r\n");
      out.write("\t            image: markerImage \r\n");
      out.write("\t        });\r\n");
      out.write("\t\r\n");
      out.write("\t    marker.setMap(map); // 지도 위에 마커를 표출합니다\r\n");
      out.write("\t    markers.push(marker);  // 배열에 생성된 마커를 추가합니다\r\n");
      out.write("\t\r\n");
      out.write("\t    return marker;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 지도 위에 표시되고 있는 마커를 모두 제거합니다\r\n");
      out.write("\tfunction removeMarker() {\r\n");
      out.write("\t    for ( var i = 0; i < markers.length; i++ ) {\r\n");
      out.write("\t        markers[i].setMap(null);\r\n");
      out.write("\t    }   \r\n");
      out.write("\t    markers = [];\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다\r\n");
      out.write("\tfunction displayPagination(pagination) {\r\n");
      out.write("\t    var paginationEl = document.getElementById('pagination'),\r\n");
      out.write("\t        fragment = document.createDocumentFragment(),\r\n");
      out.write("\t        i; \r\n");
      out.write("\t\r\n");
      out.write("\t    // 기존에 추가된 페이지번호를 삭제합니다\r\n");
      out.write("\t    while (paginationEl.hasChildNodes()) {\r\n");
      out.write("\t        paginationEl.removeChild (paginationEl.lastChild);\r\n");
      out.write("\t    }\r\n");
      out.write("\t\r\n");
      out.write("\t    for (i=1; i<=pagination.last; i++) {\r\n");
      out.write("\t        var el = document.createElement('a');\r\n");
      out.write("\t        el.href = \"#\";\r\n");
      out.write("\t        el.innerHTML = i;\r\n");
      out.write("\t\r\n");
      out.write("\t        if (i===pagination.current) {\r\n");
      out.write("\t            el.className = 'on';\r\n");
      out.write("\t        } else {\r\n");
      out.write("\t            el.onclick = (function(i) {\r\n");
      out.write("\t                return function() {\r\n");
      out.write("\t                    pagination.gotoPage(i);\r\n");
      out.write("\t                }\r\n");
      out.write("\t            })(i);\r\n");
      out.write("\t        }\r\n");
      out.write("\t\r\n");
      out.write("\t        fragment.appendChild(el);\r\n");
      out.write("\t    }\r\n");
      out.write("\t    paginationEl.appendChild(fragment);\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다\r\n");
      out.write("\t// 인포윈도우에 장소명을 표시합니다\r\n");
      out.write("\tfunction displayInfowindow(marker, title) {\r\n");
      out.write("\t    var content = '<div style=\"padding:5px;z-index:1;\">' + title + '</div>';\r\n");
      out.write("\t\r\n");
      out.write("\t    infowindow.setContent(content);\r\n");
      out.write("\t    infowindow.open(map, marker);\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t // 검색결과 목록의 자식 Element를 제거하는 함수입니다\r\n");
      out.write("\tfunction removeAllChildNods(el) {   \r\n");
      out.write("\t    while (el.hasChildNodes()) {\r\n");
      out.write("\t        el.removeChild (el.lastChild);\r\n");
      out.write("\t    }\r\n");
      out.write("\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("\t<br />\r\n");
      out.write("\t<br />\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/includes/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- ##### All Javascript Script ##### -->\r\n");
      out.write("\t<!-- jQuery-2.2.4 js -->\r\n");
      out.write("\t<script src=\"resources/js/jquery/jquery-2.2.4.min.js\"></script>\r\n");
      out.write("\t<!-- Popper js -->\r\n");
      out.write("\t<script src=\"resources/js/bootstrap/popper.min.js\"></script>\r\n");
      out.write("\t<!-- Bootstrap js -->\r\n");
      out.write("\t<script src=\"resources/js/bootstrap/bootstrap.min.js\"></script>\r\n");
      out.write("\t<!-- All Plugins js -->\r\n");
      out.write("\t<script src=\"resources/js/plugins/plugins.js\"></script>\r\n");
      out.write("\t<!-- Active js -->\r\n");
      out.write("\t<script src=\"resources/js/active.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/views/map.jsp(130,1) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/map.jsp(130,1) '${maplist}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${maplist}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /WEB-INF/views/map.jsp(130,1) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("maplist");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\tpositions.push({\r\n");
            out.write("\t\t\ttitle : '카페(Cafe)',\r\n");
            out.write("\t\t\tlatlng : new kakao.maps.LatLng(");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maplist.LATITUDE}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(',');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maplist.LONGITUDE}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(")\r\n");
            out.write("\t\t});\r\n");
            out.write("\t");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}