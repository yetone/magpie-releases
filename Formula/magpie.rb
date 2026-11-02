class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2684/magpie-cli-darwin-arm64"
      sha256 "ee351775885b364c1acb9855f68b0068842c47f3d349fd8c8b02fefc6229969d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2684/magpie-cli-darwin-amd64"
      sha256 "5e324bb26f6f2baab632664f63182e4ce03628f2f404ebcb9e09cd04c7921442"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2684/magpie-cli-linux-arm64"
      sha256 "6301689f6c736eeffd800b92e3408f1ae09003d3bc471f6758dac271c704bf82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2684/magpie-cli-linux-amd64"
      sha256 "7d2285577b34f74d8d995da5cbe0317abfcd518094f6adba9854ae4968f97d21"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
