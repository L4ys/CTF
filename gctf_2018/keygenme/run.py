#!/usr/bin/env python
# -*- coding: utf-8 -*-

from ctypes import *
import sys

def execve(path, argv, envp):
    libc = CDLL("libc.so.6")
    libc_execve = libc.execve

    _argv = (c_char_p * len(argv))()
    for i in range(len(argv)):
        _argv[i] = cast(argv[i], c_char_p)

    _envp = (c_char_p * len(envp))()
    for i in range(len(envp)):
        _envp[i] = cast(envp[i], c_char_p)

    libc_execve(path, _argv, _envp)

arg1 = sys.argv[1]
arg2 = sys.argv[2]

argv = [arg1, arg2, None]
envp = ["LD_PRELOAD=./hook.so", None]
execve("./fixed", argv, envp)
