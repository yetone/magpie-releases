class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2863/magpie-cli-darwin-arm64"
      sha256 "862f0cd22a1d59025f4ce123d5b3ed4e38253c1377f110aed9ad3733fded25f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2863/magpie-cli-darwin-amd64"
      sha256 "0e979954dffbacbc8efa3ff6ef088ccdee498e1cf731a139cd241b0398189e1d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2863/magpie-cli-linux-arm64"
      sha256 "8bf671e91819b911c53b52e03fc2a26f53a48a31b1cccdc61272cb41f70b2d6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2863/magpie-cli-linux-amd64"
      sha256 "f2ffe7d72796afac5d5fca16db1a194a5e7994fe01e57a63761fed88251f06eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
