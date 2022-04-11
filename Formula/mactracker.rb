class Mactracker < Formula
	@@masid = 430255202

	desc "mactracker"
	homepage "https://apps.apple.com/us/app/id@@masid"
	url "https://raw.githubusercontent.com/noworrieseh/homebrew/main/bin/buildapp.sh"
	sha256 "27a6d633a69731db0af61573558c33b87c5b388dbc0d2d3696c428dc10619305"
	version "1.0"

	depends_on "mas"

	def install
		chmod 0755, "./buildapp.sh"
		system "./buildapp.sh", "#{name}", "#{desc}"
		system "#{prefix}/bin/mas", "install", @@masid
		bin.install "#{name}"
	end

	test do
		assert_predicate "/Applications/mactracker.app", :exist?
	end

end
