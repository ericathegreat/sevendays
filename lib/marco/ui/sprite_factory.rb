require_relative './sprite_family.rb'
module UI
	module SpriteFactory
		def self.simple_sprite relative_filename, offset_x, offset_y, tileable = false
			UI::BaseSprite.new offset_x_px: offset_x, offset_y_px: offset_y, image: Gosu::Image.new("img/#{relative_filename}", tileable: tileable)
		end

		def self.sprite_family sprites
			UI::SpriteFamily.new sprites
		end

		def self.auto_connect_sprite_group name, relative_path, offset_x, offset_y
			UI::Sprites::AutoConnectSpriteGroup.new :water,
			 	o: simple_sprite("#{relative_path}o.png", offset_x, offset_y, true),
			 	n: simple_sprite("#{relative_path}o.png", offset_x, offset_y, true),
			 	en: simple_sprite("#{relative_path}en.png", offset_x, offset_y, true), 
			 	ns: simple_sprite("#{relative_path}o.png", offset_x, offset_y, true), 
			 	nw: simple_sprite("#{relative_path}nw.png", offset_x, offset_y, true),
			 	ens: simple_sprite("#{relative_path}ens.png", offset_x, offset_y, true), 
			 	enw: simple_sprite("#{relative_path}enw.png", offset_x, offset_y, true), 
			 	nsw: simple_sprite("#{relative_path}nsw.png", offset_x, offset_y, true), 
			 	e: simple_sprite("#{relative_path}o.png", offset_x, offset_y, true), 
			 	es: simple_sprite("#{relative_path}es.png", offset_x, offset_y, true), 
			 	ew: simple_sprite("#{relative_path}o.png", offset_x, offset_y, true),
			 	esw: simple_sprite("#{relative_path}esw.png", offset_x, offset_y, true), 
			 	s: simple_sprite("#{relative_path}o.png", offset_x, offset_y, true), 
			 	sw: simple_sprite("#{relative_path}sw.png", offset_x, offset_y, true), 
			 	ensw: sprite_family([
			 		simple_sprite("#{relative_path}ensw.png", offset_x, offset_y, true)
			 	])
		end
	end
end