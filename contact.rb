class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers

  def initialize
    @phone_numbers = []
  end

  def add_phone_number(kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
  end

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def first_last
    first_name + " " + last_name
  end

  def last_first
    last_first = last_name
    last_first += ", "
    last_first += first_name
    if !@middle_name.nil?
      last_first += " "
      last_first += middle_name.slice(0, 1)
      last_first += "."
    end
    last_first
  end

  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += " "
    full_name += last_name
    full_name
  end

  def to_s(format = "full_name")
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end
end


kevin = Contact.new
kevin.first_name = "Kevin"
kevin.last_name = "Stradtman"
kevin.middle_name = "Thomas"
puts kevin.full_name
puts kevin.first_name

