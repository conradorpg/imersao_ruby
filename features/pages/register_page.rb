# Classe responsavel pelo cadastro
class RegisterPage < SitePrism::Page
  set_url '?controller=authentication&back=my-account'
  element :email_create_account_field, '#email_create'
  element :email_create_account_button, '#SubmitCreate'
  element :form_select_gender, '#uniform-id_gender1'
  element :form_fill_fistname, '#customer_firstname'
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
    @email = email.eql?('email') ? Faker::Internet.email(domain: 'mail') : email
    email_create_account_field.set @email
    email_create_account_button.click
  end

  def fill_personal_info
    $first_name = Faker::Name.first_name
    $last_name = Faker::Name.last_name
    form_select_gender.set true
    form_fill_fistname.set $first_name
    form_fill_lastname.set $last_name
    # form_fill_email.set @email
    form_fill_password.set Faker::Internet.password(min_length: 5, max_length: 8, mix_case: true, special_characters: true)
    # form_fill_div_days.click
    form_fill_days.click
    form_fill_months.click
    form_fill_years.click
    form_fill_newsletter.click
  end

  def fill_address
    form_fill_address1.set 'Valley of Flowers'
    form_fill_address2.set 'House'
    form_fill_city.set 'Houston'
    form_fill_div_state.click
    form_fill_state.click
    form_fill_zip_code.set '77001'
    form_fill_div_country.click
    form_fill_country.click
    form_fill_other.set 'Imersão em Ruby'
  end

  def fill_phones
    form_fill_phone.set '+1 408 555 5555'
    form_fill_mobile.set '+1 408 555 5555'
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
