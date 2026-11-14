class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4187/magpie-cli-darwin-arm64"
      sha256 "3cb2e60bf83f3424a1812ce7f62e501b3c9e0702f097846f3415cbe74810f7fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4187/magpie-cli-darwin-amd64"
      sha256 "c34b818efd907e8873ed223f668744eee01e86105ff630892130aa764359f8ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4187/magpie-cli-linux-arm64"
      sha256 "f3d01c824777932b951996b8537d9f89c26dc6a8ed40745bdc30f7b7040ca5d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4187/magpie-cli-linux-amd64"
      sha256 "6e74011b1558229eb10774a6c4e314b3f3cf6fe56a54d076e41f0e49ac8b4547"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
