class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3984/magpie-cli-darwin-arm64"
      sha256 "f3b5b94fa1f72594d04e1e699e90e04864de5f7f1295a2cf1546f44f6d264c63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3984/magpie-cli-darwin-amd64"
      sha256 "3f8234d3b1c03403076f63126b3fee89acf2ee8ee71b4255a78b1486adc76a75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3984/magpie-cli-linux-arm64"
      sha256 "47ce7f519591e7f87ae940a6608361a4e3abfa478e4ff99f168166db729ba52d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3984/magpie-cli-linux-amd64"
      sha256 "1309100d573695f8add244f3067c90fb56856633360e462ba1ee0067f4fdde0e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
