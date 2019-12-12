# Contains all contact us page's elements
class ContactUsPage
  def initialize
    @first_name_input = Element.new(:css, 'input[name="firstName"]')
    @last_name_input = Element.new(:css, 'input[name="lastName"]')
    @topic_dropdown = Element.new(:css, 'div.field-box div.drop-icn')
    @topic_options = Element.new(:css, 'a.option')
  end

  def select_from_topic(option_name)
    @topic_dropdown.click
    Capybara.find(@topic_options.css, text: /#{option_name}/i).click
  end

  def visit
    Capybara.visit('/contact-us')
  end

  def fill_first_name(text)
    @first_name_input.send_keys(text)
  end

  def fill_last_name(text)
    @last_name_input.send_keys(text)
  end

  def page_loaded?
    @first_name_input.element_on_page?(wait: 10)
  end
end
