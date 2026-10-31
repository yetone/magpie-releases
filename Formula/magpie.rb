class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2464/magpie-cli-darwin-arm64"
      sha256 "dee9bb04d99787b64b132faf4f28ff6fa9ab24b910609f092d46290a144018a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2464/magpie-cli-darwin-amd64"
      sha256 "7eface923397b2381b630f1bad6fba31fec3d31e429e6a0369e3202b944fb2a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2464/magpie-cli-linux-arm64"
      sha256 "e280153aaf32118836d1481c6be72a1ad8bd135ac9696d4974c25d9ac637779b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2464/magpie-cli-linux-amd64"
      sha256 "8c33fbf27baca1a76cc4943a224e9cf824e8bb6f2abf99c92bf869a3152fd07a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
