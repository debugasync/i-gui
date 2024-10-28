-- Monolith ImGui UI by shiesty1337

local MonolithUI = {}

-- Persistent variables for UI elements
local is_checked = true
local slider_value = 50
local color = {0.8, 0.3, 0.5}

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
            if ImGui.Button("Press Me!") then
                print("Button Pressed!")
            end

            -- Checkbox Example
            is_checked = ImGui.Checkbox("Enable Feature", is_checked)

            -- Slider Example
            slider_value = ImGui.SliderInt("Adjust Value", slider_value, 0, 100)
        end

        -- Color Picker Section
        if ImGui.CollapsingHeader("Color Settings") then
            color[1], color[2], color[3] = ImGui.ColorPicker3("Pick a Color", color)
        end

        -- End the main window
        ImGui.End()
    end
end

return MonolithUI
