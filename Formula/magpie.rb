class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3783/magpie-cli-darwin-arm64"
      sha256 "160ac9aa3d507f6c86d756284bf0b70ba65d1e0d926730ccfd0d464536ba07d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3783/magpie-cli-darwin-amd64"
      sha256 "8f75c17a1891daa28b82a67382801faa3fdae96f3871f985ca9e323366398143"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3783/magpie-cli-linux-arm64"
      sha256 "b3778f67c331165baded50b5036343d0304045d6dffa5a0a8818e8e0b9dbd5af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3783/magpie-cli-linux-amd64"
      sha256 "3fed16b22f96526c904b3a3ff41cb20ebf6ed96a7aa5720e4eae51b8330f422e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
