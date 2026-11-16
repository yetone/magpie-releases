class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4298/magpie-cli-darwin-arm64"
      sha256 "6127ade6e7759fc30e32dfd841c906c38038b0e66cd117b997e475ca3f26387a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4298/magpie-cli-darwin-amd64"
      sha256 "e239b8758c3f951f6655bee2b0c31c4fd6395666847bed3f96586ab324ae58b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4298/magpie-cli-linux-arm64"
      sha256 "cef026d5a3a0050f8bf50e3ecc5c188a53bf3583bd58645961df13aa361a36fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4298/magpie-cli-linux-amd64"
      sha256 "22f8fd5bd6de42e359a00dd713a25280743e5e6ef213612ff5bf21510577cac6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
