class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4710/magpie-cli-darwin-arm64"
      sha256 "002aaf5b5542c3614a7febd430608083ad6ed7381873db6aa1238993f974c0e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4710/magpie-cli-darwin-amd64"
      sha256 "63b615fe91b101eed92bc2e8c17ebc0e30fa3028625b7401150c2fa6737f6e07"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4710/magpie-cli-linux-arm64"
      sha256 "291d97e605c5edd6eabfe1d4be9ac1889544de2feca7467c90fb0ae1de1c7e76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4710/magpie-cli-linux-amd64"
      sha256 "07853f9fd87977aa5b0c7b6410602d5563937127b8ace7efe568f923e241e6df"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
