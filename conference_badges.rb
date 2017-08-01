def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    badge_creator = []
    speakers.each {|name| badge_creator.push(badge_maker(name))}
    badge_creator
end

def assign_rooms(speakers)
    room_assignements = []
    speakers.each_with_index do |name,index|
        room_number = index+1
        room_assignements.push("Hello, #{name}! You'll be assigned to room #{room_number}!")
    end
    room_assignements
end

def printer(speakers)
    batch_badge_creator(speakers).each {|speakers| puts speakers}
    assign_rooms(speakers).each {|speakers| puts speakers}
end
