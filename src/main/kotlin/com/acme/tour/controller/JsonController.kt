package com.acme.tour.controller

import com.acme.tour.model.Cliente
import com.acme.tour.model.SimpleObject
import com.acme.tour.model.Telefone
import org.springframework.beans.factory.annotation.Value
import org.springframework.core.env.Environment
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import java.util.*

@RestController
class JsonController(private val environment:Environment) {

    @Value("\${spring.profiles.active}")
    lateinit var profile: String


    @GetMapping("/json")
    fun getJson() = SimpleObject()

    @GetMapping("/cliente")
    fun getCliente(): Cliente {
        if(this.environment.activeProfiles.contains("prod")){ //SE producao

        }else { // Qualquer Outro

        }
        var telefone = Telefone("21", "27178093", "fixo")
        var cliente = Cliente(1,"Leonardo", Date(), telefone)
        return cliente

    }
}