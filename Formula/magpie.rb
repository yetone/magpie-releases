class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3056/magpie-cli-darwin-arm64"
      sha256 "6a90ff7bf2a40c61841dda64273c0ae2e168388412e83f41fc6a45791534b335"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3056/magpie-cli-darwin-amd64"
      sha256 "44e78390d959d119e2e0ab5ffe98f05f4c87a32c98eb39caab14c299c3096abc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3056/magpie-cli-linux-arm64"
      sha256 "519cbfea5a9615796805aa579df95b2c6e31bfc4040081fc4785ff627d148226"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3056/magpie-cli-linux-amd64"
      sha256 "b21faa860944a5e84d47d80389acd08a1a9460bf57ad348bc188c65662c98824"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
