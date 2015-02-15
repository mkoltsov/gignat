package ru.javabean.demo.gignat.config;


import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.embedded.*;

import javax.annotation.PreDestroy;
import javax.inject.Inject;
import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.sql.Driver;

/**
 * Database configuration class
 *
 * @author mkoltsov
 */
@Configuration
@Profile("prod")
@SuppressWarnings("unused")
public class DatabaseConfig {
    @Value("${gnt.pool.minSize}")
    private int minPoolSize;

    @Value("${gnt.pool.maxSize}")
    private int maxPoolSize;

    @Value("${gnt.pool.maxIdleTime}")
    private int maxIdleTime;


    @Inject
    private DataSource dataSource;

    @Bean
    public DataSource dataSource() {
        return new EmbeddedC3P0DatabaseBuilder()
                .setType(EmbeddedDatabaseType.HSQL)
                .addScripts(
                        "classpath:sql/create_schema.sql",
                        "classpath:sql/create_tables.sql",
                        "classpath:sql/populate_tables.sql"
                ).setName("gignat").ignoreFailedDrops(true).build();

    }

    @Bean
    public JdbcTemplate jdbcTemplate() {
        return new JdbcTemplate(dataSource);
    }

    private ComboPooledDataSource getDefaultDS() {
        ComboPooledDataSource ds = new ComboPooledDataSource();
        ds.setMinPoolSize(minPoolSize);
        ds.setInitialPoolSize(minPoolSize);
        ds.setMaxPoolSize(maxPoolSize);
        ds.setMaxIdleTime(maxIdleTime);
        ds.setAutoCommitOnClose(false);
        return ds;
    }

    private class ComboPoolDataSourceFactory implements DataSourceFactory,
            ConnectionProperties {
        private final ComboPooledDataSource dataSource;

        public ComboPoolDataSourceFactory() {
            this(getDefaultDS());
        }

        public ComboPoolDataSourceFactory(ComboPooledDataSource dataSource) {
            assert dataSource != null;
            this.dataSource = dataSource;
        }

        public ConnectionProperties getConnectionProperties() {
            return this;
        }

        public ComboPooledDataSource getDataSource() {
            return dataSource;
        }

        public void setUsername(String username) {
            dataSource.setUser(username);
        }

        public void setPassword(String password) {
            dataSource.setPassword(password);
        }


        public void setUrl(String url) {
            dataSource.setJdbcUrl(url);
        }

        @Override
        public void setDriverClass(Class<? extends Driver> driverClass) {
            try {
                dataSource.setDriverClass(driverClass.getName());
            } catch (PropertyVetoException e) {
                e.printStackTrace();
            }
        }
    }

    private class EmbeddedC3P0DatabaseBuilder extends EmbeddedDatabaseBuilder {
        public EmbeddedC3P0DatabaseBuilder() {
            setDataSourceFactory(new ComboPoolDataSourceFactory());
        }
    }

    @PreDestroy
    private void destroyDb() {
        ((EmbeddedDatabase) dataSource()).shutdown();
    }
}
