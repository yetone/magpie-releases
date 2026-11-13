class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4021/magpie-cli-darwin-arm64"
      sha256 "353b019788fe192275e31b05851b260fa49cf98ea9cf17c89fef65d614eccb1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4021/magpie-cli-darwin-amd64"
      sha256 "846e0ade7c1c37848487f4c471fa31d8931ab6f58a608a912f0a9e251128b361"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4021/magpie-cli-linux-arm64"
      sha256 "16e98913af68ed8cf3133ef5426121d6b33fbaec0d09dd92c57ad243fd6c791f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4021/magpie-cli-linux-amd64"
      sha256 "802d121a3d4094d21c89ec00c3cb0b0903d81472f3d59af6436a4db5c8e2b18e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
