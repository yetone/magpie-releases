class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3942/magpie-cli-darwin-arm64"
      sha256 "978353269cf45376b86300f2906419cfd7f6f58fe9de07897c7477164230da9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3942/magpie-cli-darwin-amd64"
      sha256 "1ddfe526d86dc4507cc878da03adcac8b5e1067f95abf5825f85bc70b94a41f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3942/magpie-cli-linux-arm64"
      sha256 "a4b6fe6b61f576fba4e4c0ff8434cfaec35d0d7dd521e0e93e5080ecd9a9b23a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3942/magpie-cli-linux-amd64"
      sha256 "12edf241b30777213be490cb29973135f4d1355954358c8cfaf464aec183dc32"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
