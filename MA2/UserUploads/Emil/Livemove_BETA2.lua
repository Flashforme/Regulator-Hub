local targetFixtureID = GetUserInput("Enter Fixture ID or Group ID:") -- Prompt user for fixture input
local targetSequenceID = GetUserInput("Enter Sequence ID to search:") -- Prompt user for sequence input
local fixtures = {} -- Table to store fixtures with potential live moves

-- Function to check if a fixture belongs to the target group
function IsInTargetGroup(fixture)
    local groups = fixture:GetGroups() -- Get the groups the fixture belongs to
    for _, group in ipairs(groups) do
        if group:GetID() == targetFixtureID then
            return true -- Fixture is in the target group
        end
    end
    return false -- Fixture is not in the target group
end

-- Get the cues from the specified sequence
local targetSequence = GetSequence(targetSequenceID) -- Get the target sequence
if not targetSequence then
    Print("Invalid Sequence ID: " .. targetSequenceID)
    return
end

-- Iterate through all cues in the target sequence
for _, cue in ipairs(targetSequence:GetCues()) do
    for _, fixture in ipairs(GetAllFixtures()) do
        -- Check if the input is a number (fixture ID) or if the fixture is in a group
        if tonumber(targetFixtureID) == fixture:GetID() or IsInTargetGroup(fixture) then
            local currentPreset = fixture:GetPreset() -- Get current preset
            local currentIntensity = fixture:GetIntensity() -- Get current intensity

            -- Check if intensity is above 0 and if the preset has changed
            if currentIntensity > 0 and HasPresetChanged(fixture) then
                table.insert(fixtures, fixture) -- Add to the list of potential live moves
            end
        end
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
