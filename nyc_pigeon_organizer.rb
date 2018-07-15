def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, options|
    options.each do |details, name_list|
      name_list.each do |name|
          pigeon_list[name] ||= {}
          pigeon_list[name][category] ||= []
          pigeon_list[name][category] << details.to_s
      end
    end
  end
pigeon_list
end
