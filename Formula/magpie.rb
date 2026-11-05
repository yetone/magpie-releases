class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3004/magpie-cli-darwin-arm64"
      sha256 "5dfc66b1520b290975e66fedb259ce4464834b9540598944d12ffca8e31eb988"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3004/magpie-cli-darwin-amd64"
      sha256 "d9dac42d3d46c135f4c7bd30b8394ccfb3b4824fe0ea676eca6033c995d066e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3004/magpie-cli-linux-arm64"
      sha256 "a26202bddc4e852dcb5607f6368cc636d243e95b2e68c0a7acbf444bc7dcad9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3004/magpie-cli-linux-amd64"
      sha256 "7b118581da1e6807f9b5cdb89d5b431389a5120855263ea57ad4849313762929"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
