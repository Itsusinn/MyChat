@file:Suppress("EXPERIMENTAL_API_USAGE")
package moe.itsusinn.mychat

import com.typesafe.config.ConfigFactory
import io.ktor.application.*
import io.ktor.config.*
import io.ktor.http.*
import io.ktor.response.*
import io.ktor.util.pipeline.*

val appConfig = HoconApplicationConfig(ConfigFactory.load())

suspend inline fun PipelineContext<Unit,ApplicationCall>
        .err(message: Any): Nothing{
    err(HttpStatusCode.BadRequest,message)
}
suspend inline fun PipelineContext<Unit,ApplicationCall>
        .err(httpStatusCode: HttpStatusCode, message: Any): Nothing{
    call.respond(httpStatusCode,message.toString())
    throw IllegalStateException(message.toString())
}


