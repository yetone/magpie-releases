class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4248/magpie-cli-darwin-arm64"
      sha256 "691e7f56db17e709e4c696adbb1fb58312490e92ab2728fdb83dbe8e525ab06c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4248/magpie-cli-darwin-amd64"
      sha256 "395dd340d7bf658f47dc0a4050b6a2cb12a78ad6b8ef98a1b20a5229c49710bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4248/magpie-cli-linux-arm64"
      sha256 "cb045dc39f80f1f0bee078b44898df4e0ade2d231a463a9a7e980e3df9721e2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4248/magpie-cli-linux-amd64"
      sha256 "786450eeac72f509174d7a81295cdde8cf3898f3d8d93b2615bd2fe8c9742bc3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
