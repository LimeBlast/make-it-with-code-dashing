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
  
  send_event('recent_git_commit', { text: 'This is going to be a commit message' })
  
end