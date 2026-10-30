class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2283/magpie-cli-darwin-arm64"
      sha256 "3116f232d649069fc4a30af191b466ff96d1644c550b7797c709032d8c7679a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2283/magpie-cli-darwin-amd64"
      sha256 "7f2b20eaef5438032174689ca35683df3370f4eafe06d24d98d7286e7c506e29"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2283/magpie-cli-linux-arm64"
      sha256 "76db2f6544268d9fb37bdc3ffafd6d9b40df0bb62c638e4ebb956d9d3f892760"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2283/magpie-cli-linux-amd64"
      sha256 "1bf3d2249fef98b78896062aab9a1d33c2fde72462d873e4e3eb6b641c4cf62e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
