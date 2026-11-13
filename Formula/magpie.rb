class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4083/magpie-cli-darwin-arm64"
      sha256 "42595ec867adfd2b1216e91df2a8451e7f9eda379142b0e441be8fde2480028d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4083/magpie-cli-darwin-amd64"
      sha256 "781e023127d5bca9e7373038ec46c9a11dc1da1064c911989d3bf792dad1a941"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4083/magpie-cli-linux-arm64"
      sha256 "1d23cf536e07d14e68ed65e7a0c289f90719794a9eaeed715f8f3b236f24e742"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4083/magpie-cli-linux-amd64"
      sha256 "14a494455771835a5fe6899468b77ac8308e00e793aeef7a2412b09364c9108a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
