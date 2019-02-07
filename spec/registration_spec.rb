require 'spec_helper'

describe 'testing a correct path for sparta registration' do
  context 'it should respond with confirmation on successful completion' do
    it 'should show correct confirmation on completion' do
      @sparta_demo_site = SpartaDemoSite.new.registration_page
      @sparta_demo_site.visit_registration_page
      @sparta_demo_site.visit_registration_page
      @sparta_demo_site.fill_in_first_name('Arnold')
      @sparta_demo_site.fill_in_last_name('Chung')
      @sparta_demo_site.fill_in_age('22')
      @sparta_demo_site.fill_in_dob('08021996')
      @sparta_demo_site.fill_in_gender
      @sparta_demo_site.fill_in_degree('Chemistry')
      @sparta_demo_site.fill_in_university('University of Oxford')
      @sparta_demo_site.fill_in_address_one('6 Knollys Road')
      @sparta_demo_site.fill_in_address_two('Streatham')
      @sparta_demo_site.fill_in_city('London')
      @sparta_demo_site.select_county('Bristol')
      @sparta_demo_site.fill_in_postcode('SW16 2JZ')
      @sparta_demo_site.fill_in_email('arniechung@hotmail.com')
      @sparta_demo_site.fill_in_skills('Stuff')
      @sparta_demo_site.fill_in_phone_number('07946118037')
      @sparta_demo_site.fill_in_linkedin('linkedin.com')
      # @sparta_demo_site.fill_in_cv
      @sparta_demo_site.fill_in_stream
      @sparta_demo_site.fill_in_terms
      @sparta_demo_site.fill_in_slider('9')
      sleep 5
    end
  end
end