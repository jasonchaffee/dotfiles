
shellPrompt := { state => "sbt (%s)> ".format(Project.extract(state).currentProject.id) }
