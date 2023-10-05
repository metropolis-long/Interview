package org.metropolis.tools;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class UserProxy implements InvocationHandler {
    private Object object;

    public UserProxy(Object object) {
        this.object = object;
    }

    private  void before(Object[] args){
        int a =(int) args[0];
        args[0]=a * 40;
        System.out.println("start////////////////");
    }

    private  void after(){
        System.out.println("end////////////////");
    }
    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        System.out.println("UserProxy.invoke  代理方法");
        before(args);
        Object invoke = method.invoke(object, args);
        after();
        return invoke;
    }
}
