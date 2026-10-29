class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2036/magpie-cli-darwin-arm64"
      sha256 "7ef03c04e8e3587236cc22568f97c732200e3ce7c071c95676c16b03b6aa8426"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2036/magpie-cli-darwin-amd64"
      sha256 "cb562565eb0c0623966b559524468e6c96933091041a86d841e8ebbc42b93785"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2036/magpie-cli-linux-arm64"
      sha256 "58ca29119201ff35ebef7cb708af71a260ccb689df8ce178d550d97cb3edac43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2036/magpie-cli-linux-amd64"
      sha256 "2f27edde3cbd2edb63993934d1824d77e502b15562b9e01c62d49d62a8ea9349"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
