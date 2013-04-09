CarrierWave.configure do |config|
	config.fog_credentials = {
		provider: "AWS",
		aws_access_key_id: "AKIAJ47MUKW3LYIU45LA",
		aws_secret_access_key: "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"
	}
	config.fog_directory = "railsplex"
end