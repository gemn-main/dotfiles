-- #####################################################################################
-- HYPRLAND CONFIG — Lua
-- Migrated from the old hyprland.conf / hyprlang format.
-- #####################################################################################

local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show run"
local home = os.getenv("HOME") or ""

-- =============================================================================
-- MONITORS
-- =============================================================================

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1.5,
})

-- =============================================================================
-- AUTOSTART
-- =============================================================================
-- Equivalent of exec-once: these run only when Hyprland starts.

hl.on("hyprland.start", function()
    hl.exec_cmd("vicinae server")
    hl.exec_cmd("fcitx5 -d")
    -- hl.exec_cmd("hyprpaper")
    -- hl.exec_cmd("hyprlock")
    -- hl.exec_cmd("systemctl --user start mpvpaper.service")
    hl.exec_cmd("waybar")
    hl.exec_cmd("[workspace 10 silent] corectrl")
    hl.exec_cmd("swaybg -i " .. home .. "/Downloads/pexels-adrien-olichon-1257089-2387819.jpg -m fill")
end)

-- =============================================================================
-- ENVIRONMENT VARIABLES
-- =============================================================================

hl.env("DESKTOP_SESSION", "hyprland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- =============================================================================
-- LOOK AND FEEL
-- =============================================================================

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,
        border_size = 0,
        col = {
            active_border = "rgba(33ccffee)",
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = true,
        layout = "dwindle",
    },

    decoration = {
        rounding = 15,
        active_opacity = 1.0,
        inactive_opacity = 0.95,

        shadow = {
            enabled = true,
            range = 10,
            color = "rgba(212121ee)",
        },

        blur = {
            enabled = true,
            size = 6,
            passes = 2,
        },
    },

    animations = {
        enabled = true,
    },

    input = {
        kb_layout = "us,ru",
        kb_options = "grp:win_space_toggle",
        follow_mouse = 1,
        sensitivity = 0,
    },
})

-- =============================================================================
-- ANIMATIONS
-- =============================================================================

hl.curve("easeOutQuint", {
    type = "bezier",
    points = {
        { 0.23, 1.0 },
        { 0.32, 1.0 },
    },
})

hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 3,
    bezier = "easeOutQuint",
    style = "popin 90%",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3,
    bezier = "default",
})

-- =============================================================================
-- WINDOW RULES
-- =============================================================================
-- All windows are floating by default, as in the original config.

hl.window_rule({
    match = { class = ".*" },
    float = true,
})

-- Kitty: fixed size and centered.
hl.window_rule({
    match = { class = "^(kitty)$" },
    size = { 1000, 600 },
    center = true,
})

-- Dialog windows.
hl.window_rule({
    match = { class = "^(zenity)$" },
    float = true,
})

hl.window_rule({
    match = { class = "^(pavucontrol)$" },
    float = true,
})

hl.window_rule({
    match = { class = "^(blueman-manager)$" },
    float = true,
})

hl.window_rule({
    match = { class = "^(nm-connection-editor)$" },
    float = true,
})

-- pavucontrol: fixed size and centered.
hl.window_rule({
    match = { class = "^(pavucontrol)$" },
    size = { 1600, 1000 },
    center = true,
})

-- =============================================================================
-- KEYBINDINGS
-- =============================================================================

-- Vicinae
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("vicinae toggle"))

-- Focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
-- SUPER + L was also used below for hyprlock in the original config.
-- The original last SUPER+L binding was hyprlock, so that effective behavior is kept.
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Mouse: move / resize windows
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Applications / window actions
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("rofi -show drun"))

-- Window management
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

-- =============================================================================
-- WORKSPACES
-- =============================================================================

for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- =============================================================================
-- SCREENSHOTS
-- =============================================================================

hl.bind("CTRL + ALT + E", hl.dsp.exec_cmd(
    "mkdir -p " .. home .. "/skrin && grim " ..
    home .. "/skrin/full_$(date +'%Y-%m-%d_%H-%M-%S').png && " ..
    "notify-send 'Скриншот' 'Весь экран сохранён в ~/skrin/'"
))

hl.bind("CTRL + ALT + W", hl.dsp.exec_cmd(
    "mkdir -p " .. home .. "/skrin && grim -g \"$(slurp)\" " ..
    home .. "/skrin/area_$(date +'%Y-%m-%d_%H-%M-%S').png && " ..
    "notify-send 'Скриншот' 'Выделенная область сохранена в ~/skrin/'"
))

hl.bind("CTRL + ALT + Q", hl.dsp.exec_cmd(
    "grim -g \"$(slurp)\" - | wl-copy && " ..
    "notify-send 'Скриншот' 'Изображение скопировано в буфер обмена'"
))

-- =============================================================================
-- MULTIMEDIA KEYS
-- =============================================================================

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true }
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true }
)

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
    { locked = true, repeating = true }
)

-- =============================================================================
-- MEDIA CONTROL
-- =============================================================================

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    { locked = true }
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    { locked = true }
)
