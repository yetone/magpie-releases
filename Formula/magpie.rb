class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3576/magpie-cli-darwin-arm64"
      sha256 "bd1b809fb1cccc108ef12487a4df2de1f2fb41121b5bc2e80804e596f0736eae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3576/magpie-cli-darwin-amd64"
      sha256 "94d03fca8faeacf4f6c108c865d5e57361e393b104b7504b922ace405e3ccb99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3576/magpie-cli-linux-arm64"
      sha256 "5209f98bb700b035de65ecdd5f3fdce92195e58e4edc8ebc76a2ada9e1740e56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3576/magpie-cli-linux-amd64"
      sha256 "f26ddd13a9d860ef7b61cc66e44716e8a305f0724cbfc1e224518b609cb99dc2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
