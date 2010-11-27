
Whiteboard.delete_all
Whiteboard.create!(:whiteboard_type_id=> WhiteboardType.find_by_name("system").id, :info=>"New version of Calm will be online tomorrow." )
Whiteboard.create!(:whiteboard_type_id=> WhiteboardType.find_by_name("localadmin").id, :info=>"Female quota exceeded for 2 Dec. No more confirmations.")
Whiteboard.create!(:whiteboard_type_id=> WhiteboardType.find_by_name("user").id, :info=>"Need a new printer cartridge in office. Who can order it?")

Whiteboard.find(:all)
log.info("Whiteboard Demo data inserted successfully.") 


User.find_by_email("mark@gmail.com").destroy
User.create(:email=> "mark@gmail.com", :password=>"xxxxxx", :password_confirmation=>"xxxxxx")
User.find_by_email("ernst@ernst.com").destroy
User.create(:email=> "ernst@ernst.com", :password=>"xxxxxx", :password_confirmation=>"xxxxxx")

log.info("User created")
