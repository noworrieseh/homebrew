class PurePaste < Formula

	desc "Pure Paste"
	homepage "undefined local variable or method"
	version "1.3.2"

	depends_on mas

	def install
		system "mas", "install", "1611378436"
	end

end
