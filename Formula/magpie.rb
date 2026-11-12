class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3828/magpie-cli-darwin-arm64"
      sha256 "9f565143e61675c6a4783d79d1331bd0a7c0013a03753c45cf152ae1d432d0cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3828/magpie-cli-darwin-amd64"
      sha256 "e9dac7d007628a35c61c840d455f13612269c56741651dc89ac6ea28adce28ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3828/magpie-cli-linux-arm64"
      sha256 "a5912bc95c499716e88728a32074673318c941a08a7956cce373a85e55a093c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3828/magpie-cli-linux-amd64"
      sha256 "696f32ae84d57f3624c18b2492d7db1bdd1e9a2faeb00e26d8a5717084d4da21"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
