package ru.javabean.demo.gignat.controllers;

import ru.javabean.demo.gignat.services.MainService;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

/**
 * Main controller, all the requests are protected
 *
 * @author mkoltsov
 */
@RestController
@SuppressWarnings("unused")
@RequestMapping("/api/v1/dashboard")
class DashboardController {


    @Inject
    MainService mainService;

    /**
     * Retrieves client's chart data
     *
     * @param client
     * @return a list of financial data to do a plot
     */
    @RequestMapping(value = "/clients/{client}", params = {"chart"})
    Object getChartData(@PathVariable String client) {
        return mainService.getChartData(client);
    }

    /**
     * Retrieves client's assets data
     *
     * @param client
     * @return an array of financial data
     */
    @RequestMapping(value = "/clients/{client}", params = {"assets"})
    Object getAssets(@PathVariable String client) {
        return mainService.getAssets(client);
    }

    /**
     * Returns clients by id
     *
     * @param id
     * @return clients list ordered by id
     */
    @RequestMapping(value = "/clients/{id}", params = {"data"})
    Object getClientsData(@PathVariable int id) {
        return mainService.getClientsPaginated(id);
    }

    /**
     * Gets all the clients
     *
     * @return list of clients
     */
    @RequestMapping(value = "/clients")
    Object getClients() {
        return mainService.getClients();
    }

    /**
     * Retrieves parameters to build an user's dashboard
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/data/{user}")
    Object getClients(@PathVariable String user) {
        return mainService.getDashboardData(user);
    }
}

