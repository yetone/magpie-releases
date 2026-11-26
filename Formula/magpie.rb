class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4908/magpie-cli-darwin-arm64"
      sha256 "e2ab1db277fda08d1d7aede138f260aed74e7705302cad03765690ce5505401c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4908/magpie-cli-darwin-amd64"
      sha256 "16ecfd59b04a46c4ef478830656d38ec82015b26715909c39ba750579fdf7484"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4908/magpie-cli-linux-arm64"
      sha256 "16d5ee34d33e5af27a3df64c8175cce8741893b9f0bcb487d9dd0d0d70ef7ed6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4908/magpie-cli-linux-amd64"
      sha256 "c296ee9c19aa3cf05d3bba6a851f80e8beb0e44647c4ca6774f732d91f017fec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
