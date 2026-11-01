class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2552/magpie-cli-darwin-arm64"
      sha256 "4446f64cdcb67521cfed93ec2aa1c47ff1cb55cee636519d92937d0f13acd2c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2552/magpie-cli-darwin-amd64"
      sha256 "b2b006393ba1cf7b0c19eba151976f3a304349328982f941895a545cc75cb424"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2552/magpie-cli-linux-arm64"
      sha256 "17df23ca27ec78e5977c42080ebcfbd52ed82ff602e151b5d5276b82634db7ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2552/magpie-cli-linux-amd64"
      sha256 "ad449d1a2028200b293558cf5f55ab1bb6099092842fd385134d414687e7bee5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
