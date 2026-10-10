class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1153/magpie-cli-darwin-arm64"
      sha256 "0fe356ec41e0899b40384d8541540b6dcf6b6e3e17a6f2c7ed948cf82603abc9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1153/magpie-cli-darwin-amd64"
      sha256 "75117e52d3e88952eb0a9e0c9bc38a54e4fae40aa73ffdad4d73bc9cb2de5fe5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1153/magpie-cli-linux-arm64"
      sha256 "2ac8280ef78124a1d60e21c44241eba3e9bb58004752feecade34b089cadf542"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1153/magpie-cli-linux-amd64"
      sha256 "f07ab4833f0f650a616a52724b129871ab2c46e699e1822664a3cac910825822"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
