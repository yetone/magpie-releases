class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1960/magpie-cli-darwin-arm64"
      sha256 "4f91806340f726df86944482533761215a2ea73a93d92f486be4db5faab49929"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1960/magpie-cli-darwin-amd64"
      sha256 "bcd245532b18aa4397c8162d425557d1c5ecddeaa76e1d3ba749b484928a87a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1960/magpie-cli-linux-arm64"
      sha256 "cf6182757480d9e33c6ceb78642b2e62ebe57bfa6d961b86a7269150a1850abc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1960/magpie-cli-linux-amd64"
      sha256 "b95e192c4202511d81378f4fc452193eb993688a6cde904e08766e892b415ec3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
