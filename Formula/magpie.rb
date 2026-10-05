class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.964/magpie-cli-darwin-arm64"
      sha256 "11c8fa0eafff2d81f344820d6b2a3ad9b476b98f5edfe0ce3e63e8e00860adb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.964/magpie-cli-darwin-amd64"
      sha256 "b8166f1afb12e18358e55bcec9e3db2b18b5552c07bb2147b1805f7bfd6841a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.964/magpie-cli-linux-arm64"
      sha256 "0ba1b71ddcfcd40388775a5e30cddbf7cfcff2d6c951a6e8df7f706459282b62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.964/magpie-cli-linux-amd64"
      sha256 "7234821db569d9ae596aa1bb3d08d13ebd2d04b8b88b4829b41db3c5ff4cfe2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
