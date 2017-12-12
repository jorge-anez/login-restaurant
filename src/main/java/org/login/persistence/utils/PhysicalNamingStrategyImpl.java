package org.login.persistence.utils;

import org.hibernate.boot.model.naming.Identifier;
import org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl;
import org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;

import static com.google.common.base.CaseFormat.*;

/**
 * Created by JORGE-HP on 6/7/2017.
 */
public class PhysicalNamingStrategyImpl extends PhysicalNamingStrategyStandardImpl {
    public static final PhysicalNamingStrategyImpl INSTANCE = new PhysicalNamingStrategyImpl();

    @Override
    public Identifier toPhysicalTableName(Identifier name, JdbcEnvironment context) {
        return new Identifier(
                UPPER_CAMEL.to(LOWER_UNDERSCORE, name.getText()),
                name.isQuoted()
        );
    }

    @Override
    public Identifier toPhysicalColumnName(Identifier name, JdbcEnvironment context) {
        return new Identifier(
                LOWER_CAMEL.to(LOWER_UNDERSCORE, name.getText()),
                name.isQuoted()
        );
    }
}
