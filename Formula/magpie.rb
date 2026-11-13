class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4018/magpie-cli-darwin-arm64"
      sha256 "3820ccd3197cc1395a3960d67f59a07c8777234c3e7eafcc8d67592bb1392fe4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4018/magpie-cli-darwin-amd64"
      sha256 "8cc85c03d3907c0d90577df92cf85e9e27c9c7e0c42a8a1d6b3fa37b7f6c89b3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4018/magpie-cli-linux-arm64"
      sha256 "3fc7b28ed8bc64755567b68e91ef79038e4084fe473f7ef7225ec5de8ad99b63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4018/magpie-cli-linux-amd64"
      sha256 "75729fbca794f07ef0c41e728e7dd6c0302a8c2423835d17915cd7ca48d6fc5a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
