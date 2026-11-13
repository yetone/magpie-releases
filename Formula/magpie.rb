class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3985/magpie-cli-darwin-arm64"
      sha256 "79c2f690ac0b401afa0fe0d9bab877df84dae5fcaf53737f9c9a9eea3486e13a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3985/magpie-cli-darwin-amd64"
      sha256 "f36c36613d8a9acaf305dd505684a83764e10723dd65f994a7175d92b0954e93"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3985/magpie-cli-linux-arm64"
      sha256 "5718bc25e62738d4f5de9087020fdad49efd98f41d56ec172130055ab4a35677"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3985/magpie-cli-linux-amd64"
      sha256 "ba49d2ca94c1ff0ad2c3674e8f9466909d57c674b61fcfa5bad6eee2a1e693c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
