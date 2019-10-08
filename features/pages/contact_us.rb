# Contains all contact us page's elements
class ContactUsPage
  attr_accessor :contact_info_txt, :first_name_input, :last_name_input,
                :email_field_input

  def initialize
    @contact_info_txt = Element.new(:css, 'h3.light')
    @first_name_input = Element.new(:css, 'input[name="firstName"]')
    @last_name_input = Element.new(:css, 'input[name="lastName"]')
    @email_field_input = Element.new(:css, 'input[name="email"]')
  end

  def contact_info_header
    @contact_info_txt.text
  end

end
