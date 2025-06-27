package com.yedam.common;

import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.*;

public class MybatisUtil {
    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            String resource = "config/mybatis-config.xml"; // resources 폴더 기준 경로
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static SqlSession getSession() {
        return sqlSessionFactory.openSession();
    }

    public static SqlSession getSession(boolean autoCommit) {
        return sqlSessionFactory.openSession(autoCommit);
    }
}
