class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2063/magpie-cli-darwin-arm64"
      sha256 "29357ecd710f6d32f358690138f2c069338dfbde887cbbe01004c465d6d8e0ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2063/magpie-cli-darwin-amd64"
      sha256 "8130ddf1bbf054a633533e5491c53016cfcda22d22f4746199d9d86d3f01be70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2063/magpie-cli-linux-arm64"
      sha256 "9b2ed882f7da33e01032d53f73cc3bc86f5a9fca830f4ee54f8614aa6a9bc47d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2063/magpie-cli-linux-amd64"
      sha256 "1c0c7938995907c114b3019b71abb6b3cbb1c627de85894817c5c01d9aa5c84e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
