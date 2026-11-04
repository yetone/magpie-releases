class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2982/magpie-cli-darwin-arm64"
      sha256 "3dd0033ffd8dc5f7e6ecfa185f2b86fd14cc2d143caa6132ad7ce9d5979876b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2982/magpie-cli-darwin-amd64"
      sha256 "f63a35a457bbc531fbd7fff0f89f6e6940f122eb75cdcdf579b69eefef091ebc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2982/magpie-cli-linux-arm64"
      sha256 "b6d30ee4704c23a5f9ad87e7ca3aaa638d92108b273dee5592af5be8e80ba65b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2982/magpie-cli-linux-amd64"
      sha256 "7bdc6b2c662523735d57d85d9c3a0bffeca26db192e0eeb3e9d2fd1acef2c7eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
