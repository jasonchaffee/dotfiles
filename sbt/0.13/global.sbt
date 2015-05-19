
shellPrompt := { state => "sbt (%s) λ ".format(Project.extract(state).currentProject.id) }
