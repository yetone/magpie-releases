class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3275/magpie-cli-darwin-arm64"
      sha256 "243ddcfb26df875b9f1e2bb0efcdcce4bfaf7168aa4c8ab135add6e4d58c4800"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3275/magpie-cli-darwin-amd64"
      sha256 "7e545690228e296e5ffc02ef8e5413b2c1724a816f9b3ef79084d7b8f46b3498"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3275/magpie-cli-linux-arm64"
      sha256 "fca7b88654038954f555a5dd33597b7ebe902de5e292304603c26c6414a7600b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3275/magpie-cli-linux-amd64"
      sha256 "389864f7f7caac0ffcc3c8fd9eb4dfc3df13a58965535618863f32d0d8a49eaa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
