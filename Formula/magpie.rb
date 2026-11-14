class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4144/magpie-cli-darwin-arm64"
      sha256 "2e5c03f409ad28afedb92b8f1b882f3f8d6d006cd60f7c17c112e02cbe128cde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4144/magpie-cli-darwin-amd64"
      sha256 "4d4d0a8460a6a3de60e851eef41a1bec8fe0a5427e6e3895fb59290e16038c50"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4144/magpie-cli-linux-arm64"
      sha256 "c2e5b57915e6ff4537a2ec752c0b8998e722a1216b7cb7fd32334b62bef965f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4144/magpie-cli-linux-amd64"
      sha256 "48f8a7d0b82ee7f036ffe1a7f2ec54a2b086fccc3a8cb1222c7ab7ae52bdd720"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
