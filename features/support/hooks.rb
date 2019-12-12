# ---------------------------------------------------------------------#
# -----------------------BEFORE HOOKS ---------------------------------#
# ---------------------------------------------------------------------#
Before() do
  # Capybara.default_max_wait_time = 15
  @pages = Pages.new
end

# ------------------------------------------------------------------------#
# -----------------------AFTER HOOKS--------------------------------------#
# ------------------------------------------------------------------------#

After() do |scenario|
  add_screenshot(scenario.name) if scenario.failed?
end
