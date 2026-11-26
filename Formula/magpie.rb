class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4916/magpie-cli-darwin-arm64"
      sha256 "1701dacf310a6acb04b84be135ef949e9b1026f9413273247c3fe1da95f3c0cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4916/magpie-cli-darwin-amd64"
      sha256 "576f25e8de7ce389d7edab4a7537236c7eb997f4ed479ecb3f518fc8e2cf10bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4916/magpie-cli-linux-arm64"
      sha256 "3c51ddf73e67b275222ac1c2995cb88a4be9f740e8ce244077380e5f4e0b5f3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4916/magpie-cli-linux-amd64"
      sha256 "c2d1b2a4d376442eb6988324cec7b5796a373fd64507d2ac1c30b741eb313732"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
