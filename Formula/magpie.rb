class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4124/magpie-cli-darwin-arm64"
      sha256 "afa3928c0db06ccd82da85758a37a1a00d80b96ed12c91318aa68efe6f3a47c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4124/magpie-cli-darwin-amd64"
      sha256 "8ddb9e812e6cfddd067a8dfb4bb5f950612e45c5129cb90f3ce5e68d450d63d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4124/magpie-cli-linux-arm64"
      sha256 "dc7df639a3f6f9db677a3285cd64fba68ffbcd4b1fae1b90e6c2810f2402e5b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4124/magpie-cli-linux-amd64"
      sha256 "4439d9fc848860a26e9598676c026c49974ce99cb40b231bd83f0957498c8813"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
