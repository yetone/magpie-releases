class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3471/magpie-cli-darwin-arm64"
      sha256 "9170afd68a5485fa7a0dcc8a27d7e107e4e7413f02d4ec9e0d245e86b2a762fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3471/magpie-cli-darwin-amd64"
      sha256 "27c398114576dc16ef7f4cdcd94e2d488e7429e4d77c662ac7749934d0da2ae1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3471/magpie-cli-linux-arm64"
      sha256 "e1edb61d188cfa2a9749840133af72a876ba0e61051b577c88cdd10ef01ab2c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3471/magpie-cli-linux-amd64"
      sha256 "d7b207ddf51ccee353785688fd5886f890fef93d7a65261002f0b501489b8b57"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
