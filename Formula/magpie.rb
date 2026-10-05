class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.972/magpie-cli-darwin-arm64"
      sha256 "d56b9a15c3d5e258ec68b480130bac0928ee2e8aaf58fa6c9cd4a51cb54f5db1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.972/magpie-cli-darwin-amd64"
      sha256 "9c8948461c89422aa1f29bfcf6ff3304afba1de2ff34a021670fe63df814fe87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.972/magpie-cli-linux-arm64"
      sha256 "aebd83ab8aa901bbaf159da079e3809ad3ab111e23858f211bc880944db7b2a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.972/magpie-cli-linux-amd64"
      sha256 "cf6439811786603c3daf7e1fa97778e2f33a5c47016aec066a2a29a93d8c4290"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
