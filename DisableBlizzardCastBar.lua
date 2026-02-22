local disableCastBar = CreateFrame("Frame")
disableCastBar:RegisterEvent("PLAYER_ENTERING_WORLD")
disableCastBar:SetScript("OnEvent", function()
    -- print(select(4, GetBuildInfo()))
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
        PlayerCastingBarFrame:UnregisterAllEvents()
    elseif WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then
        PlayerCastingBarFrame:UnregisterAllEvents()
    else
        CastingBarFrame:UnregisterAllEvents()
    end
    disableCastBar:UnregisterEvent("PLAYER_ENTERING_WORLD")
end)
