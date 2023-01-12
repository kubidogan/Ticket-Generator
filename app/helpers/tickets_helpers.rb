module TicketsHelper
  def generate_ticket_number(prefix = "TicketNo_", digits = 8)
    # generate a random number of specified number of digits
    ticket_number = rand(10**(digits-1)..(10**digits)-1)
    # add prefix to the ticket number
    ticket_number = prefix + ticket_number.to_s
    return ticket_number
  end
end
