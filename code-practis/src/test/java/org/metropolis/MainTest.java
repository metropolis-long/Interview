package org.metropolis;

import org.junit.jupiter.api.Test;
import org.metropolis.proxy.UserService;
import org.metropolis.proxy.UserServiceImpl;
import org.metropolis.tools.UserProxy;
import org.springframework.boot.test.context.SpringBootTest;

import java.lang.reflect.Proxy;

@SpringBootTest
public class MainTest {
    @Test
    public void test(){
        System.out.println("hello test");
    };

    @Test
    public void test2(){

        System.out.println("hello test");
        UserProxy userProxy = new UserProxy(new UserServiceImpl());
        UserService service = (UserService)Proxy.newProxyInstance(
                UserServiceImpl.class.getClassLoader(),
                UserServiceImpl.class.getInterfaces(),
                userProxy);
        service.complete(2);
    };
}