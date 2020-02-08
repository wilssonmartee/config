--[[

    Matrix awesome theme
    Customized by #!/bin/bash
    

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local vicious = require("vicious")


local volumearc_widget = require("../awesome-wm-widgets/volumearc-widget/volumearc")
local batteryarc_widget = require("../awesome-wm-widgets/batteryarc-widget/batteryarc")
local cpu_widget = require("../awesome-wm-widgets/cpu-widget/cpu-widget")
local brightnessarc_widget = require("../awesome-wm-widgets/brightnessarc-widget/brightnessarc")
local notifications = require("../awesome-wm-widgets/notifications-widget/notification")

 os = os
 my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/matrix-bak"




theme.wallpaper                                 = "~/.config/awesome/wallpapers/coding.jpg"
theme.font                                      = "DejaVu Sans 9"


theme.widget_main_color = "#5beedc"
theme.widget_red = "#e53935"
theme.widget_yellow = "#c0ca33"
theme.widget_green = "#43a047"
theme.widget_black = "#000000"
theme.widget_transparent = "#00000000"


theme.fg_normal                                 = "#5beedc"
theme.fg_focus                                  = "#1fddbd"
-- theme.fg_focus                                  = "#0099cc"
theme.color_tag                                 = "#474747"
theme.fg_urgent                                 = "#728183"
theme.bg_normal                                 = "#0d0d0d"
theme.bg_focus                                  = "#0d0d0d"
theme.bg_urgent                                 = "#1A1A1A"
theme.border_width                              = 1
theme.border_normal                             = "#313131" -- "#3F3F3F"
theme.border_focus                              = "#5beedc"
theme.border_marked                             = "#728183"
theme.tasklist_bg_focus                         = "#292929"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = 16
theme.menu_width                                = 140
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
--[[
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
]]--
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.layout_centerwork                         = theme.dir .. "/icons/centerwork.png"
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.widget_clock                            = theme.dir .. "/icons/clock.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = false
theme.useless_gap                               = 2
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"




-- notification
theme.notification_bg				=  theme.bg_normal
theme.notification_fg				=  theme.fg_normal
theme.notification_border_width		=  5
theme.notification_border_color		=  theme.border_focus
theme.notification_icon_size 		=  120
theme.notification_max_width        =  600
theme.notification_max_height       =  500
theme.notification_margin			=  80
theme.notification_padding 			=  100



local markup = lain.util.markup
local separators = lain.util.separators

-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.watch(
    "date +'%R'", 60,
    function(widget, stdout)
        widget:set_markup("" .. markup.font(theme.font, stdout))
    end
)


--hddtemp
hddtempwidget = wibox.widget.textbox()
vicious.register(hddtempwidget, vicious.widgets.hddtemp, "<span font_family='DejaVu Sans' font_desc='9'>/ ${/dev/sda} °C</span>", 19)


-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
      font = "Monospace 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal,
	border_width = 1,
	border_color = theme.fg_normal,
    position = "top_right",
    }
})

-- Keyboard map indicator and changer
--
  
local kbdcfg_icon = wibox.widget {
	markup = '<span color="#c1c0c0">‌‌</span>',
        widget = wibox.widget.textbox,
}


kbdcfg = {}
kbdcfg.cmd = "setxkbmap"
kbdcfg.layout = { { "us", "" , "us " }, { "es", "" , "es" } }
kbdcfg.current = 1  -- us is our default layout
kbdcfg.widget = wibox.widget.textbox()
kbdcfg.widget:set_text(" " .. kbdcfg.layout[kbdcfg.current][3] .. " ")
kbdcfg.switch = function ()
  kbdcfg.current = kbdcfg.current % #(kbdcfg.layout) + 1
  local t = kbdcfg.layout[kbdcfg.current]
  kbdcfg.widget:set_text(" " .. t[3] .. " ")
  os.execute( kbdcfg.cmd .. " " .. t[1] .. " " .. t[2] )
end

 -- Mouse bindings
kbdcfg.widget:buttons(
 awful.util.table.join(awful.button({ }, 1, function () kbdcfg.switch() end))
)




-- Mail IMAP check
local mailicon = wibox.widget.imagebox(theme.widget_mail)
--[[ commented because it needs to be set before use
mailicon:buttons(my_table.join(awful.button({ }, 1, function () awful.spawn(mail) end)))
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            widget:set_text(" " .. mailcount .. " ")
            mailicon:set_image(theme.widget_mail_on)
        else
            widget:set_text("")
            mailicon:set_image(theme.widget_mail)
        end
    end
})
--]]

-- MPD

local musicplr = awful.util.terminal .. " -title Music -g 130x34-320+16 -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ modkey }, 1, function () awful.spawn.with_shell(musicplr) end),
    awful.button({ }, 1, function ()
        os.execute("mpc prev")
        theme.mpd.update()
    end),
    awful.button({ }, 2, function ()
        os.execute("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ }, 3, function ()
        os.execute("mpc next")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
        elseif mpd_now.state == "pause" then
            artist = " mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            mpdicon:set_image(theme.widget_music)
        end

        widget:set_markup(markup.font(theme.font, markup("#EA6F81", artist) .. title))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, "" .. mem_now.used .. "MB "))
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, "" .. cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, "" .. coretemp_now .. "°C "))
    end
})

-- / fs
local fsicon = wibox.widget.imagebox(theme.widget_hdd)
--[[ commented because it needs Gio/Glib >= 2.54
theme.fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "xos4 Terminus 10" },
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. fs_now["/"].percentage .. "% "))
    end
})
]]--


-- Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)
local batbar = wibox.widget {
    forced_height    = 1,
    forced_width     = 59,
    color            = theme.fg_normal,
    background_color = theme.bg_normal,
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = 6,
    widget           = wibox.widget.progressbar,
}
local batupd = lain.widget.bat({
    settings = function()
        if (not bat_now.status) or bat_now.status == "N/A" or type(bat_now.perc) ~= "number" then return end

        if bat_now.status == "Charging" then
            baticon:set_image(theme.widget_ac)
            if bat_now.perc >= 90 then
                batbar:set_color("#a5d1d0")
            elseif bat_now.perc > 50 then
                batbar:set_color(theme.fg_normal)
            elseif bat_now.perc > 20 then
                 batbar:set_color("#a5d1d0")
            else
               batbar:set_color("#a5d1d0")
            end
        else
            if bat_now.perc >= 90 then
                batbar:set_color("#a5d1d0")
                baticon:set_image(theme.widget_battery)
	    elseif bat_now.perc > 50 then
                batbar:set_color(theme.fg_normal)
                baticon:set_image(theme.widget_battery)
            elseif bat_now.perc > 20 then
                batbar:set_color("#a5d1d0")
                baticon:set_image(theme.widget_battery_low)
            else
               batbar:set_color("#a5d1d0")
               baticon:set_image(theme.widget_battery_empty)
            end
        end
        batbar:set_value(bat_now.perc / 100)
    end
})
local batbg = wibox.container.background(batbar, "#474747", gears.shape.rectangle)
local batwidget = wibox.container.margin(batbg, 2, 7, 4, 4)

-- ALSA volume bar
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.pulsebar {
    width = 59, border_width = 0,


   
    --togglechannel = "IEC958,3",
    settings = function()
      
    end,
    colors = {
        background   = theme.bg_normal,
        mute         = theme.color_tag,
        unmute       = theme.fg_normal
    }
}
local volumebg = wibox.container.background(theme.volume.bar, "#474747", gears.shape.rectangle)
local volumewidget = wibox.container.margin(volumebg, 2, 7, 4, 4)

-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font(theme.font,
                          markup(theme.fg_normal, "" .. net_now.sent)
                          .. "  " ..
                          markup(theme.fg_focus, "" .. net_now.received .. " ")))
    end
})

-- Separators
local spr     = wibox.widget.textbox('   ')
local arrl_dl = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld = separators.arrow_left("alpha", theme.bg_focus)

function theme.at_screen_connect(s)
    -- Quake application
   s.quake = lain.util.quake({ app = awful.util.terminal, width = 1364 })

    -- If wallpaper is a function, call it with the screen

 
 local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget

s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.noempty, awful.util.taglist_buttons, {font = "Font Awesome 5 Solid 9", bg_focus = theme.border_focus, fg_focus = theme.bg_normal})


    -- Create a tasklist widget
   --[[
s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons, { bg_focus = theme.bg_normal, fg_normal = theme.color_tag, fg_focus = theme.fg_focus, shape = gears.shape.rectangle, shape_border_width = 2, shape_border_color = theme.bg_normal, align = "center" })

]]--
-- Tasklist custom
s.mytasklist = awful.widget.tasklist {
    screen   = s,
    filter   = awful.widget.tasklist.filter.currenttags,
    buttons  = awful.util.tasklist_buttons,
    style    = {
        shape_border_width = 1,
        bg_focus = theme.bg_normal,
        shape_border_color = '#777777',
        shape_border_color_focus = theme.border_focus,
        shape  = gears.shape.rounded_bar,
    },
    layout   = {
        spacing = 10,
        spacing_widget = {
            {
                forced_width = 5,
                shape        = gears.shape.circle,
                widget       = wibox.widget.separator
            },
            valign = 'center',
            halign = 'center',
            widget = wibox.container.place,
        },
        layout  = wibox.layout.flex.horizontal
    },
    -- Notice that there is *NO* wibox.wibox prefix, it is a template,
    -- not a widget instance.
    widget_template = {
        {
            {
                {
                    {
                        id     = 'icon_role',
                        widget = wibox.widget.imagebox,
                    },
                    margins = 2,
                    widget  = wibox.container.margin,
                },
                {
                    id     = 'text_role',
                    widget = wibox.widget.textbox,
                },
                layout = wibox.layout.fixed.horizontal,
            },
            left  = 10,
            right = 10,
            widget = wibox.container.margin
        },
        id     = 'background_role',
        widget = wibox.container.background,
    },
}
-- Tasklist custom end


    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 18, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            -- batwidget,
	    batteryarc_widget,
            spr,
            volumearc_widget,
            spr,
            brightnessarc_widget,
            -- volicon,
            -- volumewidget,
            arrl_dl,
	    wibox.widget.systray(),
	    arrl_dl,	
            memicon,
            mem.widget,
            arrl_dl,
            cpuicon,
            cpu.widget,
            cpu_widget,
            arrl_dl,
            tempicon,
            temp.widget,
	    hddtempwidget,
            -- baticon,
            -- batwidget,
            arrl_dl,
            neticon,
            net.widget,
           -- arrl_dl,
           -- clockicon,
            arrl_dl,
	    kbdcfg_icon,
            kbdcfg.widget,
	         
                
        },

  s.mytasklist, -- Middle widget

{ -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            spr,
	    s.mypromptbox,
	    s.mytaglist,
            --spr,
	    s.mylayoutbox,
            clock,
        },
      

    }
end



return theme
