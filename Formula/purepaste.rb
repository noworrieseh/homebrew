class Purepaste < Formula

	desc "Pure Paste"
	homepage "https://apps.apple.com/us/app/pure-paste/id1611378436?mt=12"
	url "file:///dev/null"
	version "1.3.2"


	def install
		system "/usr/local/bin/mas", "install", "1611378436"
	end

	test do
		assert_predicate "/Applications/Pure\ Paste.app", :exist?
	end

end
