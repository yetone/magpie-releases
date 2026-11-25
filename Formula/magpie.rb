class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4823/magpie-cli-darwin-arm64"
      sha256 "7d0a307d08232b81eb948ef82bc81671fee1e8d1bc87ac8ea053a8c290b1d891"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4823/magpie-cli-darwin-amd64"
      sha256 "3d4f1117deee4ba24d9ff0fb1dba73040f3880cf2f2220a9ec476d601d974f67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4823/magpie-cli-linux-arm64"
      sha256 "719402900e8b32b1ca1da8b002d52d760ac546ccd9fead316c5fce498203bc25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4823/magpie-cli-linux-amd64"
      sha256 "02cba75955eefb6bafc9261d23826a0f2872d187e6a7943894b3160d5494bdc1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
