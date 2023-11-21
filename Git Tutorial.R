install.packages("gert")
install.packages("usethis")
install.packages("gitcreds")

#standard git configure
library(usethis)
use_git_config(
  user.name="JasperCain01",
  user.email='jaspercain@outlook.com'
)

#get summary of current git status
git_sitrep()

#vaccinate - decreases the chance that you will accidentally leak credentials and data which isn't needed, 
#like RHistory, if you have entered a password or NHS number etc in a command at some point. 
git_vaccinate()

#Personal Access Token
#Currently have git locally, and github separately, need the 2 to comminicate. can look at existing 
#tokens on github, but for first time setup, use:
create_github_token()
#token is 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 - this shouldn't be in the console, because it 
#can go up to the github though. Use notepad in future

#use gitcreds::gitcreds_set() in console. This will then ask for password, but doesn't record in rhistory.

#use usegit() to initialise a git repository - this will also ask to restart rStudio. This mased a 'repo' 
#(repository) on the local machine

use_github()

# you can change the name of the master branch to "main" - which is what github would call it if you started it on there
git_default_branch_rename(from ='master', to='main')

#set future default branches to main
git_default_branch_configure()
git_default_branch_rediscover()

#git allows you to delete things and explain why, rather than comment it out just because it might be useful one day

#Console is for R, starts with >
#Terminal is for git, starts with $

#rather than start wir on the main branch, we need a copy calles new work.
usethis::pr_init("new_work")
#next, create a quarto file, include a title and author, and render it (which will also require you to save it)


#individual new files can be staged with code or by ticking box in the RStudio Git pane
gert::git_add("Git Tutorial Report.qmd")
