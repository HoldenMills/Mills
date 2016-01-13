class Contact < MailForm::Base
  attribute :name,     :validate => true
  attribute :nickname, :captcha => true
  attribute :email,    :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,  :validate => true

  def headers
    {
      :subject => "Contact Form",
      :to => "mholdenmills@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "My Contact Form",
      :to => "mholdenmills@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
