class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2447/magpie-cli-darwin-arm64"
      sha256 "978460755c88973c16d1fe46d31e6c70bedf1c4bc1622e2c0b9a20524d9cc724"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2447/magpie-cli-darwin-amd64"
      sha256 "575761e2fab3333e9d59b03c964b2d860c98c2390ae6fe6bbfed8b065b78b62e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2447/magpie-cli-linux-arm64"
      sha256 "8df9386a334f4585f66e34550e182d9f3c200cdd0dcab22ae8daf771ca7eb9db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2447/magpie-cli-linux-amd64"
      sha256 "2c23193347d96271c70b55cdceb59f3f21a5161b297d89ecf18abbb421a5735d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
