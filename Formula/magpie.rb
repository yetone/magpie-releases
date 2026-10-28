class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1941/magpie-cli-darwin-arm64"
      sha256 "3dbafd0754199e3a8930b8986535bc6c685bfb1525e1523c2d93a9513a630c97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1941/magpie-cli-darwin-amd64"
      sha256 "1c5736cca2059415ac9846a860e6bfa8ff1a23780389f76cfad2c0110c64fe7a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1941/magpie-cli-linux-arm64"
      sha256 "adef5aa201963fe1ea6781cb3bf57fb84e478084d59c52f67afc61c9ee81c7f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1941/magpie-cli-linux-amd64"
      sha256 "950ccc167fa7069c74b6b64153adc280c595c305f596968b2194c8663c2a3997"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
