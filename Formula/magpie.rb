class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2896/magpie-cli-darwin-arm64"
      sha256 "9073e39ac5eddf4c21253490fb10c751e57ad6cb812c354a1be4dcf4b8989994"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2896/magpie-cli-darwin-amd64"
      sha256 "5a96540a81abab94abd82094031556ba81c37da78a32c5be111dc1e1d90d5ecf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2896/magpie-cli-linux-arm64"
      sha256 "a1815c3b3951726d511d7733d7a80cb7c652b3b8b6b5cb90fe47dc56a8c7506a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2896/magpie-cli-linux-amd64"
      sha256 "a9d06fda94cd9c2bdbbb72ab2a7d88fa78f06f3e2317ed8b2f933a121a20771c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
