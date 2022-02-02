# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

# Copyright (c) 2019-2020 Sebastian Gniazdowski
# License MIT

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload -Uz →za-readurl-preinit-handler

# An empty stub to fill the help handler fields
→za-readurl-help-null-handler() { :; }

@zi-register-annex "z-a-readurl" \
    hook:preinit-10 \
    →za-readurl-preinit-handler \
    →za-readurl-help-null-handler \
    "dlink''|.readurl''" # The ice conflict with dl'' from z-a-patch-dl is being handled
                       # in the other annex

# vim:ft=zsh:tw=80:sw=4:sts=4:et
