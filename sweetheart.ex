defmodule HighSchoolSweetheart do
  def first_letter(name), do: String.trim(name) |> String.first()

  def initial(name) do
    initial = first_letter(name) |> String.upcase()
    initial <> "."
  end

  def initials(full_name) do
    full_name
    |> String.split()
    |> Enum.map(&initial/1)
    |> Enum.join(" ")
    |> String.trim()
  end

  def pair(full_name1, full_name2) do
    initials1 = initials(full_name1)
    initials2 = initials(full_name2)
    heart =
        """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials1}  +  #{initials2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
    heart
  end
end
