package indi.service;

import com.alipay.api.AlipayApiException;
import indi.domain.AlipayBean;


public interface PayService {
    /**
     * 支付宝支付接口
     * @param alipayBean
     * @return
     * @throws AlipayApiException
     */
    String aliPay(AlipayBean alipayBean) throws AlipayApiException;
}
