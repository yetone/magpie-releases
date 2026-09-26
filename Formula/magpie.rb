class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.126/magpie-cli-darwin-arm64"
      sha256 "0db4fa0ba23d7dd8aec2f416155f6b0cc2ba593571e6c82bdf45940964d9db4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.126/magpie-cli-darwin-amd64"
      sha256 "69e7d53b69b2fa8cb431ae4f64e3e589a17bc74c19f864a6c886ced8ada1b4ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.126/magpie-cli-linux-arm64"
      sha256 "f45b42a26c159f822df881bfd72d1fc669ff7d5c1b20a859d2e00b721347e48a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.126/magpie-cli-linux-amd64"
      sha256 "22d319ee0e943ecade36d434ec051e538df9ea6931af41113d45563eb55a5f74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
