class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4406/magpie-cli-darwin-arm64"
      sha256 "604ac10d7d40fd32ba1714abcaeb0763599d74b489569c3f4cb0317348bbb4f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4406/magpie-cli-darwin-amd64"
      sha256 "5b225116e80b57612500340165652cbd8d6a62d31aedded50dc0f9c387833904"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4406/magpie-cli-linux-arm64"
      sha256 "1173a307738a2fdfff538344bcd06b2be4245a00a9a939754c8e8a821c23970a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4406/magpie-cli-linux-amd64"
      sha256 "b9fb5ba8339fdaf0a5ca3025707e524eef5e720f91510b3ad6bd8b1ff15aded1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
