class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4342/magpie-cli-darwin-arm64"
      sha256 "9c54b3a4fa2610ba34e615ca649d06043582250b64b5b5198b7c3fdeebfca638"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4342/magpie-cli-darwin-amd64"
      sha256 "72edf7acba77e7ed55883383d01582f06c73be253520b0b5828d34253a36675c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4342/magpie-cli-linux-arm64"
      sha256 "2c0a065c8ae87d50b44b5fec7e24a59b15ea6e5ef018899a5dbcf3986adf538f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4342/magpie-cli-linux-amd64"
      sha256 "93c82b73398cf6bdf043218659d66d1c3cad2b4a6c101931405d8aa1218697e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
