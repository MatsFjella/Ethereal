local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1100371831963258891/maOj57Cy59UTAjbKMPpcUfpJvU3lKVF-ytC80HIhLTZWMTo80XzE7Mvy-GiOVpF_zRvw',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1100371905191628851/prxEd-w0kiM2htAins_yztNl_93Q_VsJzB8QaJlJ9jr53FYDL2uG6JaBl66SaAP4oXyh',
    ['playermoney'] = 'https://discord.com/api/webhooks/1100371970970898432/GxVP-qviS5go6iVyEQxYJ0MxEJFa70r2-e3aW9kSZttCPe_iWaNEAJiaHYzLPnSRwISf',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1100372001803206676/MYOIyL--SP9fU6HYtrp-TGczHF0qVbr71X_33oquX-Vh93H8PLe3pPH3nyRKy6SEWqlK',
    ['robbing'] = 'https://discord.com/api/webhooks/1100372039736496179/_6MixzyyzZiqi6LZCXLoykPCBKxycKJsfl2V1lEfQzcDoAGvJospHSy1yXp8llhrv8x5',
    ['cuffing'] = 'https://discord.com/api/webhooks/1100372075601989744/neEwY-Salu00dk6lxpAZv-6fZeLAprBUYR5MGwZ_YQ3Jlb7BSNL2WFlmjBbQwEpMMFX_',
    ['drop'] = 'https://discord.com/api/webhooks/1100372110708310147/JG3IbG53pi_oYzT9_oQttqv4xVpusmtdjEQHrEWEbL0LHMrgU2-ETRppyv9L1nrqOWA7',
    ['trunk'] = 'https://discord.com/api/webhooks/1100372153364385832/FFOjdP7jBwQJjQxc2uC2nGEHiZITTpeD4HYYmV5NNSLjuRWwrv73Rb7AQu0miyhQWPED',
    ['stash'] = 'https://discord.com/api/webhooks/1100372189720625182/ntX0WvGvfnZTNVkzJ3WY5RO-0DluQEbAPDgeLBU29ZqUTU-1_3dZjCLVH0WCg--Cu1sa',
    ['glovebox'] = 'https://discord.com/api/webhooks/1100372225644839023/e9OoIUasz51F0HSMamtTDTreiWcKaxEbZOr8FHV1Ywi4fVYMM6iXFWoGcY9qpsAYl4x9',
    ['banking'] = 'https://discord.com/api/webhooks/1100372260226879558/hzxmbEnOXrGUmn2ZoO9L9xQHC52ioUP88UCr6iovHoWWYIG3eWHB6CylAutH0GUj91Ao',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1100372289251463299/XhzjEWcviRF86FwQUX5LtuyJJxLGerDS9Vnc6zV3jMWaDKT9fuKhBvbgwxtI77-zb4vj',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1100372327960682547/jRmYoE31ECO_axtsC2pHS7ilw45Z4_P8pNqklthrn5UjmzajpndKujb_4kyP20SqTfSq',
    ['shops'] = 'https://discord.com/api/webhooks/1100372379743572039/ruD504KTg0Gnpz7v1hqqi-A1ty4aAhnZfmfVOklggUgKKXHNKnRSw4ppAZkaCbA6TcGj',
    ['dealers'] = 'https://discord.com/api/webhooks/1100372418532491296/osn9H-4vfIe1DGgUQ0RtsSJ1_03wCONSzKhnrGmVqcYcjDn3Ua8dRRD_49XK0fy8IjSP',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1100372452372123698/Z5z7IYAJ94DNkuBLupC--mvDbqkfWUkk4qpBcZYMVw-2vbgFGy1xGgnsoxFss3vIcECo',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1100372486954176512/r8TndlosDgIYvTJSth04TtkKHDx0UuqReKdtiJjOt2uyTBrzCXtm1b7FpjCsa89LdNhw',
    ['powerplants'] = 'https://discord.com/api/webhooks/1100372521313914891/gf7s8lCOdH-mSqGKRpT915cXkjeRSzOOAZYMKfPgkbxerCxZqBmbMQpG5j9SoiaF8Iq2',
    ['death'] = 'https://discord.com/api/webhooks/1100372559255584778/LshqjLR8gA2RxE0_QFXta5js9fpQqaW9RMd2mp1H-u93Bx27sWRbgWZf_AkeyHUjLvMP',
    ['joinleave'] = 'https://discord.com/api/webhooks/1100372595318194318/I83NoKgZaTTqWF9C5Te31Q7w9yGp8hIwcbB4eau9_me6Kc-wSKLyN9i0nHd3LKb7klec',
    ['ooc'] = 'https://discord.com/api/webhooks/1100372636388835369/xgaj6FwDSC55q2MfIohQOAdJYCjO1cDPwE-8cSQs6IWDnp7HrHpKLWZ9tT5SFHQpcDBi',
    ['report'] = 'https://discord.com/api/webhooks/1100372672585670686/WycNRC-v1wpX5oEOXcpV2ULcuWhE2u9dYIVEww9STHKmTCdJ5e7LIBS4_8Wyax54LxGq',
    ['me'] = 'https://discord.com/api/webhooks/1100372702101000233/USqsIc3XDQa4RVnhULyUDg1DeoY0Xuj_w2W_78VOwG7RIjUDo3Y7kjiQEyjlT2sWrCS4',
    ['pmelding'] = 'https://discord.com/api/webhooks/1100372736418791465/RUHIuYzi0ecDmp5y9ZGZIkMYLNwtyIeUfeQBYZnkZlA6H9-3CKbjz7QwUq2Y_S796EGv',
    ['112'] = 'https://discord.com/api/webhooks/1100372773987172372/DHcuWRiS5SkD0ivm8mxsv5WD0qzmIuyVW-yCobYnvd-LhnoORZngdRVrPnihz8UXPSGL',
    ['bans'] = 'https://discord.com/api/webhooks/1100372855235039262/onjt3uZPJPAigBojTsUjtNWsvzpWF-pUUb-BDpT-TmJyH685d48AUW_mE-vReqcb5rrS',
    ['anticheat'] = '',
    ['weather'] = 'https://discord.com/api/webhooks/1100372895424860281/va1iGhsURkSoBf4Uf1yxGERYaqldDNpDhF-gmqy2_r4yNAocqrt0OqWOXWJJ-TRlUAfv',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1100372932766728195/1GiUIZiBEM23JXetvnqEp8ROa_jcK-GbjPdF7L31cLe3zLtfKuxQL088kRSq0OS-gD35',
    ['bennys'] = 'https://discord.com/api/webhooks/1100372969345273868/1qUu_zysDDAG4dG4n02-Ji6anllw9EMHq6zyAVAd2Wvgs7-NwPI_-vWyuckoHiqyBRIY',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1100373008398434334/Rz2pkHFX22-ppCGL8fKkMlhvMvmsTxw-y9uvIvjmMQ2ksfEDkCVkgiMHpAVUqzCGirfh',
    ['robbery'] = 'https://discord.com/api/webhooks/1100373046075867146/AEyV5ov1aEGcNS_HMGmcTiWYv7NjRhTWEr497OMTTSmNDSUTW_OXUUCRbEL9aF9g0-vh',
    ['casino'] = 'https://discord.com/api/webhooks/1100373111771250688/Z8m4-9jEyO7ZkKVt7ik6CdamnWAhX--5RsZFpRUemKTMGrscL0Cdcbvt4kGF6h2oI9YD',
    ['traphouse'] = '',
    ['911'] = 'https://discord.com/api/webhooks/1100373166079103006/1gELMX6sNLWUr33xnzT2YN9CfZw5Hqd-oyZdi1EiEhis1tit35AGxAw2sicwY4BP5Rxx',
    ['palert'] = '',
    ['house'] = '',
    ['qbjobs'] = '',
    ['carboosting'] = 'https://discord.com/api/webhooks/1103348342878113902/otLFnFfyqS_hZqqcMtZHbDuV-DHI4GK9g1hf1l33ZBPNdOwjL30WKufrSqn9RCoCfwXC',
    ['banktrucks'] = 'https://discordapp.com/api/webhooks/1114940921113477242/0z1s7u4T8DVXNSDNxd7pKRiqGbI794bYjQo1LM8RnFoP-NSlLmwq3S3l4p9u5YBAwuhF',
    ['adminrevive'] = 'https://discordapp.com/api/webhooks/1133777227851497582/UXaGzEhmUj6w5EF-EsDMO0P_Zau2so40029hGjjzSFjx-0DW5T1xBOcb2PuocE1R0h9x',
    ['adminnoclip'] = 'https://discordapp.com/api/webhooks/1133777695042457730/qePPUCsFYTiG9fJRqyVX7HIqN5uvFMr7cm0t5iLjluqe3TxnZkHQDjQffLQLpQeTbPK7',
    ['adminblips'] = 'https://discordapp.com/api/webhooks/1133778063096819792/D09wdUfvtoU492AzFurT6aUUO9FnOAdNMy1s37_g-wPVMCpbJ4SeJ8xl0hmLCcoAQoUU',
    ['adminname'] = 'https://discordapp.com/api/webhooks/1133778620960215162/QgcEe-ZUPemphE_0ZXnai_KQ1G0QWj2FSK_Ic2S_eLYlLQTHD51Cw8EiQotDL8lVaF9n',
    ['admingodmode'] = 'https://discordapp.com/api/webhooks/1133779322994442333/H_4jwDxHkIpOzhZVneo7aNqhpRS8fDdZrd8sR4QvYLbWRmKSIE0ngEhmwVMvYAEcFhvC',
    ['adminweapons'] = 'https://discordapp.com/api/webhooks/1133779650775105609/GKY-s6q-0qetTeMPM8pmHtlvhkcUZkPmYVXwRMzdocn10C2tQhsuE_59LBgWS72MB39M',
    ['adminmods'] = 'https://discordapp.com/api/webhooks/1133781134430458008/d6KxJAl2aJnw-6jnjjTtT-srOGbEcbejQ0UQvnWLRIX9Yguw2eucv-1bfKI6iTj1t7yo',
    ['adminkill'] = 'https://discordapp.com/api/webhooks/1133782450363969536/nNm4GolrsIrPkjXo7w1RWx9ogmBuIm1RsXVocz1bjZsYDYqWjzVOqgJEkcfO9fvZ90JL',
    ['adminrevive'] = 'https://discordapp.com/api/webhooks/1133782450363969536/nNm4GolrsIrPkjXo7w1RWx9ogmBuIm1RsXVocz1bjZsYDYqWjzVOqgJEkcfO9fvZ90JL',
    ['adminreviveplayer'] = 'https://discordapp.com/api/webhooks/1133782844708229170/lfJ6wQd_TyOAhUXluzer0K3jiKQUdFJHMNmOuJppVYWAfz4XOsnbwkWIPCbBlK_YY_Yi',
    ['juvelen'] = 'https://discordapp.com/api/webhooks/1133783317402091551/UsCOCAJMXPo8kNzfHZfys3t4JIDABgydsX398FTF5ulY9kgZpUWwk7xsfr7J16ufiF2y',
    ['bank'] = 'https://discordapp.com/api/webhooks/1133786385153798224/FmUyzng923O5JJ35RlFUhV1KQV3GZfmb4yuAhEj4tA-7793mekj706Rdeyn4VlsE-0_M',
    ['storbank'] = 'https://discordapp.com/api/webhooks/1133786474081439834/eqG5pgvYyz-TyxqvDZFwX8dfKini2v3oKG8GSbRhF41f6ipWhRr_rMG1wDHm3DC8E266',
    ['transport'] = 'https://discordapp.com/api/webhooks/1133786511918252092/Vh-SsOmOuTkvpFKS6jwzpbmqWoUhz11QeSizJI_MlGjs-76zmcD12KNT5Yze84_pgam4',
    ['vrran'] = 'https://discordapp.com/api/webhooks/1133786561809481859/dlPJnFeyhDWxuX8gtTg2S2rPkyi8HI7Gf6JoRAdj-pd8kOMgUbONsxLyfzdn3jpU61mC',
    ['humanelabs'] = 'https://discordapp.com/api/webhooks/1133786646786093126/oZtYtVMS1TXf2xxOR1cfZTbHC1NISTUFaK7z8zNLkb8YhxckLrHA0aBIsO9akg28ti8z',
    ['casino'] = 'https://discordapp.com/api/webhooks/1133786687244349440/cs2_K2ityd2w8bzG9bDib_79f3rBi3BjzKRATYqXCjRc9aNIXxcPfG51Ph-hNgBS_Q6v',
    ['husran'] = 'https://discordapp.com/api/webhooks/1133786346641690636/S1lRtwa8GSE9utjqeqY9E8qrPeMzvfYM1FiqgYywUo60uU9mJ4OAZTensDodmud-v2YV',
    ['butikkran'] = 'https://discord.com/api/webhooks/1140223033399840818/-ss0mMEcEy0PAbMWftVQ-a52Ev-EJafZVHCGQXM6jOygNEyX7zs_LueksYyV_m4JpqzJ',
    ['weedplukk'] = 'https://discord.com/api/webhooks/1172130021683499039/zuqsp1gsnknkaUYJy14ZKwvq_jLj-nXzCDe2nyqW-rQiXNuby_Ks_Yuz_btyp-wBiyZ0',
    ['weedprossesering'] = 'https://discord.com/api/webhooks/1172130091212484709/97gF-adGcxiD8rmZ1-Zr1jBmCZteDl2stJbf-KSXJmZkBVgKpBZ58t6AwthlqsmH4Vvh',
    ['weedbag'] = 'https://discord.com/api/webhooks/1172133569141952563/Bmh60Y_qvtMTg1xQ9P8jS4zQVkDl_4xtOygyX5dpN-9ZCUbC-PBb9OjR902BLc-7KUCx',
    ['methplukk'] = 'https://discord.com/api/webhooks/1172130199245160499/12CYDL7F2yl7M2tiZkhLIPhY808Hi9o9nPnE21UCQecndmXc_g46eLv5lc3SU5U-T-75',
    ['methprossesering'] = 'https://discord.com/api/webhooks/1172130256187043891/mCrTO7Yb7Z-ec8ysLNqame_jCko503FtgQ4yKLwRzwOzAur9hiUHNAwjyMhc6DUKHexS',
    ['cokeplukk'] = 'https://discord.com/api/webhooks/1172130496508080138/ne-JtXOPhEI0ln97xQ87KYykCQd-xZP-1eZ3Xz5q85Rqb7p-bJoHiOIxNNUvg5rc7WIA',
    ['cokeprossesering'] = 'https://discord.com/api/webhooks/1172130546655170572/8SGr20bghLgfh9hgiJY1Qw23IpXjwF7IzurnLxmllVR0fXC_mFJl2KTfFQGNWZgoM5lC',
    ['ps-adminmenu'] = 'https://discord.com/api/webhooks/1204815777115406426/UPkm8Q9-dPL7AI4wupnYRFnl7MH6svf_0pzV_HbkdHTGqgS0oEAqf9XOOaAxAiIjQWcI',
    ['vehicle'] = 'https://discord.com/api/webhooks/1103348342878113902/otLFnFfyqS_hZqqcMtZHbDuV-DHI4GK9g1hf1l33ZBPNdOwjL30WKufrSqn9RCoCfwXC',
    ['dopsalg'] = 'https://discord.com/api/webhooks/1225092902296752178/Fv15yeYJFISolHgBwobb_j61HQAQrdAwGi4G2J5-N7zB6_r_W9a_5bNcEosZS9xcokxq',

}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
