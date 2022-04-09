class Purepaste < Formula

	desc "Pure Paste"
	homepage "https://apps.apple.com/us/app/pure-paste/id1611378436?mt=12"
	url "https://wordpress.org/latest.tar.gz"
	version "1.3.2"


	def install
		system "python", "install", "1611378436"
	end

end
