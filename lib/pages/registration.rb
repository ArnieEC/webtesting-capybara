require 'capybara/dsl'

class Registration
  include Capybara::DSL

  # page objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  DATE_OF_BIRTH_FIELD = 'dob'
  AGE_FIELD = '/html/body/div/form/div[3]/div/input'
  GENDER_RADIO_BUTTON_ID = '/html/body/div/form/div[5]/label'
  DEGREE_FIELD = '/html/body/div/form/div[7]/div/input'
  UNIVERSITY_OPTION = 'inputUni'
  ADDRESS_LINE_ONE_FIELD = 'inputAddress'
  ADDRESS_LINE_TWO_FIELD = 'inputAddress2'
  CITY_FIELD = 'inputCity'
  COUNTY_OPTION = 'inputCounty'
  POSTCODE_FIELD = 'inputPostcode'
  EMAIL_FIELD = 'inputemailaddress'
  SKILLS_FIELD = 'exampleFormControlTextarea1'
  PHONE_NUMBER_FIELD = 'exampleFormControlInput1'
  LINKEDIN_FIELD = '/html/body/div/form/div[17]/div/input'
  CV_BUTTON = '/html/body/div/form/div[18]/div/input'
  STREAM_RADIO_BUTTON = '/html/body/div/form/div[20]/div[1]'
  TERMS_CHECK_BOX = '//*[@id="terms"]'
  RATING_SLIDER = '//*[@id="experienceSlider"]'

  def visit_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def fill_in_first_name(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_last_name(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_dob(date)
    fill_in(DATE_OF_BIRTH_FIELD, :with => date)
  end

  def fill_in_age(age)
    find(:xpath, AGE_FIELD).set(age)
  end

  def fill_in_gender
    find(:xpath, GENDER_RADIO_BUTTON_ID).click
  end

  def fill_in_degree(degree)
    find(:xpath, DEGREE_FIELD).set(degree)
  end

  def fill_in_university(university)
    select(university, from: UNIVERSITY_OPTION)
  end

  def fill_in_address_one(lineone)
    fill_in(ADDRESS_LINE_ONE_FIELD, :with => lineone)
  end

  def fill_in_address_two(linetwo)
    fill_in(ADDRESS_LINE_TWO_FIELD, :with => linetwo)
  end

  def fill_in_city(city)
    fill_in(CITY_FIELD, :with => city)
  end
  
  def select_county(county)
    select(county, from: COUNTY_OPTION)
  end
  
  def fill_in_postcode(postcode)
    fill_in(POSTCODE_FIELD, :with => postcode)
  end
  
  def fill_in_email(email)
    fill_in(EMAIL_FIELD, :with => email)
  end
  
  def fill_in_skills(skills)
    fill_in(SKILLS_FIELD, :with => skills)
  end
  
  def fill_in_phone_number(number)
    fill_in(PHONE_NUMBER_FIELD, :with => number)
  end

  def fill_in_linkedin(link)
    find(:xpath, LINKEDIN_FIELD).set(link)
  end

  def fill_in_cv
    find(:xpath, CV_BUTTON).click
  end

  def fill_in_stream
    find(:xpath, STREAM_RADIO_BUTTON).click
  end

  def fill_in_terms
    find(:xpath, TERMS_CHECK_BOX).click
  end

  def fill_in_slider(rating)
    within(:xpath, RATING_SLIDER) do |rating|
      fill_in 'input', :with => rating
    end
  end
end