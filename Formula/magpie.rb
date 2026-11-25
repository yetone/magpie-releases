class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4783/magpie-cli-darwin-arm64"
      sha256 "c76953011579ddae3c62111d4effbb5770d78a1b223e94f50b1c25c0fa644d60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4783/magpie-cli-darwin-amd64"
      sha256 "43b4bf52dad915def3b7860fd2a18c327ac55d6ff2388597bd0334c62b9fd1c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4783/magpie-cli-linux-arm64"
      sha256 "6ec706773fc0459ca0efad1419cd5fdab01ba9f83ad352133dc5ec1164e35a4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4783/magpie-cli-linux-amd64"
      sha256 "e189114600daaeebbf4e70862fb513a81fbccec1e3d5f80061fb6349fc7f02cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
