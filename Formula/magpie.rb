class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2572/magpie-cli-darwin-arm64"
      sha256 "714a315153325200dc373bd07629bf1f36eae5f8e6f99abe69a141d0c0275ac9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2572/magpie-cli-darwin-amd64"
      sha256 "334348acfeabd5de9f40c2c5c153b960ed6d72fd1a0a1385eb738dca7187c6e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2572/magpie-cli-linux-arm64"
      sha256 "d6441a7dfc8d6940239cd141b5f23463370d8c85e37d26f7ac96cc6ec865dada"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2572/magpie-cli-linux-amd64"
      sha256 "ecade376d5d91f25343efdb274a36851e1af0d21a21fc27d492fdcd9ff1d4923"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
