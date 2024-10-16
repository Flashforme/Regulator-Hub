local fixtures = { } -- Table to store fixtures with potential live moves

-- Iterate through all fixtures
for _, fixture in ipairs(GetAllFixtures()) do
    local currentPreset = fixture:GetPreset() -- Get current preset
    local currentIntensity = fixture:GetIntensity() -- Get current intensity

    -- Check if intensity is above 0 and if the preset has changed
    if currentIntensity > 0 and HasPresetChanged(fixture) then
        table.insert(fixtures, fixture) -- Add to the list of potential live moves
    end
end

-- Function to check if the preset has changed (implement this logic)
function HasPresetChanged(fixture)
    -- Logic to determine if the preset is different from the previous one
end

-- Output the fixtures with live moves
for _, fixture in ipairs(fixtures) do
    Print("Live Move Detected: Fixture " .. fixture:GetID())
end
