<%--
  Created by IntelliJ IDEA.
  User: ZYD
  Date: 2021/12/21
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>支付</title>
</head>
<body>
<%--    <form name="test" method="post" action="/123456">--%>
<%--        <input name="username" type="text" value="12345"/>--%>
<%--        <input name="password" type="text" value="123456"/>--%>
<%--        <input name="submit" type="submit" value="submit" />--%>
<%--    </form>--%>

    <form name="punchout_form" method="post" action="https://openapi.alipaydev.com/gateway.do?charset=utf-8&method=alipay.trade.page.pay&sign=pubfHaI%2BFdaVnrCpKEncJzTFNPYg3xuOzHwgNObLFanU656za6NeECrw%2BYANSa2SGzfHMormmz%2FndXY%2FFbdfa6ge7DKVkGLdQjP%2BGzG8bVKWbL05TjqVD01AFIcKK4Oeew%2BpbHrjyJnrn9TrEdFzMfzMG1HJtXeNrul%2BPAdb5SJPOxBuyEKJOMInimfoLQOZUnU9SiPk4WYRhJ3UvaegHvmRiqSBQ4H%2BG8gpeTpKFBlfvj9iw%2BpED51lZZoPT2%2FOthsvmhNPbCgraDp99gFqedcWT2AoAV8kakSCO4fb8LDt6G2mVzt85z53vhRPgSUbhAjucE1OfNW5qaBeJkwZMw%3D%3D&return_url=http%3A%2F%2Flocalhost%3A8081%2FShowgoodsServlet&version=1.0&app_id=2021000118674559&sign_type=RSA2&timestamp=2021-12-21+16%3A12%3A23&alipay_sdk=alipay-sdk-java-3.7.110.ALL&format=json">
        <input type="hidden" name="biz_content" value='{"out_trade_no":"1","product_code":"FAST_INSTANT_TRADE_PAY","subject":"test","total_amount":"0.01"}'>
        <input type="submit" value="立即支付"/>
    </form>
</body>
</html>
