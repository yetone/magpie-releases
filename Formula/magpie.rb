class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2725/magpie-cli-darwin-arm64"
      sha256 "673b8b0ccb8832f95ffa540623396faf068570b851d2d77c500f1c048e2c8f64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2725/magpie-cli-darwin-amd64"
      sha256 "a5f881e43bc0e9cd64df300ad52f3af27771ceb4c309d43374ceb200bf764f97"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2725/magpie-cli-linux-arm64"
      sha256 "298d008af01639663a328ba4896f4ca82c310f648705ecdac0e75e64e1f815d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2725/magpie-cli-linux-amd64"
      sha256 "f943494b09da6b054cda0f697283370d60da4134c8f3132731a77cbaf8083d6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
