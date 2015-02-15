package ru.javabean.demo.gignat.controllers;

import ru.javabean.demo.gignat.services.MainService;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.inject.Inject;
import java.sql.SQLException;

/**
 * Additional controller, request are unauthenticated
 *
 * @author mkoltsov
 */
@RestController
@SuppressWarnings("unused")
@RequestMapping("/test")
class MiscController {

    @Inject
    private MainService mainService;

    /**
     * Gets the name of currently connected database
     *
     * @return db name
     * @throws SQLException
     */
    @RequestMapping(value = "getsid", produces = MediaType.TEXT_PLAIN_VALUE)
    String getSid() throws SQLException {
        return mainService.getDatabaseName();
    }

}

