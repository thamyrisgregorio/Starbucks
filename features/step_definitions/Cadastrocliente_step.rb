Dado('que eu estou na tela inicial do Luma') do
    visit("https://magento.nublue.co.uk/")
  end
  
  Dado('que eu acesso a tela de cadastro de nova conta') do
   click_link_or_button "Create an Account" 
  end
  
  Quando('é preenchido todos os campos obrigatorios') do
    primeiro_nome = Faker::Name.first_name
    find("#firstname").set primeiro_nome
    find("#lastname").set Faker::Name.last_name
    find("#email_address").set Faker::Internet.email
    find("#password").set "Teste123@"
    find("#password-confirmation").set "Teste123@"
  end
  
  Quando('aciono o botão criar nova conta') do
    find("button[class='action submit primary']").click
  end
  
  Entao('a mensagem conta criada com sucesso devera ser exibida') do
    sucesso = find(".message-success").text
    expect(sucesso).to have_text "Thank you for registering with Main Website Store."
  end