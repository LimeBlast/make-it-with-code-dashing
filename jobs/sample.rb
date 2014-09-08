require 'github_api'

SCHEDULER.every '2s' do
  titles = [
  	'What an awesome title, just superb',
  	'This is also a pretty good title, by all accounts',
  	'And this one, lets not forget this one'
  ]
  
  texts = [
  	'This is the first element of the array',
  	'This is the second element of the array',
  	'This is the third element of the array',
  ]
  
  send_event('welcome', { title: titles.sample, text: texts.sample })
end

SCHEDULER.every '120s', :first_in => 0 do
	
	github = Github.new
	commit_message = github.repos.commits.all('limeblast', 'make-it-with-code-dashing').first.commit.message
	
	send_event('recent_git_commit', { text: commit_message })
end