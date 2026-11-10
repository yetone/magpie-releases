class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3552/magpie-cli-darwin-arm64"
      sha256 "568dfeb8bef309b5fac523dec5a4a5827c3d0bde03863567800a61d4840f36bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3552/magpie-cli-darwin-amd64"
      sha256 "55e8fce898bd14d2bc466324dae0ff47cdd90d025fad590f23793d8d86b285cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3552/magpie-cli-linux-arm64"
      sha256 "b9dad324568c0545fb50cfcc0d2380bd4315611041958823c310113e469a6523"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3552/magpie-cli-linux-amd64"
      sha256 "699056710ffa9f0fe6c66bb629471548cf26770a949aa91ea7f6ed5ec09499d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
