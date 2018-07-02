[alias] ; Common commands
	br = branch
	ci = commit
	cl = clone
	co = checkout
	cp = cherry-pick
	df = diff
	lg = log
	pl = pull
	ps = push
	rb = rebase
	rs = reset
	sh = show
	st = status

[alias] ; Common options
	cia = commit --amend
	cim = commit --message
	dfc = diff --cached
	lgf = log --follow
	lgs = log --pretty=simple --decorate-refs=heads
	rbi = rebase --interactive
	rss = reset --soft
	rsh = reset --hard

[alias] ; Miscellaneous
	discard = checkout --
	undo = reset --soft HEAD^
	unstage = reset HEAD
