defmodule NameBadge do
  def print(id, name, department) do
    if id == nil and department != nil do
      "#{name} - #{String.upcase(department)}"
    else
      if department == nil and id != nil do
        "[#{id}] - #{name} - OWNER"
      else
        if department == nil and id == nil do
          "#{name} - OWNER"
        else
          "[#{id}] - #{name} - #{String.upcase(department)}"
        end
      end
   end
  end
end
