class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4503/magpie-cli-darwin-arm64"
      sha256 "b4ba4d625d4659ca2eaa8aaa082ce0525542485a20f4a426aa5cd55ac5e50c04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4503/magpie-cli-darwin-amd64"
      sha256 "db9b0155a3f8e44ccd5ecc8db263c114e756c3884d083dc9d132d68dd927c3fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4503/magpie-cli-linux-arm64"
      sha256 "2c318a85fcdc4cbb508e907a749220c41b50b4cf5302152d4c12364429018b75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4503/magpie-cli-linux-amd64"
      sha256 "cc9d00128c4e5f0435e420758f338b4d1e0a6f4f9b9e9f0af8a034c960c8eaf1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
