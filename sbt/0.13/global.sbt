
shellPrompt := { state =>
  (scala.Console.YELLOW + "sbt" + scala.Console.RESET + ":" + scala.Console.MAGENTA + "%s"
    + scala.Console.CYAN + " %s" + scala.Console.GREEN + " λ " + scala.Console.RESET).format ({
    Project.extract(state).getOpt(sbt.Keys.name) getOrElse {
      ""
    }
  }, { Project.extract(state).currentProject.id }
  )
}
