class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2996/magpie-cli-darwin-arm64"
      sha256 "34c8e6b2499928dfaa0b35f53b427c1c0ddfb39238a8e26bf5d137f577eb4936"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2996/magpie-cli-darwin-amd64"
      sha256 "059213da9d52935f435e8537ea28faa03114f972872fc7c7ccb9ce9c43c1f474"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2996/magpie-cli-linux-arm64"
      sha256 "a1241d846a962259750c4cac963b53c8131b9ea3ba9c70d3edfc84d9093e69c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2996/magpie-cli-linux-amd64"
      sha256 "aa0dd5f1dfa5e6cbae4de32093d79ca53732d195e0611dd7f7ede9a676ae5fdc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
