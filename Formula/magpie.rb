class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1847/magpie-cli-darwin-arm64"
      sha256 "54c45788222f2c928f476556f0058afb9c49daed12fa2654e0cbe00db1965280"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1847/magpie-cli-darwin-amd64"
      sha256 "6ef7a7fc9beda170c588a5b1ddf7a8c161b57d22244d6aa68d1d6bcbc36d52d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1847/magpie-cli-linux-arm64"
      sha256 "be213e59237eed2f09d6265e0761d45b03528acf83798b8c91cd1abfe855e234"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1847/magpie-cli-linux-amd64"
      sha256 "99f7a0f1d109c3e83c90ff01e2bc4dde7dc49379a5cd0e7cef7552f595394b20"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
