# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
CourseType.delete_all
data="0,10day,10 Day Course,10 Day Course,11
1,childteen1day,Child/Teen 1 Day Course, Children's and Teenagers Course (Ages 8-16),0
2,1day,1 Day Course, 1 Day Course (Old Students Only), 0
3,3day,3 Day Course,3 Day Course (Old Students only),3
4,sati9day,Satipatthana 9 Day Course, Satipatthana Sutta 9 Day Course (Old Students only),9
5,other,Other,Other,Other,-1
6,exec,10 Day Course (executives),10 Day Course for people in executive positions,11
7,work,Workd Period,A period for performing work on a site of meditation (Old Students only),-1
A,20day,20 Day Course,20 Day Course (Old Students only),21
B,30day,30 Day Course,30 Day Course (Old Students only),31
C,45day,45 Day Course,45 Day Course (Old Students only),46
D,special10day,Special 10 Day Course,Special 10 Day Course (Serious Old Students only),11
E,openday,Open Day, A day to introduce the public to the centre,0
F,60day,60 Day Course,60 Day Course (Old Students only),61
G,tsc15day,Teachers Self Course, Teachers Self Course 15 days (Old Students only),15
H,children2day,Childrens 2 Day Course,Childrens 2 Day course (Ages 8-12),1
I,teenagers1day,Teenagers 1 Day Course,Teenagers 1 Day Course (Ages 13-18),0
J,sati8day,Satipatthana 8 Day,Satipatthana Sutta 8 Day Course (Old Students only),8"
data_array = data.split("\n")
log=Logger.new(STDOUT) 
log.info data_array
data_array.each{ |line|
  log.info "Line " + line
  oldcode, translation_code, name, description, last_day = line.chomp.split(',')
  
  @type= { :translation_code=>translation_code.strip, :name=>name.strip,:description => description.strip, 
                    :last_day => last_day.strip, :oldcode=>oldcode.to_s}
 
  
  
  ct = CourseType.create!(@type)
 
  }
log.info("Course Type data inserted successfully.") 

Language.delete_all
Language.create!(:iso_code=> "en", :name=>"English")
Language.create!(:iso_code=> "nl", :name=>"Nederlands")
log.info("Language data inserted successfully.")

WhiteboardType.delete_all
WhiteboardType.create! (:name=>"system", :translation_code=>"system")
WhiteboardType.create! (:name=>"local admin", :translation_code=>"localadmin")
WhiteboardType.create! (:name=>"user", :translation_code=>"user")
log.info("Whiteboard Type data inserted successfully.") 

Whiteboard.delete_all
Whiteboard.create!(:whiteboard_type_id=> WhiteboardType.find_by_name("system").id, :info=>"New version of Calm will be online tomorrow." )
Whiteboard.create!(:whiteboard_type_id=> WhiteboardType.find_by_name("local admin").id, :info=>"Female quota exceeded for 2 Dec. No more confirmations.")
Whiteboard.create!(:whiteboard_type_id=> WhiteboardType.find_by_name("user").id, :info=>"Need a new printer cartridge in office. Who can order it?")

log.info Whiteboard.find(:all)

log.info("Whiteboard Demo data inserted successfully. Record count = " +Whiteboard.count.to_s) 


log.info("Users not  created")

Location.delete_all
Location.create(:old_code=>"BRISBA", :name=>"Brisbane")
Location.create(:old_code=>"RASMI", :name=>"Dahamma Rasmi")

log.info("Locations created")

Quota.delete_all
Quota.create(:name=>"Old Students", :quota=>22, :initial_quota=>29)
Quota.create(:name=>"Male tents", :quota=>4, :initial_quota=>4)
Quota.create(:name=>"Off site servers", :quota=>2, :initial_quota=>2)
Quota.create(:name=>"On site servers", :quota=>6, :initial_quota=>8)


