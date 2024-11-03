# Purpose

This is a toy project to document how to write a bash completion script.

I was following along with this nice tutorial on writing bash completion for scripts here:

 - https://iridakos.com/programming/2018/03/01/bash-programmable-completion-tutorial

However to my dismay, I discovered the basis for the illustrative `dothis` script was the `fc`
command. I was not super familar with the linux `fc` command (find command command). I scratched
my head as to why Lazarus's script wouldn't work on my Fedora 40 laptop. It turns out the
`fc` command doesn't allow access to bash's history by default in my version of Fedora.
This is a well known restriction of the command on many Linux distros. The tutorial is a simple tutorial
for writing bash completion scripts, so I shouldn't let the fact that the documented
script doesn't work on my system stand in the way of the learning experience? Well I did!

As an alternative, I crafted the script `describeproc` to the original `dothis` script. 
It is based around the ps command which has more predictable behaviour from within
bash scripts. Hopefully this alternative reference script will facilitate the learning
of the bash completion script just a little bit better.

Lazarus if you are reading this, please feel free to steal my script. Your original blog
post is super informative and helped me have a better understanding of the topic.

![terminalizer recording](recording/demo.gif)

# References

## The original blog post and it's github page:

 - https://iridakos.com/programming/2018/03/01/bash-programmable-completion-tutorial
 - https://github.com/iridakos/bash-completion-tutorial

## Official GNU Bash resource page on the topic:

 - https://www.gnu.org/software/bash/manual/html_node/A-Programmable-Completion-Example.html
 - https://github.com/scop/bash-completion/

