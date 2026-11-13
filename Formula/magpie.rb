class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4068/magpie-cli-darwin-arm64"
      sha256 "ad782ec98cfe81ccd1743905616a91da9991d2421c991b08c8f64ae2cf319ba8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4068/magpie-cli-darwin-amd64"
      sha256 "df74f084437f10942aff69c3e552c27140a0eb8fae8253d7ba70d5aac01dbe56"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4068/magpie-cli-linux-arm64"
      sha256 "e55b8d54c4618f2ead3f6b62fa3aae5d62194cd821486b04750687d5942e099d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4068/magpie-cli-linux-amd64"
      sha256 "ea23360f5bc934f990ce7e34c862e10b2a34206b7b57e57d6191f7fde2dd7a84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
