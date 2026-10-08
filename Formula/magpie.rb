class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1120/magpie-cli-darwin-arm64"
      sha256 "590e6f52c19efd556a7939e4322d70f96d1265fb82c0000ab064b7bcd41863fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1120/magpie-cli-darwin-amd64"
      sha256 "f8b31aacf4283897d932b229484727c665e27a13bc95f73b0a4edaa4722f3ec2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1120/magpie-cli-linux-arm64"
      sha256 "56ec0065a4ca7c2f3f557241ef5291395dbc7856ad42ea698818b49192c70a67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1120/magpie-cli-linux-amd64"
      sha256 "f1e8fa06e1ce13337824f38fd00739bd9a27a20c047bc31a0ffe5bc597285c15"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
