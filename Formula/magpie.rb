class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3636/magpie-cli-darwin-arm64"
      sha256 "c9fc29f3e9fd138e7fac795e193fb1c41d9b824df7e3a018309313d9b4273228"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3636/magpie-cli-darwin-amd64"
      sha256 "459698f5ccd20ae9269794493c446632480e402f5852d7096ed6c325d558f8f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3636/magpie-cli-linux-arm64"
      sha256 "49c6a59b5f7fb2583a189dde14e64ee5ebcad840bedb72cd18ab15ee5242ec4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3636/magpie-cli-linux-amd64"
      sha256 "b5f3dd3bbf17fffeb289c97440bffa42335eddf9d3b1b3f5409d0c91a0ce8896"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
