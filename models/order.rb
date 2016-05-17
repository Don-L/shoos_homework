require_relative('../db/sql_runner')


class Order

  attr_reader(:id, :first_name, :last_name, :size, :quantity)


  def initialize(options)

    @id = options[id].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @size = options['size'].to_i
    @quantity = options['quantity'].to_i

  end



  def save

    sql = "INSERT INTO orders (

                                first_name,
                                last_name,
                                size,
                                quantity     )

                        VALUES (

                                '#{@first_name}',
                                '#{@last_name}',
                                 #{@size},
                                 #{@quantity}   );"

    SqlRunner.run(sql)

  end



  def self.all

    sql = "SELECT * FROM orders;"

    result = SqlRunner.run(sql)

    result.map {|order| Order.new(order)}

  end



  def pretty_name

    @first_name << ' ' << @last_name

  end




end