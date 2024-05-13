Upload = {}

Upload.Method = 'discord' -- This is the method used to upload the image (discord, imgur, custom)
Upload.Link = 'https://discord.com/api/webhooks/1234865118714658897/U2QqRSMpVwLxUg3zYOc0Ilhdl3TNaqiKMSlymDTMVzw1kqrL_EhPSUJxOdTWxMxbiutc' -- This is the link used to upload the image (imgur or custom)
Upload.Field = 'files[]' -- image (imgur.com), file (custom), files[] (discord)
Upload.Options = { -- This are the options used to upload the image (imgur or custom)
    headers = {
        authorization = 'Client-ID client_id'
    }
}

-- DO NOT EDIT THIS UNLESS YOU KNOW WHAT YOU ARE DOING
if not IsDuplicityVersion() then
    function GetImageURL(callback)
        local function cb(data)
            local response = json.decode(data)

            if Upload.Method == 'discord' then
                Upload.Options = false

                if not response then
                    print('[Screenshot] [Discord] Error: Webhook required')
                    return
                end

                callback(response.attachments[1].proxy_url)
            end

            if Upload.Method == 'imgur' then
                if response.success then
                    callback(response.data.link)
                else
                    print('[Screenshot] [Imgur] Error: ' .. response.data.error)
                end
            end

            if Upload.Method == 'custom' then
                if response.success then
                    callback(response.url)
                else
                    print('[Screenshot] [Custom] Error: ' .. response.data.error)
                end
            end
        end

        if Upload.Options then
            exports['screenshot-basic']:requestScreenshotUpload(Upload.Link, Upload.Field, Upload.Options, cb)
        else
            exports['screenshot-basic']:requestScreenshotUpload(Upload.Link, Upload.Field, cb)
        end 
    end   
end
