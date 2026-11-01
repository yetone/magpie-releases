class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2514/magpie-cli-darwin-arm64"
      sha256 "4190fc02704f941585b8e23b0ce074bbe1785aa68ab6f6b05f8db85b33cac818"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2514/magpie-cli-darwin-amd64"
      sha256 "8634d79f1f284eb791b3fd487347b7b0f1b88144a3cee760113ea8a2ae350798"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2514/magpie-cli-linux-arm64"
      sha256 "39f8844053f7825a771bc5dcd0f41e04d7a61fdaa96830228c3e5c0f43ace600"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2514/magpie-cli-linux-amd64"
      sha256 "5055d42501145c09ce7d35300ba8311838f3aac5abc3bdd370d5b41a20b994cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
