class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3201/magpie-cli-darwin-arm64"
      sha256 "234ce6e2e99e389923985009968c207098e4361bc07f0c2aba3acff8c324a6f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3201/magpie-cli-darwin-amd64"
      sha256 "49b3df048bbe415350d9c16c85360ae87a656416819454c98c99720a45ce9a11"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3201/magpie-cli-linux-arm64"
      sha256 "9bdd6db4d6e571278c78646bcda94ab6a50727ff2bb8ad27971193d33f87d6e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3201/magpie-cli-linux-amd64"
      sha256 "f76aad97cbb1c8ad4dcc865212758e8c5a2e45b75b609a3f98a80d141d18dd98"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
