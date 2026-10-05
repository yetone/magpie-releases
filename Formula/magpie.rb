class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.963/magpie-cli-darwin-arm64"
      sha256 "7b1c42159bc55bb571569bacf5f542294a550e2d224e54a33f25c874663e8dac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.963/magpie-cli-darwin-amd64"
      sha256 "3c975fbc73bd855d82bca81eda2a029c18829290bd64c16fe619d58ed93b04d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.963/magpie-cli-linux-arm64"
      sha256 "4bce6c6a8cd7235d33a124fa9f95bf397b30ff2b50d60afdd952832e6eac95f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.963/magpie-cli-linux-amd64"
      sha256 "00e57ffa299b1c38bb1de2f961c9de97de881eb945671dd9497be5eefeb39eaf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
