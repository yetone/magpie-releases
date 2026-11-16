class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4287/magpie-cli-darwin-arm64"
      sha256 "e10c3abe4487944f74cca96b2740b7562e46641b68b5a9b49a07bd05467d5a77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4287/magpie-cli-darwin-amd64"
      sha256 "02c57afe2e220579a1bf1491cbb55cfdf26358d82670b1795c201437f40f9531"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4287/magpie-cli-linux-arm64"
      sha256 "554d3c2aa993fe955fea49b08c8970d30272068dbb60d151eeb97984434782f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4287/magpie-cli-linux-amd64"
      sha256 "2255720f336ce3b15351a5279bb9003f244baef9a99965cf277ff8efd584a481"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
