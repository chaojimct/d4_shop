package com.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.ValueStack;
import com.po.User;


public class CheckLoginInterceptor extends AbstractInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2643492139404807511L;

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		System.out.println("begin check login interceptor!");

        // ��LoginAction������������

//        Object action = actionInvocation.getAction();
        String method = actionInvocation.getProxy().getMethod();
        System.out.println(actionInvocation.getResult()+"----code:"+actionInvocation.getResultCode()+"----------size:"+actionInvocation.getStack().size());
//        ValueStack vs = actionInvocation.getStack().size();
        
        if("login".equals(method) || "confirmPwd".equals(method) || "changePwd".equals(method)){
        	return actionInvocation.invoke();
        }
//        if (action instanceof UserAction) {
//
//            System.out.println("exit check login, because this is login action.");
//
//            return actionInvocation.invoke();
//
//        }
        Map<String, Object> session = actionInvocation.getInvocationContext().getSession();

        User user = (User) session.get("user");

        if (user != null) {

            // ���ڵ�����½��к���������

            System.out.println("already login!");

            return actionInvocation.invoke();

        } else {

            // ������ֹ��������������LOGIN

            System.out.println("no login, forward login page!");

            return "login.jsp";

        }
		
	}

}
