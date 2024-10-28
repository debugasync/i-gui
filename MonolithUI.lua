-- Monolith ImGui UI by shiesty1337

local MonolithUI = {}

-- Persistent variables for UI elements
local is_checked = true
local slider_value = 50
local color = Color3.new(0.8, 0.3, 0.5)  -- Initialize color as a Color3 userdata

function MonolithUI:Render()
    -- Begin the Main Window
    if ImGui.Begin("monolith imgui | developer | shiesty1337", true) then
        
        -- Menu Bar
        if ImGui.BeginMenuBar() then
            if ImGui.BeginMenu("File") then
                if ImGui.MenuItem("New") then
                    print("New File Selected")
                end
                if ImGui.MenuItem("Save") then
                    print("Save File Selected")
                end
                ImGui.EndMenu()
            end
            if ImGui.BeginMenu("Options") then
                ImGui.MenuItem("Settings", nil, false, true)
                ImGui.EndMenu()
            end
            ImGui.EndMenuBar()
        end

        -- Collapsing Header Section
        if ImGui.CollapsingHeader("Main Controls") then
            ImGui.Text("Choose options:")

            -- Button Example
            if ImGui.Button("press for criminality hakk hhuhuhuuh") then
                print("eternal blakk hahahaa no crim scriopt nigger monolith hack u ratted U")
            end

            -- Checkbox Example
            is_checked = ImGui.Checkbox("Enable Feature", is_checked)

            -- Slider Example
            slider_value = ImGui.SliderInt("Adjust Value", slider_value, 0, 100)
        end

        -- Color Picker Section with Color3 userdata
        if ImGui.CollapsingHeader("Color Settings") then
            color = ImGui.ColorPicker3("Pick a Color", color)
        end

        -- Displaying Colorized Text using GetColorU32
        ImGui.TextColored(ImGui.GetColorU32(255, 0, 0, 255), "hi red")
        ImGui.TextColored(ImGui.GetColorU32(0, 255, 0, 255), "hi green")
        ImGui.TextColored(ImGui.GetColorU32(0, 0, 255, 255), "hi blue")

        -- End the main window
        ImGui.End()
    end
end

return MonolithUI
