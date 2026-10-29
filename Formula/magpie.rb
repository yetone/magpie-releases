class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2082/magpie-cli-darwin-arm64"
      sha256 "688c452f17e4fe15bbc1ab7b76a92012845085fdadeee1321b23068119cd7105"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2082/magpie-cli-darwin-amd64"
      sha256 "7fbd6d39cb8417b9e0bd2aab770c4e816e8051777bfd2511ec69fb5f6096b309"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2082/magpie-cli-linux-arm64"
      sha256 "ce295fec02723174d80809f572cd8fee85f02235021aef3bb4effb9a76f085ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2082/magpie-cli-linux-amd64"
      sha256 "331a9598f284637e020ec2893096f2bb9f87adb9c360eb77adee45c7c0e78357"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
