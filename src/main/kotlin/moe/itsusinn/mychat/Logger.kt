package moe.itsusinn.mychat

import moe.itsusinn.mychat.security.atri.AtriAuthenticationToken
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.security.core.context.SecurityContextHolder

fun Any.logger(): Logger = LoggerFactory.getLogger(javaClass)

val Any.credential
    get() =
        SecurityContextHolder.getContext().authentication as AtriAuthenticationToken