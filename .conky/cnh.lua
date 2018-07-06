-- this is a lua script for use in conky (Calvin and Hobbes themed)
require 'cairo'
 
function perc (speed)
		local x = 0
			if string.sub(speed,string.len(speed)-2,string.len(speed)-2) == 'K' then
				x = tonumber(string.sub(speed,1,string.len(speed)-3))*1024
			elseif string.sub(speed,string.len(speed)-2,string.len(speed)-2) == 'M' then
				x = tonumber(string.sub(speed,1,string.len(speed)-3))*1024*1024
			end
		return x 
end

function conky_main()
    if conky_window == nil then
        return
    end
    local cs = cairo_xlib_surface_create(conky_window.display,
                                         conky_window.drawable,
                                         conky_window.visual,
                                         conky_window.width,
                                         conky_window.height)
    cr = cairo_create(cs)
    local updates=tonumber(conky_parse('${updates}'))
    if updates>5 then

-- cairo drawing code starts
        -- display settings 
		r,g,b=0.75,0.75,0.75 -- white
		opaque=1 -- alpha opaque
		transparent=0.25 -- alpha transparent
		thin=10
		thick=20
		h_pos=1250
		v_pos1=135
		v_pos2=420
		v_pos3=705
		v_pos=885
		rad=115

        -- dial 1
		pcpu=conky_parse("${cpu}")
		pcpu1=conky_parse("${cpu cpu1}")
		pcpu2=conky_parse("${cpu cpu2}")
		pcpu3=conky_parse("${cpu cpu3}")
		pcpu4=conky_parse("${cpu cpu4}")
		fcpu1=conky_parse("${freq 1}")
		fcpu2=conky_parse("${freq 2}")
		fcpu3=conky_parse("${freq 3}")
		fcpu4=conky_parse("${freq 4}")

		-- dial 2
		mem=conky_parse("${mem}")
		memmax=conky_parse("${memmax}")
		pmem=conky_parse("${memperc}")
        dsk=conky_parse("${fs_used /}")
        dskmax=conky_parse("${fs_size /}")
		pdsk=conky_parse("${fs_used_perc /}")
		sw=conky_parse("${diskio_write /dev/sda}")
		sr=conky_parse("${diskio_read /dev/sda}")

		-- dial 3
		device="wlp4s0"
		tdown=conky_parse("${totaldown "..device.."}")
		tup=conky_parse("${totalup "..device.."}")
		sdown=conky_parse("${downspeed "..device.."}")
		sup=conky_parse("${upspeed "..device.."}")
		wip=conky_parse("${addr "..device.."}")
		ip=conky_parse("${addr}")
		bat0t=conky_parse("${battery_time BAT0}")
		bat1t=conky_parse("${battery_time BAT1}")
		bat0p=conky_parse("${battery_percent BAT0}")
		bat1p=conky_parse("${battery_percent BAT1}")
                task="Bored? Suggestion: "..conky_parse("${execi 900 shuf -n 1 Sync/.dolist}")

		-- metre setup
		cairo_set_line_cap  (cr, CAIRO_LINE_CAP_ROUND);

		-- draw meter 1
		cairo_set_source_rgba (cr,r,g,b,transparent)
		cairo_set_line_width(cr,thick)

		cairo_arc (cr,h_pos,v_pos1,rad,0,2*math.pi)
		cairo_stroke (cr)

		cairo_set_line_width(cr,thin)
		
		cairo_arc (cr,h_pos,v_pos1,rad-25,0,2*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos1,rad-40,0,2*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos1,rad-55,0,2*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos1,rad-70,0,2*math.pi)
		cairo_stroke (cr)

		-- fill meter 1
		cairo_set_source_rgba (cr,r,g,b,opaque)
		cairo_set_line_width(cr,thick)

		cairo_arc (cr,h_pos,v_pos1,rad,-0.5*math.pi,2*(pcpu-25)/100*math.pi)
		cairo_stroke (cr)

		cairo_set_line_width(cr,thin)
		
		cairo_arc (cr,h_pos,v_pos1,rad-25,-0.5*math.pi,2*(pcpu1-25)/100*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos1,rad-40,-0.5*math.pi,2*(pcpu2-25)/100*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos1,rad-55,-0.5*math.pi,2*(pcpu3-25)/100*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos1,rad-70,-0.5*math.pi,2*(pcpu4-25)/100*math.pi)
		cairo_stroke (cr)

		-- draw meter 2
		cairo_set_source_rgba (cr,r,g,b,transparent)
		cairo_set_line_width(cr,thick)

		cairo_arc (cr,h_pos,v_pos2,rad,-0.4*math.pi,0.4*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos2,rad,0.6*math.pi,-0.6*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos2,rad-25,0,2*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos2,rad-50,0,2*math.pi)
		cairo_stroke (cr)

		-- fill meter 2
		cairo_set_source_rgba (cr,r,g,b,opaque)
		cairo_set_line_width(cr,thick)
		
		max=150*1024*1024 -- 50 Mib
		pr=perc(sr)/max
		pw=perc(sw)/max

		cairo_arc (cr,h_pos,v_pos2,rad,-0.4*math.pi,-0.4*math.pi+(0.4*math.pi+0.4*math.pi)*pw)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos2,rad,0.6*math.pi,0.6*math.pi+(1.4*math.pi-0.6*math.pi)*pr)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos2,rad-25,-0.5*math.pi,2*(pmem-25)/100*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos2,rad-50,-0.5*math.pi,2*(pdsk-25)/100*math.pi)
		cairo_stroke (cr)

		-- draw meter 3
		cairo_set_source_rgba (cr,r,g,b,transparent)
		cairo_set_line_width(cr,thick)

		cairo_arc (cr,h_pos,v_pos3,rad,-0.4*math.pi,0.4*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos3,rad,0.6*math.pi,-0.6*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos3,rad-25,-0.4*math.pi,0.4*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos3,rad-25,0.6*math.pi,-0.6*math.pi)
		cairo_stroke (cr)

		-- fill meter 3
		cairo_set_source_rgba (cr,r,g,b,opaque)
		cairo_set_line_width(cr,thick)
		
		max=12*1024*1024 -- 12 Mib
		pr=perc(sdown)/max
		max=12*1024*1024 -- 12 Mib
		pw=perc(sup)/max

		cairo_arc (cr,h_pos,v_pos3,rad,-0.4*math.pi,-0.4*math.pi+(0.4*math.pi+0.4*math.pi)*pr)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos3,rad,0.6*math.pi,0.6*math.pi+(1.4*math.pi-0.6*math.pi)*pw)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos3,rad-25,(0.4-0.8*bat0p/100)*math.pi,0.4*math.pi)
		cairo_stroke (cr)
		cairo_arc (cr,h_pos,v_pos3,rad-25,0.6*math.pi,0.6*math.pi+(1.4*math.pi-0.6*math.pi)*bat1p/100)
		cairo_stroke (cr)


		-- text properties
		font="Calvin and Hobbes"
		font_size=40
		font_slant=CAIRO_FONT_SLANT_NORMAL
		font_face=CAIRO_FONT_WEIGHT_NORMAL

		-- text setup
		cairo_select_font_face (cr, font, font_slant, font_face);
		cairo_set_font_size (cr, font_size)
		cairo_set_source_rgba (cr,r,g,b,1)

		-- print text
		h_text = h_pos+175
		offset = font_size/2
		cairo_move_to (cr,h_text,v_pos1-75+offset)
		cairo_show_text (cr,conky_parse("${top name 1}"))
		cairo_move_to (cr,h_text,v_pos1-25+offset)
		cairo_show_text (cr,conky_parse("${top name 2}"))
		cairo_move_to (cr,h_text,v_pos1+25+offset)
		cairo_show_text (cr,conky_parse("${top name 3}"))
		cairo_move_to (cr,h_text,v_pos1+75+offset)
		cairo_show_text (cr,conky_parse("${top name 4}"))

		cairo_move_to (cr,h_text,v_pos2-75+offset)
		cairo_show_text (cr,"W    : "..sw.."/sec")
		cairo_move_to (cr,h_text,v_pos2-25+offset)
		cairo_show_text (cr,"R     : "..sr.."/sec")
		cairo_move_to (cr,h_text,v_pos2+25+offset)
		cairo_show_text (cr,"RAM : "..mem .. " / " .. memmax)
		cairo_move_to (cr,h_text,v_pos2+75+offset)
		cairo_show_text (cr,"dsk  : "..dsk .. " / " .. dskmax)
		
		cairo_move_to (cr,h_text,v_pos3-75+offset)
		cairo_show_text (cr,"in   : "..tdown)
		cairo_move_to (cr,h_text+210,v_pos3-75+offset)
		cairo_show_text (cr,"@ "..sdown.."/s")
		cairo_move_to (cr,h_text,v_pos3-25+offset)
		cairo_show_text (cr,"out  : "..tup)
		cairo_move_to (cr,h_text+210,v_pos3-25+offset)
		cairo_show_text (cr,"@ "..sup.."/s")
		cairo_move_to (cr,h_text,v_pos3+25+offset)
		cairo_show_text (cr,"pac  : "..conky_parse("${execpi 3600 checkupdates | wc -l}"))
		cairo_move_to (cr,h_text,v_pos3+75+offset)
		cairo_show_text (cr,"aur : "..conky_parse("${execpi 3600 pacaur -k | grep aur | wc -l}"))

		cairo_move_to (cr,h_pos-115,v_pos)
		cairo_show_text (cr,"wifi : "..wip)
		cairo_move_to (cr,h_pos-115,v_pos+50)
		cairo_show_text (cr,"lan  : "..ip)
		cairo_move_to (cr,h_pos-1250,v_pos+110)
		cairo_show_text (cr,task)
		cairo_move_to (cr,h_pos+375,v_pos+110)
		cairo_show_text (cr,conky_parse("${uptime}"))
		-- cairo_show_text (cr,conky_parse("${execpi 3600 wget -q -O - \"https://finance.google.com/finance/converter?a=1&from=GBP&to=INR\" | grep \"<div id=currency_converter_result>\" | sed 's/<[^>]*>//g' | sed 's/=/is/g'}"))

-- cairo drawing code ends
    end
    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr=nil
end
