package indi.service.impl;

import com.alipay.api.AlipayApiException;
import indi.config.AliPayConfig;
import indi.domain.AlipayBean;
import indi.service.PayService;




public class PayServiceImpl implements PayService {

    private AliPayConfig alipay=new AliPayConfig();

    public String aliPay(AlipayBean alipayBean) throws AlipayApiException {
        return alipay.pay(alipayBean);
    }
}
