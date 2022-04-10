class Purepaste < Formula
	@@masid = 1611378436
	desc "Pure Paste"
	homepage "https://apps.apple.com/us/app/pure-paste/id1611378436?mt=12"
	url "https://raw.githubusercontent.com/noworrieseh/homebrew/main/bin/buildapp.sh"
	version "1.3.2"


	def install
		chmod 0755, "./buildapp.sh"
		system "./buildapp.sh", "purepaste", "Pure Paste"
		system "/usr/local/bin/mas", "install", @@masid
		bin.install "purepaste"
	end

	test do
		assert_predicate "/Applications/Pure\ Paste.app", :exist?
	end

end
