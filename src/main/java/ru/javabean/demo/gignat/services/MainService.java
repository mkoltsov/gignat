package ru.javabean.demo.gignat.services;

import com.google.common.base.Optional;
import com.google.common.base.Splitter;
import com.google.common.collect.FluentIterable;
import com.jcabi.log.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * A class that actually retrieves data from the database
 *
 * @author mkoltsov
 */
@Repository
public class MainService {
    @Inject
    private JdbcTemplate jdbcTemplate;

    /**
     * Gets chart data from the DB
     *
     * @param client
     * @return list of chart data
     */
    public List<Map<String, Object>> getChartData(String client) {
        Logger.debug(this, "chart data for %s", client);
        return jdbcTemplate.queryForList("SELECT pointa, pointb from gignat.SALES WHERE COMPANY=?", client);
    }

    /**
     * Gets a list of clients from the DB
     *
     * @return list of clients
     */
    public List<Map<String, Object>> getClients() {
        Logger.debug(this, "list of clients");
        return jdbcTemplate.queryForList("SELECT * from gignat.CLIENTS");
    }

    /**
     * Gets a paginated list of clients from the DB
     *
     * @return paginated list of clients
     */
    public List<Map<String, Object>> getClientsPaginated(int last) {
        Logger.debug(this, "paginated client list");
        return jdbcTemplate.queryForList("SELECT * from gignat.CLIENTS WHERE ID>? AND ROWNUM <11 ORDER BY ID", last);
    }

    /**
     * Gets db name
     *
     * @return name
     * @throws SQLException
     */
    public String getDatabaseName() throws SQLException {
        Optional<String> sid = FluentIterable.from(Splitter.on(':')
                .trimResults()
                .split(jdbcTemplate
                        .getDataSource()
                        .getConnection()
                        .getMetaData()
                        .getURL()))
                .last();
        return sid.isPresent() ? sid.get() : "N/A";
    }

    /**
     * Gets dashboard data
     *
     * @param user
     * @return
     */
    public List<Map<String, Object>> getDashboardData(String user) {
        return jdbcTemplate.queryForList("SELECT KEY, VALUE, COLOR, ICON from gignat.DASHBOARD WHERE LOGIN=?", user);
    }

    /**
     * Gets dashboard data
     *
     * @param client
     * @return
     */
    public List<Map<String, Object>> getAssets(String client) {
        return jdbcTemplate.queryForList("SELECT ASSET, CNT from gignat.CLIENTASSETS WHERE COMPANY=? ORDER BY ASSET", client);
    }
}
