package si.feri.ost.ost.demo.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import si.feri.ost.ost.demo.DAO.OsebaDAO;
import si.feri.ost.ost.demo.Razredi.Oseba;

@Controller
public class GlavniKontroler {



    @RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
    public String index(Model model) {

        return "index";
    }



    //testni jsp za izpise ipd.
    @RequestMapping(value = { "/Test" }, method = RequestMethod.GET)
    public String test(Model model) {

        return "Konsola";
    }

    @RequestMapping(value = { "/vpis" }, method = RequestMethod.GET)
    public String vpis(Model model) {

        return "vpis";
    }

    @RequestMapping(value = { "/add" }, method = RequestMethod.GET)
    public String dodajanjeDogodka(Model model) {

        return "add";
    }



    @RequestMapping(value = { "/registracija" }, method = RequestMethod.GET)
    public String registracija(Model model) {

        return "registracija";
    }
}
