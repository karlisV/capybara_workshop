# Contains all contact us page elements
class ContactUsPage

  include Capybara::DSL

  def initialize
    @first_name_input = Element.new(:css, '#firstName')
    @last_name_input = Element.new(:css, '#lastName')
    @dropdown = Element.new(:css, 'div.drop-down')
    @options = Element.new(:css, 'a.option')
    @privacy_checkbox = Element.new(:css, 'div.data-processing-checkbox')
    @subscribe_checkbox = Element.new(:css, 'input[name="subscribe"]')
  end

  def visit
    Capybara.visit('/contact-us')
  end

  def fill_first_name(text)
    @first_name_input.set(text)
  end

  def fill_last_name(text)
    @last_name_input.set(text)
  end

  def select_topic(topic_name)
    @dropdown.click
    Capybara.find(@options.path, text: /#{topic_name}/i).click
  end

  def select_privacy_checkbox
    @privacy_checkbox.click
  end

  def select_subscribe_checkbox
    @subscribe_checkbox.click
  end

end
