function Userlogin()
  -- Show a popup list to select user
  local key, value = PopupInput({
    title = 'User Login',
    caller = GetFocusDisplay(),
    items = {'User 1', 'User 2', 'User 3'}
  })

  -- If a selection was made (not cancelled)
  if value then
    -- Match the selected value and run corresponding macro
    if value == 'User 1' then
      Cmd('Call Macro "User1"')
    elseif value == 'User 2' then
      Cmd('Call Macro "User2"')
    elseif value == 'User 3' then
      Cmd('Call Macro "User3"')
    else
      Printf('No matching user found.')
    end
  else
    Printf('User selection cancelled.')
  end
end

return Userlogin