package com.yash.ngo.service;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import com.razorpay.Utils;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {

    private String keyId = "rzp_test_BZSOgBnXQoiSLs";
    private String keySecret = "7w4e5De2WRns6f886ErSLi2b";

    private RazorpayClient getRazorpayClient() throws RazorpayException 
    {
        return new RazorpayClient(keyId, keySecret);
    }

    public String createOrder(Double amount, String currency, String receipt) {
        try {
            RazorpayClient razorpay = getRazorpayClient();
            JSONObject orderRequest = new JSONObject();
            orderRequest.put("amount", amount * 100); // amount in paisa
            orderRequest.put("currency", "INR");
            orderRequest.put("receipt", receipt);
            Order order = razorpay.orders.create(orderRequest);
            return order.get("id");
        } catch (Exception e) {
            throw new RuntimeException("Error creating Razorpay order", e);
        }
    }

    public boolean verifySignature(String orderId, String paymentId, String signature) {
        try {
            String data = orderId + "|" + paymentId;
            return Utils.verifySignature(data, signature, keySecret);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
