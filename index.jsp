<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="cht.paas.util.CloudLogger" %> 
<%@ page import="cht.paas.util.LogLevel" %>
<%@ page import="com.cht.emap.webservice.sdk.MapService" %> 
 <!doctype html> <html> <head>
        <meta charset=utf-8>
        <title>project title</title>
</head>
<body>
<h1>project content</h1>
<%
com.cht.emap.webservice.sdk.TaiwanLocatorService TLService = new com.cht.emap.webservice.sdk.TaiwanLocatorService("367f7deaa1ce47b185a0c91cb6d8f714", "n+ABj+1w6e1Ht2A2ziBh0Q==", "http", "api.hicloud.hinet.net", 80);
//進行台灣行政區域定位
net.hinet.map.wfs.TaiwanLocatorService.TLS_GetNearestAll TLSResult = null; try {
 //依照參數進行台灣行政區域定位
 TLSResult = TLService.GetNearestAddress(121.518, 25.0448);  if (TLSResult.getInformation().getCode() > 0)  {
     String name = TLSResult.getSysName();
     double X = Double.parseDouble(TLSResult.getSysX());
     double Y = Double.parseDouble(TLSResult.getSysY());
     System.out.println(name);
     out.println(name);
 }
}
catch (Exception e)
{
         // 元件功能異常
 System.out.println(e.getMessage());
}

%>

</body>
</html>