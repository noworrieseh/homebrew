class Trello < Formula
	@@masid = 1278508951

	desc "Trello"
	homepage "https://apps.apple.com/us/app/id@@masid"
	url "https://raw.githubusercontent.com/noworrieseh/homebrew/main/bin/buildapp.sh"
	version "1.0"


	def install
		chmod 0755, "./buildapp.sh"
		system "./buildapp.sh", "#{name}", "#{desc}"
		system "/usr/local/bin/mas", "install", @@masid
		bin.install "#{name}"
	end

	test do
		assert_predicate "/Applications/Trello.app", :exist?
	end

end
