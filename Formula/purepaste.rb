class PurePaste < Formula

	desc "Pure Paste"
	homepage "https://apps.apple.com/us/app/pure-paste/id1611378436?mt=12"
	version "1.3.2"

	depends_on mas

	def install
		system "/usr/local/bin/mas", "install", "1611378436"
	end

end
