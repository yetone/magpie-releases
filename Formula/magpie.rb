class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3757/magpie-cli-darwin-arm64"
      sha256 "2b7315bc0caff9a8733119b565d3d07952b87bf8cb33ddb1822671f5171e9e55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3757/magpie-cli-darwin-amd64"
      sha256 "066279ec7dd741cb2f736f89c0cafc93c58c31f59e8c73d7740b74a46a802a42"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3757/magpie-cli-linux-arm64"
      sha256 "3c14e85cca643532d0e71fd2b96c9483cfa812f345ae855ef188f02c4a10df90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3757/magpie-cli-linux-amd64"
      sha256 "09087bd22af7e117acc4f0da52aca0517d36d326491c680ec0913c0ee9cab907"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
