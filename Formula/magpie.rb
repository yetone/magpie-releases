class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4522/magpie-cli-darwin-arm64"
      sha256 "06dd3020074bd117b077cd994cc399b7fc68dc2f357c3c7d8be4a7aaf3f01a83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4522/magpie-cli-darwin-amd64"
      sha256 "7079dceb985bf081afaf61eaee9cad6d4b3b9329b96a7fbcb4cdea5b234b17a9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4522/magpie-cli-linux-arm64"
      sha256 "2cd444e1f4b9b0edb5a3227ef45f6fefbf4af041a446c04da84d73f43b0247ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4522/magpie-cli-linux-amd64"
      sha256 "f938a511e710425e0fe19536886855c803f83b139cb13f8a09b2d4e01a6691ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
