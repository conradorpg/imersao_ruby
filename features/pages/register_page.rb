# Classe responsavel pelo cadastro
class RegisterPage < SitePrism::Page
  set_url '?controller=authentication&back=my-account'
  element :email_create_account_field, '#email_create'
  element :email_create_account_button, '#SubmitCreate'
  element :form_select_gender_male, '#uniform-id_gender1'
  element :form_select_gender_female, '#uniform-id_gender2'
  element :form_fill_firstname, '#customer_firstname'
  element :form_fill_lastname, '#customer_lastname'
  element :form_fill_email, '#email'
  element :form_fill_password, '#passwd'
  element :form_fill_div_days, '#uniform-days'
  element :form_fill_days, '#days > option:nth-child(5)'
  element :form_fill_div_months, '#uniform-months'
  element :form_fill_months, '#months > option:nth-child(9)'
  element :form_fill_div_years, '#uniform-years'
  element :form_fill_years, '#years > option:nth-child(43)'
  element :form_fill_newsletter, '#uniform-newsletter'
  element :form_fill_address1, '#address1'
  element :form_fill_address2, '#address2'
  element :form_fill_city, '#city'
  element :form_fill_div_state, '#uniform-id_state'
  element :form_fill_state, '#id_state > option:nth-child(46)'
  element :form_fill_zip_code, '#postcode'
  element :form_fill_div_country, '#uniform-id_country'
  element :form_fill_country, '#id_country > option:nth-child(2)'
  element :form_fill_other, '#other'
  element :form_fill_phone, '#phone'
  element :form_fill_mobile, '#phone_mobile'
  element :form_fill_alias, '#alias'
  element :form_submit_account, '#submitAccount'

  # rubocop:disable Metrics/AbcSize
  def create_account(email)
    case email
    when 'randomico'
      @email = Faker::Internet.email(domain: 'mail')
    when 'padrao'
      @email = UserData.get('email')
    else
      @email = email
    end
    email_create_account_field.set @email
    email_create_account_button.click
  end

  def fill_personal_info_fake
    $first_name = Faker::Name.first_name
    $last_name = Faker::Name.last_name
    form_select_gender_male.set true
    form_fill_firstname.set $first_name
    form_fill_lastname.set $last_name
    # form_fill_email.set @email
    form_fill_password.set Faker::Internet.password(min_length: 5, max_length: 8, mix_case: true, special_characters: true)
    # form_fill_div_days.click
    form_fill_days.click
    form_fill_months.click
    form_fill_years.click
    form_fill_newsletter.click
    form_fill_address1.set 'Valley of Flowers'
    form_fill_address2.set 'House'
    form_fill_city.set 'Houston'
    form_fill_div_state.click
    form_fill_state.click
    form_fill_zip_code.set '77001'
    form_fill_div_country.click
    form_fill_country.click
    form_fill_other.set 'Imersão em Ruby'
    form_fill_phone.set '+1 408 555 5555'
    form_fill_mobile.set '+1 408 555 5555'
    form_fill_alias.set 'Led'
  end

  def fill_personal_info_examples(gender, first_name, last_name, passswd, newsletter, address, address_type, city, zipcode, phone, mobile)
    $first_name = first_name
    $last_name = last_name
    gender.eql?('masc') ? form_select_gender_male.set(true) : form_select_gender_female.set(true)
    form_fill_firstname.set $first_name
    form_fill_lastname.set $last_name
    # form_fill_email.set @email
    form_fill_password.set passswd
    # form_fill_div_days.click
    form_fill_days.click
    form_fill_months.click
    form_fill_years.click
    unless newsletter.eql?('no')
      form_fill_newsletter.click
    end
    form_fill_address1.set address
    form_fill_address2.set address_type
    form_fill_city.set city
    form_fill_div_state.click
    form_fill_state.click
    form_fill_zip_code.set zipcode
    form_fill_div_country.click
    form_fill_country.click
    form_fill_other.set 'Imersão em Ruby'
    form_fill_phone.set phone
    form_fill_mobile.set mobile
    form_fill_alias.set 'Led'
  end

  def fill_personal_info_datafile
    $first_name = UserData.get('first_name')
    $last_name = UserData.get('last_name')
    UserData.get('gender').eql?('masc') ? form_select_gender_male.set(true) : form_select_gender_female.set(true)
    form_fill_firstname.set $first_name
    form_fill_lastname.set $last_name
    # form_fill_email.set @email
    form_fill_password.set UserData.get('passswd')
    # form_fill_div_days.click
    form_fill_days.click
    form_fill_months.click
    form_fill_years.click
    unless UserData.get('newsletter').eql?('no')
      form_fill_newsletter.click
    end
    form_fill_address1.set UserData.get('address')
    form_fill_address2.set UserData.get('address_type')
    form_fill_city.set UserData.get('city')
    form_fill_div_state.click
    form_fill_state.click
    form_fill_zip_code.set UserData.get('zipcode')
    form_fill_div_country.click
    form_fill_country.click
    form_fill_other.set 'Imersão em Ruby'
    form_fill_phone.set UserData.get('phone')
    form_fill_mobile.set UserData.get('mobile')
    form_fill_alias.set 'Led'
  end

  def submit_account
    form_submit_account.click
  end

  def account_full_name
    "#{$first_name} #{$last_name}"
  end
  # rubocop:enable Metrics/AbcSize
end
