class TicketsController < ApplicationController
  include TicketsHelper

  def index

  end

  def generate
    @ticket_number = generate_ticket_number
    respond_to do |format|
      format.json { render json: { ticket_number: @ticket_number } }
    end
  end

  def new
    @ticket_number = SecureRandom.hex(5)
  end

  def ticket_number
    prefix = "TicketNo_"
    ticket_number = prefix + SecureRandom.hex(5)
    render json: { ticket_number: ticket_number }
  end
end
