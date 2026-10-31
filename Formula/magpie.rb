class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2502/magpie-cli-darwin-arm64"
      sha256 "6e85d28575459efdb56cf7b728214eff6b8cb4d62dd058636e7a31de6a4d34dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2502/magpie-cli-darwin-amd64"
      sha256 "8d38516e61ef44054ab77001bbf6ec1dc32012545bdc8785d528757d840d4d21"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2502/magpie-cli-linux-arm64"
      sha256 "2a76ab375f3f2b4edeff2456a02c52a0aba4755b99829a4cad536fbde99adca7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2502/magpie-cli-linux-amd64"
      sha256 "cf2f749bea534b59f9362fa1b46d3fb205bc8b744789a7e4ef18a623d85c2c0a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
