class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2644/magpie-cli-darwin-arm64"
      sha256 "6c0c057a857b70b61da49c47b330062c6178e4dffb28d46cf9a05602f4d3b4d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2644/magpie-cli-darwin-amd64"
      sha256 "d23c891903e6c0692f504fefc37c1b1a4cb8d764b9d1d81a4d9a792ae2cc9b67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2644/magpie-cli-linux-arm64"
      sha256 "bf82b9985acb0ebc5ae32523ba996ad0fcffa9e603ecd82c3b43303934fd71f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2644/magpie-cli-linux-amd64"
      sha256 "b51ea6ab7385ba114274e590194a84a08a71b5028258f04384ddb49b614bbcce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
