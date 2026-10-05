class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1016/magpie-cli-darwin-arm64"
      sha256 "eef80058be7df2322055078d135da75868ab9280c83f0d8d9116d3fb12864ad1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1016/magpie-cli-darwin-amd64"
      sha256 "8089fd251e9cbc56df0eb90f8764a9ce4b98b43b9ebae06affdd516541f2aed0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1016/magpie-cli-linux-arm64"
      sha256 "e5933f1d04b5655dd3e6144df6944328dc8cc30686ca47592d3db4a455cca8e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1016/magpie-cli-linux-amd64"
      sha256 "5fa8156ec18c3d975c7098d7b7a59552df369ae718ec5c6691c4723df31923df"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
