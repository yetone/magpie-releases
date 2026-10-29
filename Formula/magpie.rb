class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1998/magpie-cli-darwin-arm64"
      sha256 "875fea51ff230261029db2a8c79be01ea3c6ced9528882900f2bc65b51383b4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1998/magpie-cli-darwin-amd64"
      sha256 "6af296aa7a17d71f53c138db2a8b5d613b134b6506b605e863346c634c873468"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1998/magpie-cli-linux-arm64"
      sha256 "3c68c7361256a90458953198ccbb83aae650938e8ee62dfcd6cdeb2aa9daecff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1998/magpie-cli-linux-amd64"
      sha256 "d88f8cdeb6926cf004cd858c3f905a28dce548338bda2fa51395822e51906ae3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
