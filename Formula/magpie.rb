class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2181/magpie-cli-darwin-arm64"
      sha256 "4395580f00eb30cdfbf3cbbf7bbcdf7af34a2ef0aa529064c4d6d284ad117862"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2181/magpie-cli-darwin-amd64"
      sha256 "7128e266a575aedfa256ec915ef16d54ffaee13d01d436541ebb915673107d46"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2181/magpie-cli-linux-arm64"
      sha256 "e9c91ccd0ec64530aa8d2e8e50bb0948f64af96921fcac37fae1357b729931d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2181/magpie-cli-linux-amd64"
      sha256 "b9127354f31240f5d3632ad0b064884dace4d62b64371fcb9d02410d07a06242"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
