class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3691/magpie-cli-darwin-arm64"
      sha256 "600fddb82d3a8cf13c61324a8ad02737db43c4766ade6943612148bc8e712ca6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3691/magpie-cli-darwin-amd64"
      sha256 "eee41aa32eb1fe425665a84b82e0d20cdc7aac713cdafeb592d184cadfd3bea8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3691/magpie-cli-linux-arm64"
      sha256 "044418891d4afd77be6615137f8aba764a90343381d768147343ed3c38343249"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3691/magpie-cli-linux-amd64"
      sha256 "19939c9273ce24f13433e1907724a846e1464bc489f472025d87d3175da73b04"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
