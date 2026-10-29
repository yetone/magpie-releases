class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2027/magpie-cli-darwin-arm64"
      sha256 "ff4f315ff98fbac526c8dd3654c0654f0ba98bb1f2daa40a7f416da2fb81553e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2027/magpie-cli-darwin-amd64"
      sha256 "e4cf95310296ea3c49a1078b6beda9e1a42e45ce507606b43cac7772ad54d849"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2027/magpie-cli-linux-arm64"
      sha256 "4037017a2ab2d2d04ba31ec27b517c524433833bed22171b11176c6fae629769"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2027/magpie-cli-linux-amd64"
      sha256 "c5639e8626299301112c2b727ef568716597ec069f3df450b27390d6869ce6ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
