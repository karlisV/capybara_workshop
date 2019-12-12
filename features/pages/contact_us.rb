# Contains all contact us page's elements
class ContactUsPage
  def initialize
    @first_name_input = Element.new(:css, 'input[name="firstName"]')
    @last_name_input = Element.new(:css, 'input[name="lastName"]')
  end

  def visit
    Capybara.visit('/contact-us')
  end

  def fill_first_name(text)
    @first_name_input.send_keys(text)
  end

  def page_loaded?
    @first_name_input.element_on_page?(wait: 10)
  end
end
