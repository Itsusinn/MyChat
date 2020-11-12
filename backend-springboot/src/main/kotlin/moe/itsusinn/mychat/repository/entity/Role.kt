package moe.itsusinn.mychat.repository.entity

import org.ktorm.database.Database
import org.ktorm.entity.Entity
import org.ktorm.entity.sequenceOf
import org.ktorm.schema.Table
import org.ktorm.schema.long
import org.ktorm.schema.varchar

interface Role : Entity<Role> {
    companion object : Entity.Factory<User>()

    var roleID: Long
    var name: String
}

object Roles : Table<Role>("user") {
    val roleID = long("uid").primaryKey().bindTo { it.roleID }
    val name = varchar("password").bindTo { it.name }
}

val Database.roles get() = this.sequenceOf(Roles)