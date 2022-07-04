package indi.config;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradePagePayModel;
import com.alipay.api.request.AlipayTradePagePayRequest;
import indi.domain.AlipayBean;


public class AliPayConfig {



    public String pay(AlipayBean alipayBean) throws  AlipayApiException {
        //appid "2021000118674559"
        //public "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3A7ajGkOKYuRBZK0OyKaTxZmBoxc2F+JMa4ny0pnTeRNTllqr0jnf1OeSEViJLvUPQMv1GNvvSCcVOLQQUOIEJkSwqiC1LKwVu/xg4peh+zCEsDgSl25AXY4r3gDLVfvNlanfdqfeXiY5qekeatcnN6dML/2bdXnPFIEn9viJeCtYeB8osUsDJuyUkmf/c8Q5vl3P6rVjoqo10sUlxzyjO9jy6bqWGpgAjVl10Aur7fwy1QcSwDZhrpVtlb0WZI3IkZ1v0bq19AkbM2bhg+4eQ+NMlG817umiqUlhJ4RTCpTCn+OXMnHNPkxUi5fVF0JC0GE4EEJsmeLqdBYB3PE2QIDAQAB",
        //private "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDcDtqMaQ4pi5EFkrQ7IppPFmYGjFzYX4kxrifLSmdN5E1OWWqvSOd/U55IRWIku9Q9Ay/UY2+9IJxU4tBBQ4gQmRLCqILUsrBW7/GDil6H7MISwOBKXbkBdjiveAMtV+82Vqd92p95eJjmp6R5q1yc3p0wv/Zt1ec8UgSf2+Il4K1h4HyixSwMm7JSSZ/9zxDm+Xc/qtWOiqjXSxSXHPKM72PLpupYamACNWXXQC6vt/DLVBxLANmGulW2VvRZkjciRnW/RurX0CRszZuGD7h5D40yUbzXu6aKpSWEnhFMKlMKf45cycc0+TFSLl9UXQkLQYTgQQmyZ4up0FgHc8TZAgMBAAECggEBAKBBlPkyPKUWxcsoNmbmYTf9WNml+Kt+j5wFd2d9zNOV0pKfXak/T4+TZq69EKctvnecTYW/0I0MJa1P7FfLBVkJEPd/3p9lbjQx01F3QDZ+visIGY8ux99/p/JpVO79nfCVlK57uy2sHLXFGmuc1vpKyHDLK3x7jUWJeWKtr/jiV8JHhYc9gVVIFSABDPVhPfuGkype87HVma+X2AdDck1eLGaBcc6D0GxUK9WIj2rVQWghU3sfNyUs3NzGT7oZ7sAJF+98oGyBlF8wbPi0r0JPVApzWU/EYDLsDXinYDrPzO+Q9J7nKY/nWJgC1WAXmEAqjI72U+EkRbpG+PXbYwECgYEA8UDKXNyRPCbjrImliMvvAp9E7oFWV3WLliuuCACWWgLf50rRr/AzdfptvT6lCFuM5Nx+DU0aClU46h8auHR7W6QQuE/TByegAytpRZeAcjv6SO2PrrMY+mujFuFkRgORQV42j7pUp6cLhhp13obo4OUxFyFLP0TwIqyco0CwcGECgYEA6YJlTQDfVIYtBvf8lVxbEtGz/nrlLStOlA5OJ4vLqFpXWjFG+5jDwLvBSRQUXK8PZ8wg0QVdRLEKoemNn0d9on3cs0zJ3evgdiDz2CeMBMn/rOLYKpDC64EH5tLJqeMmxbazyageFkvK8M5jgXJVPkEddtyZ75HWfCEx6HJ8B3kCgYBK5p2tRQGGVmCbQcT1+rLC8qXZEqi20JS80+TdMSl82qWfTphZck7X0x9dAOUF+j59E4PDJ2vtR1Y7Qdru56Mg6YgTYR0YfJHuSf0OESJc1Qg4uiDA0XPw05g301RpdFQVomV4LBZ6Up9+TBrKMsJ8iEu8babKBuIzMboT6VKeIQKBgQC0mFK8cVZIStV8NEM3SQxuy5zHzkh83KeTPlUXpLjH5cb1THM3lviekRd163+sBwCFKIyg2+M8gyhT/Qu5ClOSXoFYcqUVa55X/jhZDozuD0Qcc/z3Pqph9ZMk5BVvvOx5sUnvRoSufcPg5d5zePeQhE/DY+3yKPqXWhz9R73BEQKBgEVxQihWx1Kpxnb8otXvyi6kj71vBwaBtGL+AuS3RuRgpVrVil0SWBKZrGC8LvGAReRXJ6iK2qUwNqTgI+pdbWH50pKJpDE6iqGk+6Xas5khYD2vuK/pc2LLPrXe4yIMXWl8EfXsUfg6bxoCiOaR99oMKqrMeCFPShn1JhoYjJ0I",
        String appId = "2021000118676013";
        String alipayPublicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmGkky+egge4ZsWjYO6uw5Ud7iFMz/pXsPjVAFKaRrdCkBX8429aWEFwJni5PDPvhB2krX8DNH9N5Hjr89+iBH4fE5kB0sh5voidUKdKf8L8mCtpVspMg0De/TmuqIXKjZM9dlLL7CwwdblPB2BtTwlGFs2KbFjL19ZxLTd/PEAW3Z4d7jjTkJ7rV5GYvcmzVWv308vRelGLWSqCu8E5VJEy1YuQxoYsc6tE2FfGPX13GZ2B+EsDAHbXkqPQFwKsy3vVX0ntL1OJ3VM1lCXQKw+AR/l2S3KV86enuhOCXdoMQRABlFTiPcjvgE+BtBWrcsCVwDxdubCzziSf36DsjGQIDAQAB";
        String privateKey = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCjWrpd/uLU0PQjNp1cskuv/Nb1FMeBgDKpE9RuHlbxHNuPgn2yQCcY/76qTx/6siuN4A8SQFPEJ+PqcI8o58JQKfWNXOSoidazyru2WNdntKtvsB8xeTq0sq+0ZX2jbUImbsSVMQjzBbihn1f1nT5/3LcFZjEESvcO6ToywwyiXD3z02aLIGAUtYJDMa+YH/TbqJchlwS2f9AdjQUZVRomC1xAB2DrQ8qcjI+guzt6dIhJ1YAfCtWV3C9TzIwfZmme8u7lwd+CvOd7PrEwIEKmjaRib54kNQNkX/R4vYasc5dHx6ovHqWYHjJjVFFa5ql0SmRNpWnN4ahZJNyoQ82tAgMBAAECggEAbifmeTBCgkSN/Zj8sN/CzmBwDEEA8EEk6INowwFOm7VcEgBrBuLf+qmrR2moJQQ0/q1TPHmIg0RrG1LgFzOCA1DoN3Wm9EhPMlrKDoMGbvaUjPJ1doVLo0LD3aB7AtPQwd38TqcMY+U9xi+Pvx9UYCDUgp2Q/FYZGEMKbeS+BlWd2X9TNRBzoJRdL3bv0gOHovAEcC2siD1jrMs4BjNurlTl5nyd95n0az9aB7WhKieqo3MlPR0Tr2uFoDJ8XAdmTYLf4x4bIOCxHcWJ3UUSsANqmE/jfF4VHeMYZR5W4ZOHxXkJR3lnz1/Mx0jSNaTSxHdo0leeyfNJgn6NN7e1QQKBgQDOLjrMnz9RfqkWCiJmj2+Z6Ma5J9RUdW0AVaoqL5Jkf3l6dTZ3iM9869LdI1wgwI1A7ez85izHaaRKUZBBA9QWbzvyDGL7S+7t3dFvAyoLhUGFAoneLfJYwEZRClnp7t+FhCTC7uGxKkyoR40PeFA5c+YIkAtXyslHufAzMRbOJQKBgQDK02MqdQcWY32K9arbSuoEamLxPaZM6TAfdpw3BP04wz7xDbrK7+wzD3WmQtg5NVQGc6jKH2DBgpFraUY97qgmUqkoiYlZoA7UWp9MJVhF/9C2bNLm2i4g/B+4Ey99dfSuzvlBc3PigIT4sgHM/KYHZvGlH42HTdHiVP1yvC8W6QKBgCkeUx+nyqroBbSdhMrLZEhfgfI/HTtSx9A/RVZwclOUkJd5dMlWAXs6VK1BdggaHpGKYa72AIwsZ1Vi+s/cgZmPyXa2Pa88L4RErpXjHal6g9yQ6wniQ+irP9q9o7zhpLYt6l7t4RjCBNOyoVEqf2VV1dRzVa/Gg2nIjTzIV3H5AoGBAJT/VQoLjnlT/RXoAuu1zNQRkz3FHDXD2CZE690/PQZF6CcM/vu15L5dzP+me1ELa/6RWJ2jD2EYmdteKsu0VrJQZxPwdYXxnvNA32UAyigiFSDuMMCF5v00OdjvvyNbU7RXN6RtO+RYpVZM7iW4M/+cEEhNNZr///9UkBuJQs6BAoGALRrPU6jZL+CQUdNRdmOYCpYFeu2gflKivzIhimUBwl4BTdgEJnN8VQwtEUBdZtEBFQDqkC9eOqqGKS1EXJE/7h94fb5s0wPzmz6a/iq4bapiMN68owVxEZAV0vyjY0qErte65TjkFIVNfNvd8JEz1EEvQDhS1xSvJUgk1cdaEq0=";
        AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipaydev.com/gateway.do",appId
                , privateKey,"json", "utf-8", alipayPublicKey, "RSA2");
        // 2、设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        // 页面跳转同步通知页面路径
        alipayRequest.setReturnUrl("http://localhost:8081/PayOverServlet");
        // 封装参数
        AlipayTradePagePayModel model = new AlipayTradePagePayModel();
        System.out.println("subject:  " + alipayBean.getSubject());
        System.out.println("getOut_trade_no:  " + alipayBean.getOut_trade_no());
        System.out.println("getTotal_amount:  " + alipayBean.getTotal_amount());
        model.setSubject(alipayBean.getSubject());
        model.setOutTradeNo(alipayBean.getOut_trade_no());
        model.setTotalAmount(alipayBean.getTotal_amount());
        model.setProductCode(alipayBean.getProduct_code());
//        alipayRequest.setBizContent(JSON.toJSONString(alipayBean));
        alipayRequest.setBizModel(model);
        // 3、请求支付宝进行付款，并获取支付结果
        String result = alipayClient.pageExecute(alipayRequest).getBody();
        System.out.println(result);
        // 返回付款信息
        return result;
    }
}
