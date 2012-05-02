# (t)csh initialization

alias ii	'cd -; cd -'
alias pkg_replace 'pkg_add -D installed \!*'
alias gp	git pull
alias n		'nedit'
alias mcr	make check-register
alias mcf	make clean fake
alias mr	make regress
alias fmtDESCR	'fmt -w 72 pkg/DESCR >f; mv f pkg/DESCR'
alias pb	'pb -p -b pb'
alias bp	'cp \!:1{,.orig}'
#alias index     'grep \!*  /usr/ports/INDEX | perl -pi -e 's,\|.*,,g''
alias c		'cvs -q up -Pd \!*'
alias sm	make show=MAINTAINER
alias pdiff	diff -u pkg/PLIST.orig pkg/PLIST
alias mm	make makesum
alias mce	make clean extract
alias mcc	make clean configure
alias mcp	make clean patch
alias mca	make clean=all
alias mup	make update-patches
alias pld	make port-lib-depends-check
alias bt	transmission-cli
alias l		ls
alias term	'xterm &'
alias e		'emacs \!* &'
alias m		'emacs -nw'
alias i	        'source ~/.cshrc'

set path = ( ~/bin /bin /sbin /usr/{bin,sbin,X11R6/bin,local/bin,local/sbin,games} /usr/local/jdk-1.7.0/bin/ .)

set filec
set complete enhance
set history = 2000
set histfile = "$HOME/.history"
set savehist = (2000 merge) # keep history
set autolist
set autoexpand
set histdup = erase
unset ignoreeof
set notify
set noclobber
set mail = (/var/mail/$USER)
set mch = `hostname -s`
set nobeep
set editor = "mg"
set EDITOR = "mg"
set PDIR = "/usr/ports"
set PL = $PDIR/infrastructure/bin/portslogger
set ARCH = `arch -s`
set SVN_EDITOR = "mg"
alias dav 'cadaver https://webdav.phil.uu.nl/~lievisse/'
alias prompt 'set prompt = "$mch:q"":$cwd:t {\!} "'
alias cd 'cd \!*; prompt'
alias chdir 'cd \!*; prompt'
alias popd 'popd \!*; prompt'
alias pushd 'pushd \!*; prompt'
alias clean_cvs 'find . -type d -name CVS | xargs rm -fr'
cd .
umask 22

set hostnames = `cat /etc/hosts | grep -v \# | awk '{print $3}'`
set usernames = (jasper root ftp "")

# some help with commandline completion
complete cd	'p/1/d/'
complete rm	'p/*/f:^*.{c,h,cc,C,S,s,cpp,pl,java}/' # try to protect source files
complete ssh	'n/-l/$usernames/' 'p/*/$hostnames/' 'c/*@/$hostnames/'
complete {ping,nslookup,remotesyncing,traceroute,telnet,ftp,ncftp}	'p/*/$hostnames/'
complete scp    'n/-l/$usernames/' 'c/*@/$hostnames/:'
complete sftp 	'n/-l/$usernames/' 'p/*/$hostnames/' 'c/*@/$hostnames/'
