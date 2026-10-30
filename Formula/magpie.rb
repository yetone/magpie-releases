class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2243/magpie-cli-darwin-arm64"
      sha256 "d7574c75e2ae368581cd2d508148bbe76c492dd5f22a324148ae15dcec726a30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2243/magpie-cli-darwin-amd64"
      sha256 "b2ec87a5093ec0d4bbe9c590bb1c4f4cbe79372b1a867aff473785f7067527a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2243/magpie-cli-linux-arm64"
      sha256 "c7f1a6a380792091afdb35ebdb7d50057239e138c86024efd640b2dfdb941b3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2243/magpie-cli-linux-amd64"
      sha256 "31697a68aa89a885a13125bbf08e74e03b40e6d26caf6c4113028b7aaa441488"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
