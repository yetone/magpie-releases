class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4821/magpie-cli-darwin-arm64"
      sha256 "b0c90d418944a7383ccae11d9db73a94ff8bbb918814e1968f20f3f3598eabc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4821/magpie-cli-darwin-amd64"
      sha256 "cd801ab7f341b8528d984f0b2d899dc53029106a4baa5ef08eacbedc62d5f7cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4821/magpie-cli-linux-arm64"
      sha256 "ca5244cbee541f1a383e99009b78fa7cf46c8820e40310f36cb3638afcbc06f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4821/magpie-cli-linux-amd64"
      sha256 "bb89c9128d89171bf0adfb575c2f59873b3934352c1ddbc42228d4bd52bde0ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
