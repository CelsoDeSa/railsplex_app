CarrierWave.configure do |config|
	config.fog_credentials = {
		provider: "AWS",
		aws_access_key_id: KEY_ID,
		aws_secret_access_key: SECRET_ACCESS_KEY
	}
	config.fog_directory = "railsplex"
end