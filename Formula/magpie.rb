class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4409/magpie-cli-darwin-arm64"
      sha256 "6fc141673451081cbbb8a5ee10fea365b4b31d8079e76ac822a698119c2c7aca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4409/magpie-cli-darwin-amd64"
      sha256 "8ba99a7e310ec1a7df3b357defb8167fd40dd9d38a7c52cb07737234b2beef42"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4409/magpie-cli-linux-arm64"
      sha256 "f5e0be38208fba2d9ff979138294da7721357cb663f8a5dd9cd1ec1cbd0f5588"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4409/magpie-cli-linux-amd64"
      sha256 "422e8db95052bb67ed307eed1b1c4a33bf9ffa5ba60d7751ae8cb8f38ba85e38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
