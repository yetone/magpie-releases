class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4176/magpie-cli-darwin-arm64"
      sha256 "fc917820a2a75940f7a967e146aba3f17a464dbede4cef62afe0e0f3e1c3255c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4176/magpie-cli-darwin-amd64"
      sha256 "47d975072f9c8338576e4b33385932e70d0e741f072620f51541cd4902a399a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4176/magpie-cli-linux-arm64"
      sha256 "e054feae2824e1e5c6387bf06d8484742bd356e12f5a53aef3069b2c9bbf00d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4176/magpie-cli-linux-amd64"
      sha256 "6f39dda2c312a36d3750cea2a7c4710a2baa7611d80e390de5a4641bbe66f173"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
