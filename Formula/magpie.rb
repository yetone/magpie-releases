class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2001/magpie-cli-darwin-arm64"
      sha256 "f2871456d3d08f98d84529e1da6d4ebb6e4c63c41a4b35715eb5103cc6170be5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2001/magpie-cli-darwin-amd64"
      sha256 "87f05d48dacbc43f1b08f1266ac86649cbd914c423324696fa1065c73bfeef95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2001/magpie-cli-linux-arm64"
      sha256 "152f812574555400f83abe395689391bd51e9732838e4c4b4d88296578402941"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2001/magpie-cli-linux-amd64"
      sha256 "7928ef7461ece8e9f8b759550f20fd09d1a0968c0e1027987ff262d8b26fe507"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
