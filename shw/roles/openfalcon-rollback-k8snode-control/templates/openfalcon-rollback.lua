local node = 0
local action = 0
local script = ""
local yml = 0
-- 1代表调用k8s-node.yml  0代表无调用

local args = ngx.req.get_uri_args()
for key, val in pairs(args) do
 
 if (key == "node") then
  node = val
 elseif (key == "action") then
  action = val
 elseif (key == "yml") then
  yml = val
 end

 --ngx.say(key, ": ", val)
 
end

local shell = require "resty.shell"

if (yml == "1") then
 script = "ansible-playbook /root/ansible/vvic/k8s-node.yml --extra-vars 'node=" .. node .. " " .. "action=" .. action .. "'"
else
 script = "ansible-playbook /root/ansible/vvic/donothing.yml --extra-vars 'node=" .. node .. " " .. "action=" .. action .. "'"
end

local args = {
  socket = "unix:/tmp/shell.sock",  --这是第一步的unxi socket
}

local status, out, err = shell.execute(script, args)   

ngx.header.content_type = "text/plain"
ngx.say("Result:\n" .. out)

