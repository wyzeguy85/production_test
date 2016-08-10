CarrierWave.configure do |config|
	config.fog_credententials = {
		provider: 				'AWS',
		aws_access_key_id:  	"#{ENV['AWS_ACCESS_KEY_ID']}"
		aws_secret_key_id: 		"#{ENV['AWS_SECRET_KEY_ID']}"
		region: 				"#{ENV['S3_REGION']}"
		path_style:  			true
	}

	config.fog_directory = "#{ENV['S3_BUCKET_NAME']}"
	config.cache_dir = "#{Rails.root}/tmp/uploads"
	
end