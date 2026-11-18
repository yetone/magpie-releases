class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4475/magpie-cli-darwin-arm64"
      sha256 "0f48fcb123276c4075051d1afec782a7215835e240c40817477d299249608aac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4475/magpie-cli-darwin-amd64"
      sha256 "018febf7c422da8f2753a3291e869dab629f87fad830efd869b7182325243b36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4475/magpie-cli-linux-arm64"
      sha256 "866d922c16669bc7700f8605c5556f1dd2f2349d720149388a86bc59c3f2d544"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4475/magpie-cli-linux-amd64"
      sha256 "d092782d935ae8a81c1450eecf0337e292157b9593017fb1907222773aa6b413"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
