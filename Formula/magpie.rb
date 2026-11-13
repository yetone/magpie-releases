class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4014/magpie-cli-darwin-arm64"
      sha256 "8e60923ea0a27cdbd36530c0b05f4d124b4fccdb142e8f465e4abf671edb8c68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4014/magpie-cli-darwin-amd64"
      sha256 "cea1aa6a99da16a2051cc8e6fe6e61fb3a2c0ddd6ac4140d19eacc8f100da442"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4014/magpie-cli-linux-arm64"
      sha256 "ace87820f8ec14b4bf3620b156c974902b1aaeb9bbac65b7297eab77fa038f40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4014/magpie-cli-linux-amd64"
      sha256 "469b76d30df3ce8be53329da3553a04d74260285676dcf48f58af79806606a42"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
