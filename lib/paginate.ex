defmodule Paginate do
  use Application.Behaviour

  def number_of_pages(records, options) do
    records_per_page = options[:records_per_page] || 50

    length(records) / records_per_page
  end

  def paginate(records, options) do
    records_per_page = options[:records_per_page] || 50
    page = binary_to_integer(options[:page]) || 1
    records = Enum.drop records, ((page - 1) * records_per_page)

    Enum.take records, records_per_page
  end
end
