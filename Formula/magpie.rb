class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1062/magpie-cli-darwin-arm64"
      sha256 "3430abf4c4b62292cef4e295c326899aa77be183011a9f924cd8d29fe92c6405"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1062/magpie-cli-darwin-amd64"
      sha256 "a94aa2134e93dab65b9ef74e67aa59d1e3f1ed74bd5866123f51520ed49fd632"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1062/magpie-cli-linux-arm64"
      sha256 "f0fac32ed70ab77421f50ceed53333140b32d378f95452d80b77fadbcfccaa68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1062/magpie-cli-linux-amd64"
      sha256 "aea9df2118cfc368ce16ba9c1fc74bdb618da22bb36104cf37aad13c0260d1e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
