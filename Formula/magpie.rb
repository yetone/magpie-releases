class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4387/magpie-cli-darwin-arm64"
      sha256 "73ab9382f0c5308131dad035a0a488a6b4c0188bd5443f4fd16d49dc10f7328f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4387/magpie-cli-darwin-amd64"
      sha256 "295355d20950288bc986508b9c0814cf103b99522230263dbfd59a6ff179d5b3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4387/magpie-cli-linux-arm64"
      sha256 "9aff7775337c2809888087764ebbbd612cddb3e8592bd54010affe3343579d16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4387/magpie-cli-linux-amd64"
      sha256 "b4cb9e0fbf070c5860c9a5c75c488bb3be21acc07e47a513b886f1099353f0b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
