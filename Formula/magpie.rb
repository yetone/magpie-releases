class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3455/magpie-cli-darwin-arm64"
      sha256 "383532750c4bac3da04e4871218314fe876d8ab0c969d23ef7f09e8a02b5ebfe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3455/magpie-cli-darwin-amd64"
      sha256 "80d15e8eed0f429630f87a867171b91d80626cd2a7d9391bc71897cb11bf2d6c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3455/magpie-cli-linux-arm64"
      sha256 "3a553f6c7bd7f9bc79edad36028585157a1f70705b5e8acac97b490767d71468"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3455/magpie-cli-linux-amd64"
      sha256 "b0ea9ee45251a1adbf2f9192b68df65001702369ceda4189c238c9787189d46a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
