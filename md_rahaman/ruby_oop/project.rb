class Project
  attr_reader :name, :description
  def initialize(name, description)
    @name = name
    @description= description
  end

  def elevator_pitch
    puts "Project Name: #{@name}, Project Descripton: #{@description}"
  end
end

project1 = Project.new("Project1", "Description 1")
puts project1.name
project1.elevator_pitch
