package moe.itsusinn.mychat

import io.vertx.core.AbstractVerticle
import io.vertx.core.DeploymentOptions
import io.vertx.core.Promise

class MainVerticle : AbstractVerticle() {
   override fun start(startPromise: Promise<Void>) {
      vertx
         .deployVerticle(MychatVerticle::class.java.name, DeploymentOptions().setInstances(3))
      log("Server has started!")
   }
}
