class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4274/magpie-cli-darwin-arm64"
      sha256 "105520aad1c03202f8b275015821bc46f524ef62873f94e4be69f2759435a3b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4274/magpie-cli-darwin-amd64"
      sha256 "bed2381e8dbab984a1d477a1512f505d93e8530593eaee331c6393fa683d9403"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4274/magpie-cli-linux-arm64"
      sha256 "3257d767464b62b4b0ce375ca7c26837af6f235b11417499c247502e078139c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4274/magpie-cli-linux-amd64"
      sha256 "f23780ca86a9a7b04600a201fc62904b1a6489f3b8f0d22a4b694cd763efa284"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
