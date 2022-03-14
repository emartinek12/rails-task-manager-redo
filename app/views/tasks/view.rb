class View
  def display(tasks)
    tasks.each_with_index | task, index | {
      puts "#{index}. #{task}"
    }
  end
end
