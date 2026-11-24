class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4767/magpie-cli-darwin-arm64"
      sha256 "41c3bab1ab6288a9dcde638068daa232d6e09598f8d8395c140bd761eb6ef19a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4767/magpie-cli-darwin-amd64"
      sha256 "fe6eca893a988df749844d7124822e3d058380365dc106098cd9b966fdd61e8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4767/magpie-cli-linux-arm64"
      sha256 "7d0c543d046431714611d2871241206fd09f7d38febd89556b6963da71c8d636"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4767/magpie-cli-linux-amd64"
      sha256 "77d3da90ff82ac9bdd6a45aa9fa225063c0f0a5e7af06e514b6745e7cb364082"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
