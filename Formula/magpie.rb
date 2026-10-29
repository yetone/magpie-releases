class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2114/magpie-cli-darwin-arm64"
      sha256 "8460dc490f5d0893e09f45bfaaa5aec28a91ae51e3e0a78325466f0f12a9c658"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2114/magpie-cli-darwin-amd64"
      sha256 "b1143bb6fbc1a908a6358c8051af2bf45d24b85b69511431c7665e43e02ae72b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2114/magpie-cli-linux-arm64"
      sha256 "d722cb72724d2b1a453eabd595d7dfa094526dbf43991b6dbcc1d6901672f037"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2114/magpie-cli-linux-amd64"
      sha256 "d1ec35184c3e6f809ff87981e5acf64a0d990e11fa7f46579d801e360b46392c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
