class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3697/magpie-cli-darwin-arm64"
      sha256 "1ddd3492b234ae709420e24509441a156334bd2cd68eed360941a31f3db8bfc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3697/magpie-cli-darwin-amd64"
      sha256 "8bab97327f937f3c9328154cdd4cacc1c17e3a780c767914880188e18c31788b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3697/magpie-cli-linux-arm64"
      sha256 "eb5598dfe5197bacc080951dae87401cabd86e154844e7d9fd081cbfeda13378"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3697/magpie-cli-linux-amd64"
      sha256 "1eeb402097a24ec20a2c12bd058bf4e5e9124eb7b62549a30bd934b2ee5fa69f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
