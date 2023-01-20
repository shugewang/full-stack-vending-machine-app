package com.example.vending

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.data.annotation.Id
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import org.springframework.data.relational.core.mapping.Table

@SpringBootApplication
class VendingApplication

fun main(args: Array<String>) {
	runApplication<VendingApplication>(*args)
}
@RestController
class MessageResource {
	@GetMapping("/")
	fun index(): List<Message> = listOf(
		Message("1", "Hello!"),
		Message("2", "Bonjour!"),
	Message("3", "Privet!"),
	)
}

@Table(“MESSAGES”)
data class Message(@Id val id: String?, val text: String)
data class Message(val id: String?, val text: String)