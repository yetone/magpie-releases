class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3752/magpie-cli-darwin-arm64"
      sha256 "f13dd848d91383dd901e46c55e746050270e15f9eaec06c0abbebc223f8cfba9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3752/magpie-cli-darwin-amd64"
      sha256 "465e27860f5dc7d8fee2a0827ffed41b94af0cb45f1077b6cf96d9d5a81cf8e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3752/magpie-cli-linux-arm64"
      sha256 "eedfd87c5f073d9ded58b6cfb9d02c96ba63619909d29e473d1ee487dc0bb78b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3752/magpie-cli-linux-amd64"
      sha256 "0b2a216ec64968808aba185b96642e6ec83329e1823240d2f102dd7d6fe48eb3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
