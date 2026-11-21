class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4648/magpie-cli-darwin-arm64"
      sha256 "f4a1dfbfa374c6c63efe9a057f8e446b150fa3b44230e525b76077aab17876e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4648/magpie-cli-darwin-amd64"
      sha256 "7a4b501b747814b43f2b56a292891ba032be09a5719e559237e0e5a19ac250ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4648/magpie-cli-linux-arm64"
      sha256 "741ffcd223ff8098b21eca2a5a3fb060cce2b09d48abd7e14ac55141ad83db0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4648/magpie-cli-linux-amd64"
      sha256 "58c257f95990d5c6cb7061ce1b0b7f33781cf7c7fab1d88e1457278a7084af0f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
