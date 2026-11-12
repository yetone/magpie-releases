class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3866/magpie-cli-darwin-arm64"
      sha256 "6c35a58030b2ef6fb6e2098e89a1f58ea08007acf207c791bed434491ca79191"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3866/magpie-cli-darwin-amd64"
      sha256 "cf4bc64e224e9d390932c1f1a9c6f29a1bdc87c700e3a010bb2ff5f8583273d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3866/magpie-cli-linux-arm64"
      sha256 "85210632e434eaa3d0874f0b76a5d1fff0f771215b577d1ef75636904cab80f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3866/magpie-cli-linux-amd64"
      sha256 "8bb35c026f4d704dbc3d815522a2af3882abd90f7af92cf745ca4f3504f74cae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
