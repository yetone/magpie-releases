class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1860/magpie-cli-darwin-arm64"
      sha256 "c308f9ffe6931ff8db187881bb037ac19249af7f705ab39d3218802752a6313d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1860/magpie-cli-darwin-amd64"
      sha256 "7507c57a9af786acbfe2f955c1b2b5dcf269798f5b7a1e8f8f44022f7c2907d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1860/magpie-cli-linux-arm64"
      sha256 "1b206c1fac9bd11f7a7149de237875d3b270ce8e73af6199dc6314ec33ea2bee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1860/magpie-cli-linux-amd64"
      sha256 "b612fa2cc3fa43572dd06ac2676dd24e03535add8f7cef4a07b3b88929538ae5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
