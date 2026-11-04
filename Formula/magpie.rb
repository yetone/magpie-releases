class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2888/magpie-cli-darwin-arm64"
      sha256 "a015f1b4b6705e288344aa1adc5d692fde2ebd7657a605d185220ad4cb21e13d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2888/magpie-cli-darwin-amd64"
      sha256 "63dad8356372e8f4cc479c7f13b768000eb58afa75cb6dcf2c658667ea882dad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2888/magpie-cli-linux-arm64"
      sha256 "ca4e5ef5ddc0a0e47a5bb7aaa22c7804c53352a597c46544b269937afe3cd0a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2888/magpie-cli-linux-amd64"
      sha256 "00886a9bce3e6d0afd608427fdb1ed0dfe5a86b5077ea4303f89ae9f2236a0d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
