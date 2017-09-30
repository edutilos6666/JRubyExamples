require "java"

java_import java.util.ArrayList , java.util.HashMap

class DAOExample
  def example1
    workerList = ArrayList.new
    workerList.add Worker.new(1, "foo", 10, 100.0, true)
    workerList.add Worker.new 2, "bar", 20, 200.0, false
    workerList.add Worker.new 3, "bim", 30, 300.0, true
    dao = WorkerDAOImpl.new
    workerList.each do |w|
      dao.save w
    end

    puts "<<all workers>>"
    all = dao.find_all
    all.each do |w|
      puts w.str
    end

    # update
    dao.update 1, Worker.new(1, "new foo", 66, 666.6, false)
    one = dao.find_by_id 1
    puts "one after update = #{one.str}"

    # remove
    dao.remove 1
    all = dao.find_all
    puts "<<all workers after remove>>"
    all.each do |w|
      puts w.str
    end
  end


  class Worker
    def initialize(id, name, age, wage, active)
      @id = id
      @name = name
      @age = age
      @wage = wage
      @active = active
    end

    def get_id
      @id
    end

    def get_name
      @name
    end

    def get_age
      @age
    end
    def get_wage
      @wage
    end
    def is_active
      @active
    end

    def set_id(id)
      @id = id
    end
    def set_name(name)
      @name = name
    end
    def set_age(age)
      @age = age
    end
    def set_wage(wage)
      @wage = wage
    end
    def set_active(active)
      @active = active
    end

    def str
      "Worker(#@id,#@name,#@age,#@wage,#@active)"
    end
  end


  class WorkerDAO
    def save(worker)

    end

    def update(id , worker)

    end
    def remove(id)

    end
    def find_by_id(id)

    end
    def find_all()

    end
  end


  class WorkerDAOImpl < WorkerDAO
    def initialize()
      @container = HashMap.new
    end

    def save(worker)
      @container.put worker.get_id , worker
    end

    def update(id , worker)
      @container.remove id
      @container.put id , worker
    end
    def remove(id)
      @container.remove id
    end
    def find_by_id(id)
      @container.get id
    end
    def find_all()
      @container.values
    end
  end


end