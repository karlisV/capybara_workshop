# Contains all landing page's elements
class LandingPage
  include Capybara::DSL
  def initialize
    @section_titles = Element.new(:css, 'h6.section-name')
  end

  def contains_section?(text)
    @section_titles.element_on_page? text: text, visible: true
  end

end