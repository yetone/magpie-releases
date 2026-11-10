class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3535/magpie-cli-darwin-arm64"
      sha256 "42780d286e1604c1822d58f1b473a3c6ca4fe8f6ba497724b1796b61f4c4138d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3535/magpie-cli-darwin-amd64"
      sha256 "dcd15bd375944460c8afdea3a0ddba617dc416c3b07363fde93044031c0778de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3535/magpie-cli-linux-arm64"
      sha256 "513fb29326f358ac9009d25deaec7e315c1f3a7d4d345694b3f432c9b4a2b2c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3535/magpie-cli-linux-amd64"
      sha256 "bfa00a50dbded1442285af93cea1bb93c351347ec0ec0b8a7449b5f9c44842c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
