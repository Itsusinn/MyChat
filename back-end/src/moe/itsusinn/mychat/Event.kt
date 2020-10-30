package moe.itsusinn.mychat

data class CommentAddEvent(val subject:Int,
                           val nick:String,
                           val email:String,
                           val content:String) {

}
data class UserRegisterEvent(val account:String,
                             val nick:String,
                             val password:String)