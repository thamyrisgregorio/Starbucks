Quando('não preencho todos os campos obrigatorios') do
    find("#lastname").set Faker::Name.last_name
    find("#email_address").set Faker::Internet.email
    find("#password").set "Teste123@"
    find("#password-confirmation").set "Teste123@"
end

Entao('a mensagem de campos obrigatorios devera ser exibida') do
    expect(page).to have_text "This is a required field."
end