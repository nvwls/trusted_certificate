trusted_certificate 'remote_content' do
  content URI('https://cacerts.digicert.com/DigiCertAssuredIDCA-1.crt')
  action :create
end

trusted_certificate 'cookbook_file_content' do
  content URI('cookbook://test/files/testfile')
  action :create
end

trusted_certificate 'cookbook_template_content' do
  content URI('cookbook://test/templates/cert.erb?one=1&two=2')
  action :create
end

trusted_certificate 'inline_content' do
  content "--------------BEGIN CERTIFICATE---------------------\nfobarbizabaz"
  action :create
end
