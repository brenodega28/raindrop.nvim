local colors = {
  -- Base colors
  bg0 = "#1a1f2e",          -- Main background (dark blue)
  bg1 = "#242936",          -- Slightly lighter background
  bg2 = "#2e3440",          -- Selection, visual mode
  bg3 = "#3b4252",          -- Lighter UI elements

  fg0 = "#e2e8f0",          -- Primary foreground
  fg1 = "#cbd5e1",          -- Secondary foreground
  fg2 = "#94a3b8",          -- Tertiary foreground
  fg3 = "#64748b",          -- Comments, muted text

  -- Syntax colors
  cyan = "#67c9f0",         -- Keywords, functions
  cyan_bright = "#7dd3fc",  -- Bright keywords
  teal = "#1AD6B5",         -- Class names
  orange = "#fb923c",       -- Constants
  orange_light = "#fdba74", -- Light orange
  string_blue = "#9DD8EB",  -- Strings
  blue = "#60a5fa",         -- Numbers, booleans
  blue_light = "#93c5fd",   -- Light blue
  green = "#4ade80",        -- Added, success
  green_light = "#86efac",  -- Light green
  red = "#f87171",          -- Errors, deleted
  red_light = "#fca5a5",    -- Light red
  purple = "#c084fc",       -- Special, operators
  purple_light = "#d8b4fe", -- Light purple
  yellow = "#fbbf24",       -- Warnings
  yellow_light = "#fde047", -- Light yellow

  -- Special UI colors
  title = "#94a3b8",        -- Window title bar
  border = "#3b4252",       -- Borders
  cursor_line = "#242936",  -- Current line
  none = "NONE",
}

return colors
