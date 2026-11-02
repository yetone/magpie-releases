class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2720/magpie-cli-darwin-arm64"
      sha256 "17f6518ba391bc775793882991903723e1441571aba8b65c5e9455da3a42d884"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2720/magpie-cli-darwin-amd64"
      sha256 "1d959c7e1eeefa4b81b6d0a2c067bcb413cc8121d38006744eb4a35672c56576"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2720/magpie-cli-linux-arm64"
      sha256 "6635bea8a031ca769eb7f56cf13edb10002387a6e2699bfefd4263657e8b84df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2720/magpie-cli-linux-amd64"
      sha256 "9a20366f6aebe33fb334376b434539031ff46fbe1592c64e615c62c58c3200bb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
