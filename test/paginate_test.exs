defmodule PaginateTest do
  use ExUnit.Case

  test "return the number of pages" do
    assert(Paginate.number_of_pages([1, 2, 3, 4], records_per_page: 2) == 2)
  end

  test "return paginated records for the first page" do
    assert(Paginate.paginate([1, 2, 3, 4], records_per_page: 2) == [1, 2])
  end

  test "return paginated records for the second page" do
    assert(Paginate.paginate([1, 2, 3, 4], records_per_page: 2, page: 2) == [3, 4])
  end
end
