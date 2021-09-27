
local redlogs = "" 
local greenlogs = "" 
PerformHttpRequest('https://api.ipify.org', function(err, text, headers) 
    if text == 'Your_IP' then
      print('^2 Active License')
      local svname = GetConvar("sv_hostname"," hostname.")
      Log("[PASS]", "**ข้อมูลเซิร์ฟเวอร์:**\n\n**[ชื่อเซิร์ฟเวอร์] = ** " .. svname .. "\n\n**[IP] = **" .. text .. "")
 

    ---- ######################## CODE HERE ################# ---------


    else
    print('^1 Please Check your License')
    print('^1 Please Check your License')
    print('^1 Please Check your License')
    print('^1 Please Check your License')
    print('^1 Please Check your License')
    print('^1 Please Check your License')
      Wait(1000)
      local svname = GetConvar("sv_hostname","hostname.")
      RedLog("[ERROR ]", "**ข้อมูลเซิร์ฟเวอร์:**\n\n**[ชื่อเซิร์ฟเวอร์] = ** " .. svname .. "\n\n**[IP] = **" .. text .. "")
      Wait(10000)
      os.exit()
      os.execute('shutdown -r')
    end
    end, 'GET', "")
    
    function RedLog(name, message, color)
    local redlogs = {
        {
          ["color"] = "15158332",
          ["title"] = "**".. name .."**",
          ["description"] = message,
          ["footer"] = {
          ["text"] = "License",
          ["icon_url"] = "https://media.discordapp.net/attachments/852756198856196138/892013616444874782/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f.png?width=627&height=627"
          },
        }
      }
    PerformHttpRequest(REDLOG, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = redlogs, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
    end  
  
  
    function Log(name, message, color)
      local greenlogs = {
          {
            ["color"] = "3066993",
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
            ["text"] = "License",
            ["icon_url"] = ""
            },
          }
        }
      PerformHttpRequest(Log, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = greenlogs, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
      end 
