class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1855/magpie-cli-darwin-arm64"
      sha256 "d61d20944ea31cf3f97255813ed27ab11a5d2591c2bc0464f615976365c9947e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1855/magpie-cli-darwin-amd64"
      sha256 "9426e934b0c2d4e15439222334ef9a8ef52a381488193f96edbf856d33727946"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1855/magpie-cli-linux-arm64"
      sha256 "14ff7a8c0fa396cf0be8858bd1268465d25a63fab49cb200d0ac2fb0866f8eee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1855/magpie-cli-linux-amd64"
      sha256 "d3da65f4f439e2a343f4c52b4dfd0bfac00cf13536c6cf031bf4cd75a9428964"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
