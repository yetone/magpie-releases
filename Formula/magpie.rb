class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3723/magpie-cli-darwin-arm64"
      sha256 "003be012a73718c935bd8c6ebff52d081785eff4e39288dd2f48c35ecdf2f62f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3723/magpie-cli-darwin-amd64"
      sha256 "2f365e437618505bc81b095664b94e3b63c10d0d6f3e231af8473a069efe9e5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3723/magpie-cli-linux-arm64"
      sha256 "73b08ba12897fdceef0c2677ecd33a7b0512a08b9c972f1160116c952f339fe1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3723/magpie-cli-linux-amd64"
      sha256 "185e074615a1501c74643eb7d513c54806c709e06a07810d6d6c269057b56da9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
