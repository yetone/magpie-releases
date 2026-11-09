class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3375/magpie-cli-darwin-arm64"
      sha256 "2acd6d959ed7e1b2d0740a836026e27ffa0cc31e144571eb0c6149f6f2f94bfe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3375/magpie-cli-darwin-amd64"
      sha256 "f32669ce8754f6b22c3352811dac191a46757232697d0706d4a8d4693052d64f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3375/magpie-cli-linux-arm64"
      sha256 "f5a03715bd268a60d9858b4e84c962dae79bfea5aa6bfd097965f217d9c034ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3375/magpie-cli-linux-amd64"
      sha256 "fb6619811c00246724c7cde0ae7e3f25392681abf0163d6b462657dfed155322"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
