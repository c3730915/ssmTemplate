package org.jayden.Test;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Test;

public class ShiroTest {

    @Test
    public void loginTest ()
        {
        //读取配置文件，初始化shiroManger工厂
        Factory<SecurityManager> factory = new IniSecurityManagerFactory("classpath:shiro/shiro.ini");
        //工厂模式,获得securityManager实例对象
        SecurityManager securityManager = factory.getInstance();
        //将securityManger实例绑定到SecurityUtils
        SecurityUtils.setSecurityManager(securityManager);
        //获取当前执行的用户
        Subject currentUser = SecurityUtils.getSubject();
        //创建token令牌，用户名/密码
        UsernamePasswordToken token = new UsernamePasswordToken("lyd","123456");
        try {
            //当前用户登录
            currentUser.login(token);
            System.out.println("身份验证成功！");
        }catch(org.apache.shiro.authc.AuthenticationException e){
            e.printStackTrace();
            System.out.println("身份认证失败！");
        }
        //退出
        currentUser.logout();
    }

}
