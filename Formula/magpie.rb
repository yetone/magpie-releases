class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3025/magpie-cli-darwin-arm64"
      sha256 "abda30c26cfbb4ddc027ef302c85c6b885517f503b36cf38752207ec8def10ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3025/magpie-cli-darwin-amd64"
      sha256 "222941907d98fbec9939027a3782ae39a2fca32eb07c3583a120bc563ddcd2fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3025/magpie-cli-linux-arm64"
      sha256 "4cc7c16ceb6e4ae2692c0bea02516229c40968a5297a4cf3f0e6b4381bc3cd2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3025/magpie-cli-linux-amd64"
      sha256 "86d72474bbf1e011dc4e085d2063378ed6f9979959bb27d7cc705002b32da21a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
