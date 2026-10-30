class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2149/magpie-cli-darwin-arm64"
      sha256 "efd459a2d2d3c443e6235a2aa290e80fd955dbd7824f81bb87c55b42fe095d99"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2149/magpie-cli-darwin-amd64"
      sha256 "52911e1445ab4a0fb486befde9ce7fc838b74b14d1b87a38d0ec6372e2452ef9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2149/magpie-cli-linux-arm64"
      sha256 "bdc2d6496dabe4c833bbb2e057033625767b5b1feafd62f9cd09bdd3965c7480"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2149/magpie-cli-linux-amd64"
      sha256 "ade3616e86e87d912c4265e07fc432132e12ec2c35b06f22ca450b6407f78806"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
